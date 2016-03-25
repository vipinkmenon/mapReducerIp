`define NUM_MAPPERS 4
`define START_ADDR 'h80000000
`define RESULT_ADDR 'hF0000000
`define DATA_SIZE 100*1024
`timescale 1 ns / 1 ps 

module blackbox (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_dataPort1_AWVALID,
        m_axi_dataPort1_AWREADY,
        m_axi_dataPort1_AWADDR,
        m_axi_dataPort1_AWID,
        m_axi_dataPort1_AWLEN,
        m_axi_dataPort1_AWSIZE,
        m_axi_dataPort1_AWBURST,
        m_axi_dataPort1_AWLOCK,
        m_axi_dataPort1_AWCACHE,
        m_axi_dataPort1_AWPROT,
        m_axi_dataPort1_AWQOS,
        m_axi_dataPort1_AWREGION,
        m_axi_dataPort1_AWUSER,
        m_axi_dataPort1_WVALID,
        m_axi_dataPort1_WREADY,
        m_axi_dataPort1_WDATA,
        m_axi_dataPort1_WSTRB,
        m_axi_dataPort1_WLAST,
        m_axi_dataPort1_WID,
        m_axi_dataPort1_WUSER,
        m_axi_dataPort1_ARVALID,
        m_axi_dataPort1_ARREADY,
        m_axi_dataPort1_ARADDR,
        m_axi_dataPort1_ARID,
        m_axi_dataPort1_ARLEN,
        m_axi_dataPort1_ARSIZE,
        m_axi_dataPort1_ARBURST,
        m_axi_dataPort1_ARLOCK,
        m_axi_dataPort1_ARCACHE,
        m_axi_dataPort1_ARPROT,
        m_axi_dataPort1_ARQOS,
        m_axi_dataPort1_ARREGION,
        m_axi_dataPort1_ARUSER,
        m_axi_dataPort1_RVALID,
        m_axi_dataPort1_RREADY,
        m_axi_dataPort1_RDATA,
        m_axi_dataPort1_RLAST,
        m_axi_dataPort1_RID,
        m_axi_dataPort1_RUSER,
        m_axi_dataPort1_RRESP,
        m_axi_dataPort1_BVALID,
        m_axi_dataPort1_BREADY,
        m_axi_dataPort1_BRESP,
        m_axi_dataPort1_BID,
        m_axi_dataPort1_BUSER,
        accessRequest_0,
        accessRequest_0_ap_vld,
        accessGrant_0,
        accessGrant_0_ap_vld,
        accessGrant_0_ap_ack
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_true = 1'b1;

parameter    C_M_AXI_DATAPORT1_ID_WIDTH = 1;
parameter    C_M_AXI_DATAPORT1_ADDR_WIDTH = 32;
parameter    C_M_AXI_DATAPORT1_DATA_WIDTH = 512;
parameter    C_M_AXI_DATAPORT1_AWUSER_WIDTH = 1;
parameter    C_M_AXI_DATAPORT1_ARUSER_WIDTH = 1;
parameter    C_M_AXI_DATAPORT1_WUSER_WIDTH = 1;
parameter    C_M_AXI_DATAPORT1_RUSER_WIDTH = 1;
parameter    C_M_AXI_DATAPORT1_BUSER_WIDTH = 1;
parameter    C_DATA_WIDTH = 32;
parameter    C_M_AXI_DATAPORT1_TARGET_ADDR = 0;
parameter    C_M_AXI_DATAPORT1_USER_VALUE = 0;
parameter    C_M_AXI_DATAPORT1_PROT_VALUE = 0;
parameter    C_M_AXI_DATAPORT1_CACHE_VALUE = 3;
parameter    C_M_AXI_DATAPORT1_WSTRB_WIDTH = (C_M_AXI_DATAPORT1_DATA_WIDTH / 8);//ap_const_int64_8
parameter    C_WSTRB_WIDTH = (C_DATA_WIDTH / 8);//ap_const_int64_8

// HLS control and clock ports
input   ap_clk; // Clock
input   ap_rst_n; // Active low reset
input   ap_start; // Active high (1-cycle pulse) signal used to start the module
output  ap_done; // Active high (1-cycle pulse) signal used to indicate that the module is done
output  ap_idle; // Active high (level) signal used to indicate that the module is idle 
output  ap_ready; // Active high (level) signal used to indicate that the module is ready to accept new inputs 

// Mutex control ports (You can ignore these. As long as they will not get optimized out in the design)
output   accessRequest_0;
output   accessRequest_0_ap_vld;
input    accessGrant_0;
input    accessGrant_0_ap_vld;
output   accessGrant_0_ap_ack;

// AXI-Full Ports
output  reg m_axi_dataPort1_AWVALID;
input   m_axi_dataPort1_AWREADY;
output  [C_M_AXI_DATAPORT1_ADDR_WIDTH - 1 : 0] m_axi_dataPort1_AWADDR;
output  [C_M_AXI_DATAPORT1_ID_WIDTH - 1 : 0] m_axi_dataPort1_AWID;
output  [7:0] m_axi_dataPort1_AWLEN;
output  [2:0] m_axi_dataPort1_AWSIZE;
output  [1:0] m_axi_dataPort1_AWBURST;
output  [1:0] m_axi_dataPort1_AWLOCK;
output  [3:0] m_axi_dataPort1_AWCACHE;
output  [2:0] m_axi_dataPort1_AWPROT;
output  [3:0] m_axi_dataPort1_AWQOS;
output  [3:0] m_axi_dataPort1_AWREGION;
output  [C_M_AXI_DATAPORT1_AWUSER_WIDTH - 1 : 0] m_axi_dataPort1_AWUSER;
output  reg m_axi_dataPort1_WVALID;
input   m_axi_dataPort1_WREADY;
output  [C_M_AXI_DATAPORT1_DATA_WIDTH - 1 : 0] m_axi_dataPort1_WDATA;
output  [C_M_AXI_DATAPORT1_WSTRB_WIDTH - 1 : 0] m_axi_dataPort1_WSTRB;
output  reg m_axi_dataPort1_WLAST;
output  [C_M_AXI_DATAPORT1_ID_WIDTH - 1 : 0] m_axi_dataPort1_WID;
output  [C_M_AXI_DATAPORT1_WUSER_WIDTH - 1 : 0] m_axi_dataPort1_WUSER;
output  m_axi_dataPort1_ARVALID;
input   m_axi_dataPort1_ARREADY;
output  [C_M_AXI_DATAPORT1_ADDR_WIDTH - 1 : 0] m_axi_dataPort1_ARADDR;
output  [C_M_AXI_DATAPORT1_ID_WIDTH - 1 : 0] m_axi_dataPort1_ARID;
output  [7:0] m_axi_dataPort1_ARLEN;
output  [2:0] m_axi_dataPort1_ARSIZE;
output  [1:0] m_axi_dataPort1_ARBURST;
output  [1:0] m_axi_dataPort1_ARLOCK;
output  [3:0] m_axi_dataPort1_ARCACHE;
output  [2:0] m_axi_dataPort1_ARPROT;
output  [3:0] m_axi_dataPort1_ARQOS;
output  [3:0] m_axi_dataPort1_ARREGION;
output  [C_M_AXI_DATAPORT1_ARUSER_WIDTH - 1 : 0] m_axi_dataPort1_ARUSER;
input   m_axi_dataPort1_RVALID;
output  m_axi_dataPort1_RREADY;
input   [C_M_AXI_DATAPORT1_DATA_WIDTH - 1 : 0] m_axi_dataPort1_RDATA;
input   m_axi_dataPort1_RLAST;
input   [C_M_AXI_DATAPORT1_ID_WIDTH - 1 : 0] m_axi_dataPort1_RID;
input   [C_M_AXI_DATAPORT1_RUSER_WIDTH - 1 : 0] m_axi_dataPort1_RUSER;
input  [1:0] m_axi_dataPort1_RRESP;
input   m_axi_dataPort1_BVALID;
output  reg m_axi_dataPort1_BREADY;
input  [1:0] m_axi_dataPort1_BRESP;
input  [C_M_AXI_DATAPORT1_ID_WIDTH - 1 : 0] m_axi_dataPort1_BID;
input  [C_M_AXI_DATAPORT1_BUSER_WIDTH - 1 : 0] m_axi_dataPort1_BUSER;


reg ap_done;
reg ap_idle;
reg ap_ready;
wire    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [40:0] ap_CS_fsm = 41'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_59;
reg    accessRequest_0_1_data_reg = 1'b0;
reg    accessRequest_0_1_data_in;
reg    accessRequest_0_1_vld_reg = 1'b0;
reg    accessRequest_0_1_vld_in;
reg    accessRequest_0_1_ack_in;
reg    accessGrant_0_0_data_reg = 1'b0;
wire   accessGrant_0_0_data_in;
reg    accessGrant_0_0_vld_reg = 1'b0;
wire   accessGrant_0_0_vld_in;
reg    accessGrant_0_0_ack_in;
reg    accessGrant_0_0_ack_out;

/*** Module code area ***/

wire m_axis_mm2s_tvalid;
wire m_axis_mm2s_tready;
wire [`NUM_MAPPERS-1:0] mapper_rdy;
wire [`NUM_MAPPERS-1:0] data_valid;
wire [(32*`NUM_MAPPERS)-1:0] data_count;
wire [31:0] reduced_data_count;
wire [`NUM_MAPPERS-1:0] valid_fifo_data;

reg          s_axis_mm2s_cmd_tvalid;
reg [71:0]   s_axis_mm2s_cmd_tdata;
reg [31:0]   user_sys_dma_addr_i = `START_ADDR;
reg [31:0]   user_sys_dma_len_i  = `DATA_SIZE;
reg [31:0]   user_sys_dma_len;
reg [31:0]   user_sys_dma_addr;
wire [255 : 0] m_axis_mm2s_tdata;
wire         s_axis_mm2s_cmd_tready;

reg [2:0]    state;

localparam RD_IDLE        = 'd0,
           RD_WAIT        = 'd1,
           RD_NEXT        = 'd2,
           RD_WAIT_FINISH = 'd3,
           WR_DATA        = 'd4;


assign ap_rst_n_inv = ap_rst_n;

axi_datamover_0 dm0 (
  .m_axi_mm2s_aclk(ap_clk),                                 // input wire m_axi_mm2s_aclk
  .m_axi_mm2s_aresetn(ap_rst_n),                            // input wire m_axi_mm2s_aresetn
  .mm2s_err(),                                              // output wire mm2s_err
  .m_axis_mm2s_cmdsts_aclk(ap_clk),                         // input wire m_axis_mm2s_cmdsts_aclk
  .m_axis_mm2s_cmdsts_aresetn(ap_rst_n),                    // input wire m_axis_mm2s_cmdsts_aresetn
  .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid),          // input wire s_axis_mm2s_cmd_tvalid
  .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),          // output wire s_axis_mm2s_cmd_tready
  .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata),            // input wire [71 : 0] s_axis_mm2s_cmd_tdata
  .m_axis_mm2s_sts_tvalid(),                                // output wire m_axis_mm2s_sts_tvalid
  .m_axis_mm2s_sts_tready(1'b1),                            // input wire m_axis_mm2s_sts_tready
  .m_axis_mm2s_sts_tdata(),                                 // output wire [7 : 0] m_axis_mm2s_sts_tdata
  .m_axis_mm2s_sts_tkeep(),                                 // output wire [0 : 0] m_axis_mm2s_sts_tkeep
  .m_axis_mm2s_sts_tlast(),                                 // output wire m_axis_mm2s_sts_tlast
  .m_axi_mm2s_arid(),    //m_axi_dataPort1_ARID               // output wire [3 : 0] m_axi_mm2s_arid
  .m_axi_mm2s_araddr(m_axi_dataPort1_ARADDR),               // output wire [31 : 0] m_axi_mm2s_araddr
  .m_axi_mm2s_arlen(m_axi_dataPort1_ARLEN),                 // output wire [7 : 0] m_axi_mm2s_arlen
  .m_axi_mm2s_arsize(m_axi_dataPort1_ARSIZE),               // output wire [2 : 0] m_axi_mm2s_arsize
  .m_axi_mm2s_arburst(m_axi_dataPort1_ARBURST),             // output wire [1 : 0] m_axi_mm2s_arburst
  .m_axi_mm2s_arprot(m_axi_dataPort1_ARPROT),               // output wire [2 : 0] m_axi_mm2s_arprot
  .m_axi_mm2s_arcache(m_axi_dataPort1_ARCACHE),             // output wire [3 : 0] m_axi_mm2s_arcache
  .m_axi_mm2s_aruser(),      //m_axi_dataPort1_ARUSER         // output wire [3 : 0] m_axi_mm2s_aruser
  .m_axi_mm2s_arvalid(m_axi_dataPort1_ARVALID),             // output wire m_axi_mm2s_arvalid
  .m_axi_mm2s_arready(m_axi_dataPort1_ARREADY),             // input wire m_axi_mm2s_arready
  .m_axi_mm2s_rdata(m_axi_dataPort1_RDATA),                 // input wire [511 : 0] m_axi_mm2s_rdata
  .m_axi_mm2s_rresp(m_axi_dataPort1_RRESP),                 // input wire [1 : 0] m_axi_mm2s_rresp
  .m_axi_mm2s_rlast(m_axi_dataPort1_RLAST),                 // input wire m_axi_mm2s_rlast
  .m_axi_mm2s_rvalid(m_axi_dataPort1_RVALID),              // input wire m_axi_mm2s_rvalid
  .m_axi_mm2s_rready(m_axi_dataPort1_RREADY),              // output wire m_axi_mm2s_rready
  .m_axis_mm2s_tdata(m_axis_mm2s_tdata),                    // output wire [255 : 0] m_axis_mm2s_tdata
  .m_axis_mm2s_tkeep(),                                     // output wire [31 : 0] m_axis_mm2s_tkeep
  .m_axis_mm2s_tlast(m_axis_mm2s_tlast),                    // output wire m_axis_mm2s_tlast
  .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),                  // output wire m_axis_mm2s_tvalid
  .m_axis_mm2s_tready(m_axis_mm2s_tready)                   // input wire m_axis_mm2s_tready
);

reg  int_reset;
reg [31:0] counter;

always @(posedge ap_clk)
begin
   if(int_reset)
   begin
       counter <= 0;
   end
   else
   begin
        case(valid_fifo_data)
            4'b0001:begin
               counter <=  counter + 1'b1;
            end
            4'b0010:begin
               counter <=  counter + 1'b1;
            end
            4'b0011:begin
               counter <=  counter + 'd2;
            end
            4'b0100:begin
               counter <=  counter + 1'b1;
            end
            4'b0101:begin
               counter <=  counter + 'd2;
            end
            4'b0110:begin
               counter <=  counter + 'd2;
            end
            4'b0111:begin
               counter <=  counter + 'd3;
            end
            4'b1000:begin
               counter <=  counter + 1'b1;
            end
            4'b1001:begin
               counter <=  counter + 'd2;
            end
            4'b1010:begin
               counter <=  counter + 'd2;
            end
            4'b1011:begin
               counter <=  counter + 'd3;
            end
            4'b1100:begin
               counter <=  counter + 'd2;
            end
            4'b1101:begin
               counter <=  counter + 'd3;
            end
            4'b1110:begin
               counter <=  counter + 'd3;
            end
            4'b1111:begin
               counter <=  counter + 'd4;
            end
        endcase
   end
end

//state machine
always @(posedge ap_clk)
begin
   if(~ap_rst_n)
   begin
       state    <=  RD_IDLE;
       ap_done  <=  1'b0; 
       ap_idle  <=  1'b0; 
       ap_ready <=  1'b0;
       int_reset <= 1'b1;
       m_axi_dataPort1_AWVALID <= 1'b0;
       m_axi_dataPort1_WVALID  <= 1'b0;
       m_axi_dataPort1_WLAST   <= 1'b0;
   end
   case(state)
        RD_IDLE:begin
            ap_idle  <=  1'b1;
            ap_ready <=  1'b1;
            ap_done  <=  1'b0;
            s_axis_mm2s_cmd_tvalid <=  1'b0;
            int_reset <= 1'b1;
            if(ap_start)
            begin
                int_reset <= 1'b0;
                user_sys_dma_addr <= user_sys_dma_addr_i;
                user_sys_dma_len  <= user_sys_dma_len_i;
                s_axis_mm2s_cmd_tvalid <= 1'b1;
                state                  <= RD_WAIT;    
                if(user_sys_dma_len_i > 'd32768) //Maximum length supported by data mover
                begin
                        s_axis_mm2s_cmd_tdata <= {
                                                  4'h0,          //reserved
                                                  4'h0,          //command tag
                                                  user_sys_dma_addr_i, //Start address
                                                  1'b0,          //DRE request
                                                  1'b0,          //EOF
                                                  6'd0,          //DRE
                                                  1'b1,          //INCR
                                                  23'd32768      //BTT
                                                  };                 
                  end
                  else
                  begin
                        s_axis_mm2s_cmd_tdata <= {
                                                  4'h0,          //reserved
                                                  4'h0,          //command tag
                                                  user_sys_dma_addr_i, //Start address
                                                  1'b0,          //DRE request
                                                  1'b1,          //EOF
                                                  6'd0,          //DRE
                                                  1'b1,          //INCR
                                                  user_sys_dma_len_i[22:0]  //BTT
                                                  };
                  end
              end
         end
         RD_WAIT:begin
              ap_idle  <=  1'b0;
              if(s_axis_mm2s_cmd_tready)
              begin
                    s_axis_mm2s_cmd_tvalid <= 1'b0;
                    user_sys_dma_addr <= user_sys_dma_addr + 23'd32768;
                    user_sys_dma_len  <= user_sys_dma_len - 23'd32768;
                    if(user_sys_dma_len > 23'd32768)
                    begin
                        state     <=   RD_NEXT;
                    end
                    else
                        state     <=   RD_WAIT_FINISH;
              end
         end
         RD_NEXT:begin
              state               <= RD_WAIT;
              s_axis_mm2s_cmd_tvalid <= 1'b1;    
              if(user_sys_dma_len > 'd32768) //Maximum length supported by data mover
              begin
                    s_axis_mm2s_cmd_tdata <= {
                                              4'h0,          //reserved
                                              4'h0,          //command tag
                                              user_sys_dma_addr, //Start address
                                              1'b0,          //DRE request
                                              1'b0,          //EOF
                                              6'd0,          //DRE
                                              1'b1,          //INCR
                                              23'd32768    //BTT
                                              };
            end
            else
            begin
                    s_axis_mm2s_cmd_tdata <= {
                                              4'h0,          //reserved
                                              4'h0,          //command tag
                                              user_sys_dma_addr, //Start address
                                              1'b0,          //DRE request
                                              1'b1,          //EOF
                                              6'd0,          //DRE
                                              1'b1,          //INCR
                                              user_sys_dma_len[22:0]  //BTT
                                              };                
            end
        end
        RD_WAIT_FINISH:begin
            if(counter >= user_sys_dma_len_i)
            begin
                state    <= WR_DATA;
                ap_done  <=  1'b1;
                m_axi_dataPort1_AWVALID <= 1'b1;
                m_axi_dataPort1_WVALID  <= 1'b1;
                m_axi_dataPort1_WLAST <= 1'b1;
            end
         end
         WR_DATA:begin
            ap_done  <=  1'b0;
            if(!m_axi_dataPort1_AWVALID & !m_axi_dataPort1_WVALID)
                state    <=    RD_IDLE;
            if(m_axi_dataPort1_AWREADY)
                m_axi_dataPort1_AWVALID  <= 1'b0;
            if(m_axi_dataPort1_WREADY)
            begin
                 m_axi_dataPort1_WVALID  <= 1'b0;
                 m_axi_dataPort1_WLAST   <= 1'b0;
            end
         end
    endcase
end


always @(posedge ap_clk)                                    
begin                                                                
    if (ap_rst_n == 0)                                           
    begin                                                            
        m_axi_dataPort1_BREADY <= 1'b0;                                            
    end                                                                                      
    else if (m_axi_dataPort1_BVALID && ~m_axi_dataPort1_BREADY)                              
    begin                                                            
        m_axi_dataPort1_BREADY <= 1'b1;                                            
    end                                                                                                
    else if (m_axi_dataPort1_BREADY)                                               
    begin                                                            
        m_axi_dataPort1_BREADY <= 1'b0;                                            
    end                                                                                                     
end  


mapper_controller 
  #(
   .NUM_MAPPERS(`NUM_MAPPERS)
  )
  mc(
  .i_clk(ap_clk),
  .i_rst(int_reset),
  .i_mapper_rdy(mapper_rdy),
  .i_pcie_strm_valid(m_axis_mm2s_tvalid),
  .o_pcie_strm_valid(data_valid),
  .o_pcie_strm_rdy(m_axis_mm2s_tready)
);

reducer #(
  .NUM_MAPPERS(`NUM_MAPPERS)
  )reducer (
  .i_clk(ap_clk), 
  .i_rst(int_reset), 
  .i_data_count(data_count), 
  .o_data_count(reduced_data_count)
);



generate
  genvar i;
   for (i=0; i < `NUM_MAPPERS; i=i+1) begin : Mapper
       mapper map(
         .i_clk(ap_clk),
         .i_rst(int_reset),
         .i_data_valid(data_valid[i]),
         .o_data_rdy(mapper_rdy[i]),
         .i_data(m_axis_mm2s_tdata),
         .o_valid_fifo_data(valid_fifo_data[i]),
         .o_count(data_count[(i*32)+31:i*32])
         );
   end
endgenerate

assign m_axi_dataPort1_WDATA = {{(C_M_AXI_DATAPORT1_DATA_WIDTH-'d32){1'b0}},reduced_data_count};
assign m_axi_dataPort1_AWADDR  = `RESULT_ADDR;  //Hardcoded the result address
assign m_axi_dataPort1_AWID = {C_M_AXI_DATAPORT1_ID_WIDTH{1'b0}};
assign m_axi_dataPort1_AWLEN = 8'h00;
assign m_axi_dataPort1_AWSIZE = 3'b111;
assign m_axi_dataPort1_AWLOCK = 2'b00;
assign m_axi_dataPort1_AWCACHE = 4'h00;
assign m_axi_dataPort1_WSTRB = {C_M_AXI_DATAPORT1_WSTRB_WIDTH{1'b1}};
assign m_axi_dataPort1_AWBURST = {2{1'b0}};
assign m_axi_dataPort1_AWPROT = {3{1'b0}};
assign m_axi_dataPort1_AWQOS = {4{1'b0}};
assign m_axi_dataPort1_AWUSER = {C_M_AXI_DATAPORT1_AWUSER_WIDTH{1'b0}};
assign m_axi_dataPort1_WID = {C_M_AXI_DATAPORT1_ID_WIDTH{1'b0}};
assign m_axi_dataPort1_WUSER = {C_M_AXI_DATAPORT1_WUSER_WIDTH{1'b0}};
assign m_axi_dataPort1_ARLOCK = {2{1'b0}};
assign m_axi_dataPort1_ARQOS = {4{1'b0}};
assign m_axi_dataPort1_ARREGION = {4{1'b0}};
assign m_axi_dataPort1_AWREGION = {4{1'b0}};

endmodule //blackbox


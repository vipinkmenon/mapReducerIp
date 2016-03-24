module fifo_256_8(
input wire         i_clk,
input wire         i_rst_n,
input wire         i_slv_valid,
output wire        o_slv_rdy,
input wire [255:0] i_slv_data,
output reg [7:0]   o_mst_data,
output wire        o_mst_valid,
input              i_mst_rdy
);

reg [255:0] mem [0:15];
reg [3:0]   wr_addr;
reg [8:0]   rd_addr;
reg [8:0]   data_count;

assign o_mst_valid = (data_count > 0) ? 1'b1 : 1'b0;
assign o_slv_rdy   = (data_count < 480) ? 1'b1 : 1'b0;
assign valid_wr    = i_slv_valid & o_slv_rdy;
assign valid_rd    = o_mst_valid & i_mst_rdy;

always @(posedge i_clk)
begin
    if(!i_rst_n)
     begin
        wr_addr <= 0;
    end
    else
    begin
       if(valid_wr)
        begin
            mem[wr_addr] <= i_slv_data;
             wr_addr      <= wr_addr + 1;
        end    
    end
end


always @(posedge i_clk)
begin
   if(!i_rst_n)
    begin
        rd_addr <= 0;
    end
    else
    begin
        if(valid_rd)
         begin
            rd_addr      <= rd_addr + 1;
        end    
    end
end

always@(*)
begin
    case(rd_addr[4:0])
        0:begin
              o_mst_data <= mem[rd_addr[8:5]][7:0];
         end
        1:begin
              o_mst_data <= mem[rd_addr[8:5]][15:8];
         end
        2:begin
              o_mst_data <= mem[rd_addr[8:5]][23:16];
         end
        3:begin
              o_mst_data <= mem[rd_addr[8:5]][31:24];
         end
        4:begin
              o_mst_data <= mem[rd_addr[8:5]][39:32];
         end
        5:begin
              o_mst_data <= mem[rd_addr[8:5]][47:40];
         end
        6:begin
              o_mst_data <= mem[rd_addr[8:5]][55:48];
         end
         7:begin
              o_mst_data <= mem[rd_addr[8:5]][63:56];
         end    
        8:begin
              o_mst_data <= mem[rd_addr[8:5]][71:64];
         end
        9:begin
              o_mst_data <= mem[rd_addr[8:5]][79:72];
         end
        10:begin
              o_mst_data <= mem[rd_addr[8:5]][87:80];
         end
        11:begin
              o_mst_data <= mem[rd_addr[8:5]][95:88];
         end
        12:begin
              o_mst_data <= mem[rd_addr[8:5]][103:96];
         end
        13:begin
              o_mst_data <= mem[rd_addr[8:5]][111:104];
         end
        14:begin
              o_mst_data <= mem[rd_addr[8:5]][119:112];
         end
        15:begin
              o_mst_data <= mem[rd_addr[8:5]][127:120];
         end    
        16:begin
              o_mst_data <= mem[rd_addr[8:5]][135:128];
         end
        17:begin
              o_mst_data <= mem[rd_addr[8:5]][143:136];
         end
        18:begin
              o_mst_data <= mem[rd_addr[8:5]][151:144];
         end
        19:begin
              o_mst_data <= mem[rd_addr[8:5]][159:152];
         end
        20:begin
              o_mst_data <= mem[rd_addr[8:5]][167:160];
         end
        21:begin
              o_mst_data <= mem[rd_addr[8:5]][175:168];
         end
        22:begin
              o_mst_data <= mem[rd_addr[8:5]][183:176];
         end
        23:begin
              o_mst_data <= mem[rd_addr[8:5]][191:184];
         end    
        24:begin
              o_mst_data <= mem[rd_addr[8:5]][199:192];
         end
        25:begin
              o_mst_data <= mem[rd_addr[8:5]][207:200];
         end
        26:begin
              o_mst_data <= mem[rd_addr[8:5]][215:208];
         end
        27:begin
              o_mst_data <= mem[rd_addr[8:5]][223:216];
         end
        28:begin
              o_mst_data <= mem[rd_addr[8:5]][231:224];
         end
        29:begin
              o_mst_data <= mem[rd_addr[8:5]][239:232];
         end
        30:begin
              o_mst_data <= mem[rd_addr[8:5]][247:240];
         end
        31:begin
              o_mst_data <= mem[rd_addr[8:5]][255:248];
         end             
     endcase
end

always @(posedge i_clk)
begin
    if(!i_rst_n)
    begin
        data_count <= 0;
    end
    else
    begin
      if(valid_wr & !valid_rd)
            data_count <= data_count + 32;
        else if(!valid_wr & valid_rd)
            data_count <= data_count - 1'b1;
        else if(valid_wr & valid_rd)
            data_count <= data_count + 31;             
    end
end

endmodule

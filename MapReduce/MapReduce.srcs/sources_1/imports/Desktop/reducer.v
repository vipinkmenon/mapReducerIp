module reducer #(
parameter NUM_MAPPERS = 2
)
(
input                              i_clk,
input                              i_rst,
input      [(32*NUM_MAPPERS)-1:0]  i_data_count,
output reg [31:0]                  o_data_count
);

parameter WIDTH = $clog2(NUM_MAPPERS)-1;
reg [31:0]       temp_data_count;
reg [WIDTH:0]    curr_mapper;
wire [31:0]      tmp;

assign tmp = i_data_count[curr_mapper*32 +: 32];

always@(posedge i_clk)
begin
   if(i_rst)
    begin
       temp_data_count <= 0;
       curr_mapper <= 0;
       o_data_count <= 0;
    end    
    else
   begin
        temp_data_count <=  temp_data_count + tmp;
        curr_mapper     <= curr_mapper + 1'b1;
        if(curr_mapper == (NUM_MAPPERS-1))
        begin
          o_data_count    <= temp_data_count + tmp;
          temp_data_count <= 0;
        end
   end    
end

endmodule

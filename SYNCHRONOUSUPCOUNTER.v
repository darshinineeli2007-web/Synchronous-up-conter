// 4-bit Synchronous Up Counter
module SYNCHRONOUSUPCOUNTER (
    input clk,          // Clock input
    input reset,        // Asynchronous reset
    output reg [3:0] q  // 4-bit counter output
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        q <= 4'b0000;       // Reset counter to 0
    else
        q <= q + 1'b1;      // Increment counter on each clock pulse
end

endmodule

////////////////////////////////////////////////////////////////////////////////////
//                                                                                //
//                           MODULE NAME                                          //
//                                                                                //
//  Author: Deepak J Puthukkaden                                                  //
//          deepakjputhukkaden@gmail.com                                          //
//          https://github.com/puthukkaden/                                       //
//                                                                                //
////////////////////////////////////////////////////////////////////////////////////
//                              MIT License                                       //
//                                                                                //
// Copyright (c) 2018 DEEPAK J PUTHUKKADEN                                        //
//                    deepakjputhukkaden@gmail.com                                //
//                                                                                //
// Permission is hereby granted, free of charge, to any person obtaining a copy   //
// of this software and associated documentation files (the "Software"), to deal  //
// in the Software without restriction, including without limitation the rights   //
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell      //
// copies of the Software, and to permit persons to whom the Software is          //
// furnished to do so, subject to the following conditions:                       //
//                                                                                //
// The above copyright notice and this permission notice shall be included in all //
// copies or substantial portions of the Software.                                //
//                                                                                //
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR     //
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,       //
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE    //
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         //
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  //
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  //
// SOFTWARE.                                                                      //
////////////////////////////////////////////////////////////////////////////////////


// Module Descrption
// ------ ----------
//
//
//


module module
// ======================
// Parameter Declarations
// ======================
#(
  parameter                 param_a = 1'b1      , // parameter a
  parameter                 param_b = 8'd1        // parameter b
)

// =================
// Port Declarations
// =================
  (
  // clocks & resets
  input   logic    `CLKW    clk                  ,  // clock
  input   logic             rst_n                ,  // reset

  // input signals
  input   logic             input_a              ,  // input a
  input   logic   [00:00]   input_b              ,  // input b

  // output signals
  output  logic             output_a             ,  // output a
  output  logic   [00:00]   output_b             ,  // output b
  );


  // ==================
  // Logic Declarations
  // ==================
  localparam  DIV = 1'b0;
  enum logic [1:0]  {
    IDLE  = 2'b00  ,
    START = 2'b01  ,
    BUSY  = 2'b10  ,
    DONE  = 2'b10  ,
  }     sau_ps  , sau_ns      ; // FSM variables

  logic signal  , signal_reg  ; // signal register


  // ====================
  // Logic Implementation
  // ====================

  // ------------------------
  // Output Signal Comb Logic
  // ------------------------
  always_comb begin
    if (input_a) begin //when input_a is high
        signal = 1'b1;
    end // if (input_a)

    else if (input_b) begin //when input_b is high
      signal = 1'b0;
    end // else if (input_b)

    else begin  //when input_a and input_b are low
      signal = signal_reg
    end // else
  end // always_comb


  // ----------------
  // Sequential Logic
  // ----------------
  always_ff @(posedge `CLK(clk), negedge rst_b) begin
    if (!rst_b) begin
      signal_reg <= 1'b0;
    end // if (!rst_b)

    else if posedge(clk) begin
      signal_reg <= signal;
    end // else if posedge(clk)
  end // always_ff @(posedge `CLK(clk), negedge rst_b)


  // =================
  // Output Assignment
  // =================
  assign output_a       = signal;
  assign output_b[0:0]  = signal_reg;

endmodule //module

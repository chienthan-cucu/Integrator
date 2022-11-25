//************************************************************************************
// Copyright        : (c) All Rights Reserved
// Company          : X-FAB Semiconductor Foundries AG
// Address          : Haarbergstr. 67,  D-99097 Erfurt, Germany
//
// File             : D_CELLS_5V.v
// Description      : Verilog model file for Library D_CELLS_5V
//                  : with negative timing check support; 
//                  : xt018, Digital Logic Library, 
//                  : 5.0V, 4.0V, 3.3V, 2.5V Standard Speed & Low Power, 
//                  : High Density routing pitch
//
// Technology       : 0.18um HV SOI CMOS
// Lib_version      : 4.0.0, Tue Oct 18 08:35:25 2016
// Created by       : X-FAB Library Characterizer XLICDD 
// Program version  : XLICDD - waz2_gvt_main, 2.1000 build 37 Time stamp:
//                    Thu Dec 17 10:06:19 2015
// Last Modified by : XLICDD generated
//
// #######################################################################
//
//  Copyright (c) X-FAB Semiconductor Foundries AG . All rights reserved.
//  This Design Kit data and the associated documentation are
//  confidential and proprietary to X-FAB Semiconductor Foundries AG.
//
//  DISCLAIMER
//  The information contained herein is provided by X-FAB Semiconductor
//  Foundries AG  on an "AS IS" basis without any warranty.
//
//  X-FAB Semiconductor Foundries AG disclaims any representation that
//  the information does not infringe any intellectual property rights or 
//  proprietary rights of any third parties. There are no other warranties 
//  given by X-FAB, whether express, implied or statutory, including, 
//  without limitation, implied warranties of merchantability and fitness 
//  for a particular purpose.
//
//  In no event X-FAB Semiconductor Foundries AG will be liable or 
//  responsible for any expense, losses, damages, or action incurred or 
//  undertaken as a result of the receipt of the information.
// 
//  X-FAB Semiconductor Foundries AG  reserves the right to make changes
//  to the information at any time and without notice.
//
// #######################################################################
// ***********************************************************************
// Remark:
// 
// This Verilog library uses  User Defined Primitives (UDP)
// which are defined in the Verilog library file VLG_PRIMITIVES.v.
//
// If an ATPG tool is used then the compiler directive 
//   `define ATPG_RUN yes
// has to be set before reading this library.
// 
// Use the compiler directive command
//   `define  DISPLAY_HOLD yes
// to enable the logic pullup/down behaviour of the Leakage current 
// compensator cell SIGNALHOLD* (see also the comment in the SIGNALHOLD* 
// cell model)
// 
// Use the compiler directive command
//   `define  NEG_TCHK yes
// to enable the syntax support for negative timing checks. 
//
//************************************************************************/
 

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AN211_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND into 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN211_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B)+C+D)
   and       i0  (n_0, A, B);
   nor       i1  (Q, n_0, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && D == 1'b0)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AN211_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND into 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN211_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B)+C+D)
   and       i0  (n_0, A, B);
   nor       i1  (Q, n_0, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && D == 1'b0)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AN21_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN21_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A*B)+C)
   and       i0  (n_0, A, B);
   nor       i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AN21_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN21_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A*B)+C)
   and       i0  (n_0, A, B);
   nor       i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AN22_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2x2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN22_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B)+(C*D))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   nor       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AN22_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2x2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN22_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B)+(C*D))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   nor       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AN31_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN31_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B*C)+D)
   and       i0  (n_0, A, B, C);
   nor       i1  (Q, n_0, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AN31_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN31_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B*C)+D)
   and       i0  (n_0, A, B, C);
   nor       i1  (Q, n_0, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AND2_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND2_5VX0 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A*B)
   and       i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AND2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND2_5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A*B)
   and       i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AND2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND2_5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A*B)
   and       i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AND2_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND2_5VX4 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A*B)
   and       i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AND3_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND3_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A*B*C)
   and       i0  (Q, A, B, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AND3_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND3_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A*B*C)
   and       i0  (Q, A, B, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AND4_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input AND with 4-stocked n-channel transistors
//   last modified by : XLICDD generated
//****************************************************************************

module AND4_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A*B*C*D)
   and       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AND4_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input AND with 4-stocked n-channel transistors
//   last modified by : XLICDD generated
//****************************************************************************

module AND4_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A*B*C*D)
   and       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AO211_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO211_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B)+C+D)
   and       i0  (n_0, A, B);
   or        i1  (Q, n_0, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AO211_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO211_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B)+C+D)
   and       i0  (n_0, A, B);
   or        i1  (Q, n_0, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AO21_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO21_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A*B)+C)
   and       i0  (n_0, A, B);
   or        i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AO21_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO21_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A*B)+C)
   and       i0  (n_0, A, B);
   or        i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AO22_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2x2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO22_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B)+(C*D))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   or        i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AO22_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2x2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO22_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B)+(C*D))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   or        i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AO31_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO31_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B*C)+D)
   and       i0  (n_0, A, B, C);
   or        i1  (Q, n_0, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : AO31_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO31_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B*C)+D)
   and       i0  (n_0, A, B, C);
   or        i1  (Q, n_0, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BTH_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTH_5VX1 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BTH_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTH_5VX2 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BTH_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTH_5VX4 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BTH_5VX8
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTH_5VX8 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX0 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX12
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX12 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX16
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX16 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX2 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX3
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX3 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX4 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX6
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX6 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : BU_5VX8
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BU_5VX8 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : CAG_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Carry Generator
//   last modified by : XLICDD generated
//****************************************************************************

module CAG_5VX1 (A, B, CI, CO);

   input     A, B, CI;
   output    CO;

// Function CO: (B*CI) + (A*CI) + (A*B)
   and       i0  (n_0, B, CI);
   and       i1  (n_1, A, CI);
   and       i2  (n_2, A, B);
   or        i3  (CO, n_0, n_1, n_2);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);
      (CI +=> CO) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : CAG_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Carry Generator
//   last modified by : XLICDD generated
//****************************************************************************

module CAG_5VX2 (A, B, CI, CO);

   input     A, B, CI;
   output    CO;

// Function CO: (B*CI) + (A*CI) + (A*B)
   and       i0  (n_0, B, CI);
   and       i1  (n_1, A, CI);
   and       i2  (n_2, A, B);
   or        i3  (CO, n_0, n_1, n_2);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);
      (CI +=> CO) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFFQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge single Q D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFFQ_5VX1 (CN, D, Q);

   input     CN, D;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, d_clock_i;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CN);
   u1_fd5    i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFFRQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge single Q D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRQ_5VX1 (CN, D, Q, RN);

   input     CN, D, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, RN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFFRSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge single Q D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRSQ_5VX1 (CN, D, Q, RN, SN);

   input     CN, D, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, delay_SN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i3  (IQ, delay_D, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i3  (IQ, D, clock_i, RN, SN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFFSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge single Q D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFSQ_5VX1 (CN, D, Q, SN);

   input     CN, D, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SN, d_clock_i, c_SH_D;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i0  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, 1'b1, SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFRQ_5VX1 (C, D, Q);

   input     C, D;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D;

   u1_fd5    i0  (IQ, delay_D, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u1_fd5    i0  (IQ, D, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFRQ_5VX2 (C, D, Q);

   input     C, D;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D;

   u1_fd5    i0  (IQ, delay_D, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u1_fd5    i0  (IQ, D, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFRQ_5VX4 (C, D, Q);

   input     C, D;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D;

   u1_fd5    i0  (IQ, delay_D, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u1_fd5    i0  (IQ, D, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRRQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRQ_5VX1 (C, D, Q, RN);

   input     C, D, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRRQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRQ_5VX2 (C, D, Q, RN);

   input     C, D, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRRQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRQ_5VX4 (C, D, Q, RN);

   input     C, D, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRRS_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRS_5VX1 (C, D, Q, QN, RN, SN);

   input     C, D, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, delay_SN, IQN, qin_and_set,
                   c_SH_D;

   u1_fd5    i2  (IQ, delay_D, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, delay_SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, qin_and_set, c_SH_D;

   u1_fd5    i2  (IQ, D, C, RN, SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRRS_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRS_5VX2 (C, D, Q, QN, RN, SN);

   input     C, D, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, delay_SN, IQN, qin_and_set,
                   c_SH_D;

   u1_fd5    i2  (IQ, delay_D, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, delay_SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, qin_and_set, c_SH_D;

   u1_fd5    i2  (IQ, D, C, RN, SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRRS_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRS_5VX4 (C, D, Q, QN, RN, SN);

   input     C, D, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, delay_SN, IQN, qin_and_set,
                   c_SH_D;

   u1_fd5    i2  (IQ, delay_D, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, delay_SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, qin_and_set, c_SH_D;

   u1_fd5    i2  (IQ, D, C, RN, SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRSQ_5VX1 (C, D, Q, SN);

   input     C, D, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, 1'b1, SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRSQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRSQ_5VX2 (C, D, Q, SN);

   input     C, D, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, 1'b1, SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DFRSQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRSQ_5VX4 (C, D, Q, SN);

   input     C, D, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, 1'b1, SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLHQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : high active single Q transparent D-latch
//   last modified by : XLICDD generated
//****************************************************************************

module DLHQ_5VX1 (D, G, Q);

   input     D, G;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D;

   u_ld6     i0  (IQ, delay_D, delay_G, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld6     i0  (IQ, D, G, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLHRQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : high active single Q transparent D-latch with reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRQ_5VX1 (D, G, Q, RN);

   input     D, G, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, 1'b1, delay_RN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i1  (IQ, D, G, 1'b1, RN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLHRSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : high active single Q transparent D-latch with set
//                      and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRSQ_5VX1 (D, G, Q, RN, SN);

   input     D, G, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, delay_SN, c_SH_D;

   u_ld6     i2  (IQ, delay_D, delay_G, delay_SN, delay_RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i2  (IQ, D, G, SN, RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLHSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : high active single Q transparent D-latch with set
//   last modified by : XLICDD generated
//****************************************************************************

module DLHSQ_5VX1 (D, G, Q, SN);

   input     D, G, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_SN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, delay_SN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i1  (IQ, D, G, SN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLHSQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : high active single Q transparent D-latch with set
//   last modified by : XLICDD generated
//****************************************************************************

module DLHSQ_5VX2 (D, G, Q, SN);

   input     D, G, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_SN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, delay_SN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i1  (IQ, D, G, SN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch
//   last modified by : XLICDD generated
//****************************************************************************

module DLLQ_5VX1 (D, GN, Q);

   input     D, GN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, d_clock_i;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, GN);
   u_ld6     i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch
//   last modified by : XLICDD generated
//****************************************************************************

module DLLQ_5VX2 (D, GN, Q);

   input     D, GN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, d_clock_i;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, GN);
   u_ld6     i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch
//   last modified by : XLICDD generated
//****************************************************************************

module DLLQ_5VX4 (D, GN, Q);

   input     D, GN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, d_clock_i;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, GN);
   u_ld6     i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLRQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch with reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRQ_5VX1 (D, GN, Q, RN);

   input     D, GN, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, 1'b1, delay_RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, 1'b1, RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLRQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch with reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRQ_5VX2 (D, GN, Q, RN);

   input     D, GN, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, 1'b1, delay_RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, 1'b1, RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLRQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch with reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRQ_5VX4 (D, GN, Q, RN);

   input     D, GN, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, 1'b1, delay_RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, 1'b1, RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLRSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch with set
//                      and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRSQ_5VX1 (D, GN, Q, RN, SN);

   input     D, GN, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, delay_SN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i3  (IQ, delay_D, d_clock_i, delay_SN, delay_RN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i3  (IQ, D, clock_i, SN, RN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch with set
//   last modified by : XLICDD generated
//****************************************************************************

module DLLSQ_5VX1 (D, GN, Q, SN);

   input     D, GN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_SN, d_clock_i, c_SH_D;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, delay_SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i0  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLSQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch with set
//   last modified by : XLICDD generated
//****************************************************************************

module DLLSQ_5VX2 (D, GN, Q, SN);

   input     D, GN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_SN, d_clock_i, c_SH_D;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, delay_SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i0  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLLSQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : low active single Q transparent D-latch with set
//   last modified by : XLICDD generated
//****************************************************************************

module DLLSQ_5VX4 (D, GN, Q, SN);

   input     D, GN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_SN, d_clock_i, c_SH_D;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, delay_SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i0  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLY1_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Delay Cell 1ns
//                    : Note: used for the different technology modules 
//                            and for the different operating conditions
//                            the cell name does not express a related 
//                            cell delay as nanosecond-value.
//                            The exact cell delay has to be timing 
//                            analyzed at the choosen operating 
//                            conditions and with the backannotated
//                            routing parasitics.
//
//   last modified by : XLICDD generated
//*****************************************************************

module DLY1_5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);



// timing section:
   specify

      (A +=> Q) = (0.88, 0.76);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLY2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Delay Cell 2ns
//                    : Note: used for the different technology modules 
//                            and for the different operating conditions
//                            the cell name does not express a related 
//                            cell delay as nanosecond-value.
//                            The exact cell delay has to be timing 
//                            analyzed at the choosen operating 
//                            conditions and with the backannotated
//                            routing parasitics.
//
//   last modified by : XLICDD generated
//*****************************************************************

module DLY2_5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);



// timing section:
   specify

      (A +=> Q) = (1.86, 1.79);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLY4_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Delay Cell 4ns
//                    : Note: used for the different technology modules 
//                            and for the different operating conditions
//                            the cell name does not express a related 
//                            cell delay as nanosecond-value.
//                            The exact cell delay has to be timing 
//                            analyzed at the choosen operating 
//                            conditions and with the backannotated
//                            routing parasitics.
//
//   last modified by : XLICDD generated
//*****************************************************************

module DLY4_5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);



// timing section:
   specify

      (A +=> Q) = (3.88, 3.94);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DLY8_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Delay Cell 8ns
//                    : Note: used for the different technology modules 
//                            and for the different operating conditions
//                            the cell name does not express a related 
//                            cell delay as nanosecond-value.
//                            The exact cell delay has to be timing 
//                            analyzed at the choosen operating 
//                            conditions and with the backannotated
//                            routing parasitics.
//
//   last modified by : XLICDD generated
//*****************************************************************

module DLY8_5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);



// timing section:
   specify

      (A +=> Q) = (7.60, 7.97);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EN2_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN2_5VX0 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A^B)
   xnor      i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EN2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN2_5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A^B)
   xnor      i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EN2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN2_5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A^B)
   xnor      i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EN2_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN2_5VX4 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A^B)
   xnor      i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EN3_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN3_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A^B^C)
   xnor      i0  (Q, A, B, C);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1) || (B == 1'b1 && C == 1'b0)) (A +=> Q) =
                   (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0)) (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (posedge C => (Q +: Q)) = (0.02, 0.02);
      (negedge C => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EN3_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN3_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A^B^C)
   xnor      i0  (Q, A, B, C);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1) || (B == 1'b1 && C == 1'b0)) (A +=> Q) =
                   (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0)) (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (posedge C => (Q +: Q)) = (0.02, 0.02);
      (negedge C => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EO2_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO2_5VX0 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A^B)
   xor       i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EO2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO2_5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A^B)
   xor       i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EO2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO2_5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A^B)
   xor       i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EO2_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO2_5VX4 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A^B)
   xor       i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EO3_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO3_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A^B^C)
   xor       i0  (Q, A, B, C);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1) || (B == 1'b1 && C == 1'b0)) (A -=> Q) =
                   (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0)) (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: Q)) = (0.02, 0.02);
      (negedge C => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : EO3_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO3_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A^B^C)
   xor       i0  (Q, A, B, C);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1) || (B == 1'b1 && C == 1'b0)) (A -=> Q) =
                   (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0)) (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: Q)) = (0.02, 0.02);
      (negedge C => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FA_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Full Adder
//   last modified by : XLICDD generated
//****************************************************************************

module FA_5VX1 (A, B, CI, CO, S);

   input     A, B, CI;
   output    CO, S;

// Function CO: (B*CI) + (A*CI) + (A*B)
   and       i0  (n_0, B, CI);
   and       i1  (n_1, A, CI);
   and       i2  (n_2, A, B);
   or        i3  (CO, n_0, n_1, n_2);

// Function S: (A^B^CI)
   xor       i4  (S, A, B, CI);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);
      (CI +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if (((B == 1'b0 && CI == 1'b0))) (A +=> S) = (0.02, 0.02);
         if ((B == 1'b1 && CI == 1'b0)) (A -=> S) = (0.02, 0.02);
         if (((B == 1'b1 && CI == 1'b1))) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && CI == 1'b0)) (B +=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b0)) (B -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b1)) (B +=> S) = (0.02, 0.02);
      (posedge CI => (S +: S)) = (0.02, 0.02);
      (negedge CI => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0)) (CI +=> S) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (CI -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (CI +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FA_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Full Adder
//   last modified by : XLICDD generated
//****************************************************************************

module FA_5VX2 (A, B, CI, CO, S);

   input     A, B, CI;
   output    CO, S;

// Function CO: (B*CI) + (A*CI) + (A*B)
   and       i0  (n_0, B, CI);
   and       i1  (n_1, A, CI);
   and       i2  (n_2, A, B);
   or        i3  (CO, n_0, n_1, n_2);

// Function S: (A^B^CI)
   xor       i4  (S, A, B, CI);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);
      (CI +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if (((B == 1'b0 && CI == 1'b0))) (A +=> S) = (0.02, 0.02);
         if ((B == 1'b1 && CI == 1'b0)) (A -=> S) = (0.02, 0.02);
         if (((B == 1'b1 && CI == 1'b1))) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && CI == 1'b0)) (B +=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b0)) (B -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b1)) (B +=> S) = (0.02, 0.02);
      (posedge CI => (S +: S)) = (0.02, 0.02);
      (negedge CI => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0)) (CI +=> S) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (CI -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (CI +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FA_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Full Adder
//   last modified by : XLICDD generated
//****************************************************************************

module FA_5VX4 (A, B, CI, CO, S);

   input     A, B, CI;
   output    CO, S;

// Function CO: (B*CI) + (A*CI) + (A*B)
   and       i0  (n_0, B, CI);
   and       i1  (n_1, A, CI);
   and       i2  (n_2, A, B);
   or        i3  (CO, n_0, n_1, n_2);

// Function S: (A^B^CI)
   xor       i4  (S, A, B, CI);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);
      (CI +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if (((B == 1'b0 && CI == 1'b0))) (A +=> S) = (0.02, 0.02);
         if ((B == 1'b1 && CI == 1'b0)) (A -=> S) = (0.02, 0.02);
         if (((B == 1'b1 && CI == 1'b1))) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && CI == 1'b0)) (B +=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b0)) (B -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b1)) (B +=> S) = (0.02, 0.02);
      (posedge CI => (S +: S)) = (0.02, 0.02);
      (negedge CI => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0)) (CI +=> S) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (CI -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (CI +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : HA_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Half Adder
//   last modified by : XLICDD generated
//****************************************************************************

module HA_5VX1 (A, B, CO, S);

   input     A, B;
   output    CO, S;

// Function CO: (A*B)
   and       i0  (CO, A, B);

// Function S: (A^B)
   xor       i1  (S, A, B);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if ((B == 1'b0)) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0)) (B +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : HA_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Half Adder
//   last modified by : XLICDD generated
//****************************************************************************

module HA_5VX2 (A, B, CO, S);

   input     A, B;
   output    CO, S;

// Function CO: (A*B)
   and       i0  (CO, A, B);

// Function S: (A^B)
   xor       i1  (S, A, B);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if ((B == 1'b0)) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0)) (B +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : HA_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Half Adder
//   last modified by : XLICDD generated
//****************************************************************************

module HA_5VX4 (A, B, CO, S);

   input     A, B;
   output    CO, S;

// Function CO: (A*B)
   and       i0  (CO, A, B);

// Function S: (A^B)
   xor       i1  (S, A, B);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if ((B == 1'b0)) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0)) (B +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX0 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX12
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX12 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX16
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX16 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX2 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX3
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX3 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX4 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX6
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX6 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : IN_5VX8
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module IN_5VX8 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ITH_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITH_5VX1 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ITH_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITH_5VX2 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ITH_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITH_5VX4 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ITH_5VX8
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITH_5VX8 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LGCN_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCN_5VX1 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, delay_CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LGCN_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCN_5VX2 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, delay_CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LGCN_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCN_5VX4 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, delay_CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LGCP_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCP_5VX1 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   and       i2  (GCLK, delay_CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   and       i2  (GCLK, CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LGCP_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCP_5VX2 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   and       i2  (GCLK, delay_CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   and       i2  (GCLK, CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LGCP_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCP_5VX4 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   and       i2  (GCLK, delay_CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   and       i2  (GCLK, CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSGCN_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCN_5VX1 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_dat_i, c_SH_E, c_SH_SE,
                   c_SH_E_v, c_SH_SE_v;

   or        i0  (d_dat_i, delay_E, delay_SE);
   u_ld1     i1  (IQ, d_dat_i, delay_CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, delay_CLK, n_0);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   or        i0  (dat_i, E, SE);
   u_ld1     i1  (IQ, dat_i, CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, CLK, n_0);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSGCN_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCN_5VX2 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_dat_i, c_SH_E, c_SH_SE,
                   c_SH_E_v, c_SH_SE_v;

   or        i0  (d_dat_i, delay_E, delay_SE);
   u_ld1     i1  (IQ, d_dat_i, delay_CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, delay_CLK, n_0);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   or        i0  (dat_i, E, SE);
   u_ld1     i1  (IQ, dat_i, CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, CLK, n_0);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSGCN_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCN_5VX4 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_dat_i, c_SH_E, c_SH_SE,
                   c_SH_E_v, c_SH_SE_v;

   or        i0  (d_dat_i, delay_E, delay_SE);
   u_ld1     i1  (IQ, d_dat_i, delay_CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, delay_CLK, n_0);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   or        i0  (dat_i, E, SE);
   u_ld1     i1  (IQ, dat_i, CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, CLK, n_0);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSGCP_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCP_5VX1 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_clock_i, d_dat_i, c_SH_E,
                   c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (d_clock_i, delay_CLK);
   or        i1  (d_dat_i, delay_E, delay_SE);
   u_ld1     i2  (IQ, d_dat_i, d_clock_i, NOTIFY_REG);
   and       i3  (GCLK, delay_CLK, IQ);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (clock_i, CLK);
   or        i1  (dat_i, E, SE);
   u_ld1     i2  (IQ, dat_i, clock_i, NOTIFY_REG);
   and       i3  (GCLK, CLK, IQ);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSGCP_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCP_5VX2 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_clock_i, d_dat_i, c_SH_E,
                   c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (d_clock_i, delay_CLK);
   or        i1  (d_dat_i, delay_E, delay_SE);
   u_ld1     i2  (IQ, d_dat_i, d_clock_i, NOTIFY_REG);
   and       i3  (GCLK, delay_CLK, IQ);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (clock_i, CLK);
   or        i1  (dat_i, E, SE);
   u_ld1     i2  (IQ, dat_i, clock_i, NOTIFY_REG);
   and       i3  (GCLK, CLK, IQ);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSGCP_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCP_5VX4 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_clock_i, d_dat_i, c_SH_E,
                   c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (d_clock_i, delay_CLK);
   or        i1  (d_dat_i, delay_E, delay_SE);
   u_ld1     i2  (IQ, d_dat_i, d_clock_i, NOTIFY_REG);
   and       i3  (GCLK, delay_CLK, IQ);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (clock_i, CLK);
   or        i1  (dat_i, E, SE);
   u_ld1     i2  (IQ, dat_i, clock_i, NOTIFY_REG);
   and       i3  (GCLK, CLK, IQ);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSOGCN_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCN_5VX1 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSOGCN_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCN_5VX2 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSOGCN_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCN_5VX4 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSOGCP_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCP_5VX1 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSOGCP_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCP_5VX2 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LSOGCP_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCP_5VX4 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : MU2_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2:1 Multiplexer
//   last modified by : XLICDD generated
//****************************************************************************

module MU2_5VX0 (IN0, IN1, Q, S);

   input     IN0, IN1, S;
   output    Q;

// Function Q: (!S*IN0)+(S*IN1)
   u_mx2     i4  (Q, IN0, IN1, S);

// timing section:
   specify

      (posedge S => (Q +: Q)) = (0.02, 0.02);
      (negedge S => (Q +: Q)) = (0.02, 0.02);
         if ((IN0 == 1'b0 && IN1 == 1'b1)) (S +=> Q) = (0.02, 0.02);
      (IN0 +=> Q) = (0.02, 0.02);
      (IN1 +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : MU2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2:1 Multiplexer
//   last modified by : XLICDD generated
//****************************************************************************

module MU2_5VX1 (IN0, IN1, Q, S);

   input     IN0, IN1, S;
   output    Q;

// Function Q: (!S*IN0)+(S*IN1)
   u_mx2     i4  (Q, IN0, IN1, S);

// timing section:
   specify

      (posedge S => (Q +: Q)) = (0.02, 0.02);
      (negedge S => (Q +: Q)) = (0.02, 0.02);
         if ((IN0 == 1'b0 && IN1 == 1'b1)) (S +=> Q) = (0.02, 0.02);
      (IN0 +=> Q) = (0.02, 0.02);
      (IN1 +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : MU2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2:1 Multiplexer
//   last modified by : XLICDD generated
//****************************************************************************

module MU2_5VX2 (IN0, IN1, Q, S);

   input     IN0, IN1, S;
   output    Q;

// Function Q: (!S*IN0)+(S*IN1)
   u_mx2     i4  (Q, IN0, IN1, S);

// timing section:
   specify

      (posedge S => (Q +: Q)) = (0.02, 0.02);
      (negedge S => (Q +: Q)) = (0.02, 0.02);
         if ((IN0 == 1'b0 && IN1 == 1'b1)) (S +=> Q) = (0.02, 0.02);
      (IN0 +=> Q) = (0.02, 0.02);
      (IN1 +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : MU2_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2:1 Multiplexer
//   last modified by : XLICDD generated
//****************************************************************************

module MU2_5VX4 (IN0, IN1, Q, S);

   input     IN0, IN1, S;
   output    Q;

// Function Q: (!S*IN0)+(S*IN1)
   u_mx2     i4  (Q, IN0, IN1, S);

// timing section:
   specify

      (posedge S => (Q +: Q)) = (0.02, 0.02);
      (negedge S => (Q +: Q)) = (0.02, 0.02);
         if ((IN0 == 1'b0 && IN1 == 1'b1)) (S +=> Q) = (0.02, 0.02);
      (IN0 +=> Q) = (0.02, 0.02);
      (IN1 +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA22_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NAND into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA22_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(!(A*B)*C)
   nand      i0  (n_1, A, B);
   nand      i2  (Q, n_1, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA22_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NAND into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA22_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(!(A*B)*C)
   nand      i0  (n_1, A, B);
   nand      i2  (Q, n_1, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA2I1_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA2I1_5VX1 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN*B)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA2I1_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA2I1_5VX2 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN*B)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA2_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA2_5VX0 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A*B)
   nand      i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA2_5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A*B)
   nand      i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA2_5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A*B)
   nand      i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA2_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA2_5VX4 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A*B)
   nand      i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA3I1_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA3I1_5VX1 (AN, B, C, Q);

   input     AN, B, C;
   output    Q;

// Function Q: !(!AN*B*C)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA3I1_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA3I1_5VX2 (AN, B, C, Q);

   input     AN, B, C;
   output    Q;

// Function Q: !(!AN*B*C)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA3I2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NAND with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA3I2_5VX1 (AN, BN, C, Q);

   input     AN, BN, C;
   output    Q;

// Function Q: !(!AN*!BN*C)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA3I2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NAND with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA3I2_5VX2 (AN, BN, C, Q);

   input     AN, BN, C;
   output    Q;

// Function Q: !(!AN*!BN*C)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA3_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA3_5VX0 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A*B*C)
   nand      i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA3_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA3_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A*B*C)
   nand      i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA3_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA3_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A*B*C)
   nand      i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA4_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input NAND with 4-stocked n-channel transistors
//   last modified by : XLICDD generated
//****************************************************************************

module NA4_5VX0 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A*B*C*D)
   nand      i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA4_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input NAND with 4-stocked n-channel transistors
//   last modified by : XLICDD generated
//****************************************************************************

module NA4_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A*B*C*D)
   nand      i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NA4_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input NAND with 4-stocked n-channel transistors
//   last modified by : XLICDD generated
//****************************************************************************

module NA4_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A*B*C*D)
   nand      i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO22_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO22_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(!(A+B)+C)
   nor       i0  (n_1, A, B);
   nor       i2  (Q, n_1, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO22_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO22_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(!(A+B)+C)
   nor       i0  (n_1, A, B);
   nor       i2  (Q, n_1, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO2I1_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO2I1_5VX1 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN+B)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO2I1_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO2I1_5VX2 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN+B)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO2I1_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO2I1_5VX4 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN+B)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO2_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO2_5VX0 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A+B)
   nor       i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO2_5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A+B)
   nor       i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO2_5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A+B)
   nor       i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO2_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO2_5VX4 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A+B)
   nor       i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO3I1_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO3I1_5VX1 (AN, B, C, Q);

   input     AN, B, C;
   output    Q;

// Function Q: !(!AN+B+C)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO3I1_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO3I1_5VX2 (AN, B, C, Q);

   input     AN, B, C;
   output    Q;

// Function Q: !(!AN+B+C)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO3I2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NOR with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO3I2_5VX1 (AN, BN, C, Q);

   input     AN, BN, C;
   output    Q;

// Function Q: !(!AN+!BN+C)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO3I2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NOR with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO3I2_5VX2 (AN, BN, C, Q);

   input     AN, BN, C;
   output    Q;

// Function Q: !(!AN+!BN+C)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO3_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO3_5VX0 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A+B+C)
   nor       i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO3_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO3_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A+B+C)
   nor       i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO3_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO3_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A+B+C)
   nor       i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO4_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO4_5VX0 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A+B+C+D)
   nor       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO4_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO4_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A+B+C+D)
   nor       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : NO4_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO4_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A+B+C+D)
   nor       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA211_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA211_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B)*C*D)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA211_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA211_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B)*C*D)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA21_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA21_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A+B)*C)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA21_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA21_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A+B)*C)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA21_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA21_5VX4 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A+B)*C)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA22_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2x2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA22_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B)*(C+D))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   and       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA22_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2x2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA22_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B)*(C+D))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   and       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA31_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA31_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B+C)*D)
   or        i0  (n_0, A, B, C);
   and       i1  (Q, n_0, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OA31_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA31_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B+C)*D)
   or        i0  (n_0, A, B, C);
   and       i1  (Q, n_0, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON211_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON211_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B)*C*D)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON211_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON211_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B)*C*D)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON21_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON21_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A+B)*C)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON21_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON21_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A+B)*C)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON21_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON21_5VX4 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A+B)*C)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON22_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2x2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON22_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B)*(C+D))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   nand      i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON22_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2x2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON22_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B)*(C+D))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   nand      i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON31_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON31_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B+C)*D)
   or        i0  (n_0, A, B, C);
   nand      i1  (Q, n_0, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ON31_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON31_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B+C)*D)
   or        i0  (n_0, A, B, C);
   nand      i1  (Q, n_0, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OR2_5VX0
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR2_5VX0 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A+B)
   or        i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OR2_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR2_5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A+B)
   or        i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OR2_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR2_5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A+B)
   or        i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OR2_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR2_5VX4 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A+B)
   or        i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OR3_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR3_5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A+B+C)
   or        i0  (Q, A, B, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OR3_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR3_5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A+B+C)
   or        i0  (Q, A, B, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OR4_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR4_5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A+B+C+D)
   or        i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : OR4_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : 4-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR4_5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A+B+C+D)
   or        i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFFQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge single Q D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFQ_5VX1 (CN, D, Q, SD, SE);

   input     CN, D, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, d_clock_i, d_dat_i,
                   c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   not       i8  (c_SH_D, delay_SE);
   buf       i9  (c_SH_SD, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   not       i8  (c_SH_D, SE);
   buf       i9  (c_SH_SD, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFFRQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge single Q D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRQ_5VX1 (CN, D, Q, RN, SD, SE);

   input     CN, D, RN, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, d_clock_i,
                   d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i10 (SE_not, delay_SE);
   and       i11 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, RN, 1'b1, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_dat_i, RN, 1'b1);
   not       i10 (SE_not, SE);
   and       i11 (c_SH_D, c_SH_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFFRSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge single Q D-Flip-Flop with Reset, Set and
//                      Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRSQ_5VX1 (CN, D, Q, RN, SD, SE, SN);

   input     CN, D, RN, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_clock_i, d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i7  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i8  (IQ, d_dat_i, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   buf       i9  (Q, IQ);

   checkrs   i10 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i11 (SE_not, delay_SE);
   and       i12 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i7  (dat_i, D, SD, SE);
   u1_fd5    i8  (IQ, dat_i, clock_i, RN, SN, NOTIFY_REG);
   buf       i9  (Q, IQ);

   checkrs   i10 (c_SH_dat_i, RN, SN);
   not       i11 (SE_not, SE);
   and       i12 (c_SH_D, c_SH_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFFRS_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge D-Flip-Flop with Reset, Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRS_5VX1 (CN, D, Q, QN, RN, SD, SE, SN);

   input     CN, D, RN, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_clock_i, d_dat_i, IQN, qin_and_set, c_SH_d_dat_i, SE_not,
                   c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i7  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i8  (IQ, d_dat_i, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   not       i9  (IQN, IQ);
   and       i10 (qin_and_set, IQN, delay_SN);
   buf       i11 (Q, IQ);
   buf       i12 (QN, qin_and_set);

   checkrs   i13 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i14 (SE_not, delay_SE);
   and       i15 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i16 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, qin_and_set, c_SH_dat_i, SE_not, c_SH_D,
                   c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i7  (dat_i, D, SD, SE);
   u1_fd5    i8  (IQ, dat_i, clock_i, RN, SN, NOTIFY_REG);
   not       i9  (IQN, IQ);
   and       i10 (qin_and_set, IQN, SN);
   buf       i11 (Q, IQ);
   buf       i12 (QN, qin_and_set);

   checkrs   i13 (c_SH_dat_i, RN, SN);
   not       i14 (SE_not, SE);
   and       i15 (c_SH_D, c_SH_dat_i, SE_not);
   and       i16 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFFSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : negedge single Q D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFSQ_5VX1 (CN, D, Q, SD, SE, SN);

   input     CN, D, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_SN, d_clock_i,
                   d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i10 (SE_not, delay_SE);
   and       i11 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, 1'b1, SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_dat_i, 1'b1, SN);
   not       i10 (SE_not, SE);
   and       i11 (c_SH_D, c_SH_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRQ_5VX1 (C, D, Q, SD, SE);

   input     C, D, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, d_dat_i, c_SH_D,
                   c_SH_SD;

   u_mx2     i4  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i5  (IQ, d_dat_i, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, delay_SE);
   buf       i8  (c_SH_SD, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_D, c_SH_SD;

   u_mx2     i4  (dat_i, D, SD, SE);
   u1_fd5    i5  (IQ, dat_i, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, SE);
   buf       i8  (c_SH_SD, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRQ_5VX2 (C, D, Q, SD, SE);

   input     C, D, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, d_dat_i, c_SH_D,
                   c_SH_SD;

   u_mx2     i4  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i5  (IQ, d_dat_i, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, delay_SE);
   buf       i8  (c_SH_SD, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_D, c_SH_SD;

   u_mx2     i4  (dat_i, D, SD, SE);
   u1_fd5    i5  (IQ, dat_i, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, SE);
   buf       i8  (c_SH_SD, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRQ_5VX4 (C, D, Q, SD, SE);

   input     C, D, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, d_dat_i, c_SH_D,
                   c_SH_SD;

   u_mx2     i4  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i5  (IQ, d_dat_i, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, delay_SE);
   buf       i8  (c_SH_SD, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_D, c_SH_SD;

   u_mx2     i4  (dat_i, D, SD, SE);
   u1_fd5    i5  (IQ, dat_i, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, SE);
   buf       i8  (c_SH_SD, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRRQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRQ_5VX1 (C, D, Q, RN, SD, SE);

   input     C, D, RN, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, RN, 1'b1);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRRQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRQ_5VX2 (C, D, Q, RN, SD, SE);

   input     C, D, RN, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, RN, 1'b1);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRRQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRQ_5VX4 (C, D, Q, RN, SD, SE);

   input     C, D, RN, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, RN, 1'b1);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRRS_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge D-Flip-Flop with Reset, Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRS_5VX1 (C, D, Q, QN, RN, SD, SE, SN);

   input     C, D, RN, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_dat_i, IQN, qin_and_set, c_SH_d_dat_i, SE_not, c_SH_D,
                   c_SH_SD;

   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, delay_SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i13 (SE_not, delay_SE);
   and       i14 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, qin_and_set, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, C, RN, SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_dat_i, RN, SN);
   not       i13 (SE_not, SE);
   and       i14 (c_SH_D, c_SH_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRRS_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge D-Flip-Flop with Reset, Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRS_5VX2 (C, D, Q, QN, RN, SD, SE, SN);

   input     C, D, RN, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_dat_i, IQN, qin_and_set, c_SH_d_dat_i, SE_not, c_SH_D,
                   c_SH_SD;

   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, delay_SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i13 (SE_not, delay_SE);
   and       i14 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, qin_and_set, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, C, RN, SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_dat_i, RN, SN);
   not       i13 (SE_not, SE);
   and       i14 (c_SH_D, c_SH_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRRS_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge D-Flip-Flop with Reset, Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRS_5VX4 (C, D, Q, QN, RN, SD, SE, SN);

   input     C, D, RN, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_dat_i, IQN, qin_and_set, c_SH_d_dat_i, SE_not, c_SH_D,
                   c_SH_SD;

   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, delay_SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i13 (SE_not, delay_SE);
   and       i14 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, qin_and_set, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, C, RN, SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_dat_i, RN, SN);
   not       i13 (SE_not, SE);
   and       i14 (c_SH_D, c_SH_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRSQ_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRSQ_5VX1 (C, D, Q, SD, SE, SN);

   input     C, D, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_SN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, 1'b1, SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, 1'b1, SN);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRSQ_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRSQ_5VX2 (C, D, Q, SD, SE, SN);

   input     C, D, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_SN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, 1'b1, SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, 1'b1, SN);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : SDFRSQ_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : posedge single Q D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRSQ_5VX4 (C, D, Q, SD, SE, SN);

   input     C, D, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_SN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, 1'b1, SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, 1'b1, SN);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : STE_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : ESD/EMC optimized buffer with CMOS Schmitt Trigger
//                      input
//   last modified by : XLICDD generated
//****************************************************************************

module STE_5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : STE_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : ESD/EMC optimized buffer with CMOS Schmitt Trigger
//                      input
//   last modified by : XLICDD generated
//****************************************************************************

module STE_5VX2 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : STE_5VX3
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : ESD/EMC optimized buffer with CMOS Schmitt Trigger
//                      input
//   last modified by : XLICDD generated
//****************************************************************************

module STE_5VX3 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : STE_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : ESD/EMC optimized buffer with CMOS Schmitt Trigger
//                      input
//   last modified by : XLICDD generated
//****************************************************************************

module STE_5VX4 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ST_5VX1
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer with CMOS Schmitt Trigger input
//   last modified by : XLICDD generated
//****************************************************************************

module ST_5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ST_5VX2
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer with CMOS Schmitt Trigger input
//   last modified by : XLICDD generated
//****************************************************************************

module ST_5VX2 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ST_5VX3
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer with CMOS Schmitt Trigger input
//   last modified by : XLICDD generated
//****************************************************************************

module ST_5VX3 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ST_5VX4
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Buffer with CMOS Schmitt Trigger input
//   last modified by : XLICDD generated
//****************************************************************************

module ST_5VX4 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ANTENNACELLN2_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : protection cell against antenna effects (net
//                      charge) at manufacture, NIMP diode in substrate
//   last modified by : XLICDD generated
//****************************************************************************

module ANTENNACELLN2_5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ANTENNACELLN5_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : protection cell against antenna effects (net
//                      charge) at manufacture, NIMP diode in substrate
//   last modified by : XLICDD generated
//****************************************************************************

module ANTENNACELLN5_5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ANTENNACELLNP2_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : protection cell against antenna effects (net
//                      charge) at manufacture, PIMP diode in NWELL, NIMP
//                 diode in substrate
//   last modified by : XLICDD generated
//****************************************************************************

module ANTENNACELLNP2_5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ANTENNACELLP2_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : protection cell against antenna effects (net
//                      charge) at manufacture, PIMP diode in NWELL
//   last modified by : XLICDD generated
//****************************************************************************

module ANTENNACELLP2_5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : ANTENNACELLP5_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : protection cell against antenna effects (net
//                      charge) at manufacture, PIMP diode in NWELL
//   last modified by : XLICDD generated
//****************************************************************************

module ANTENNACELLP5_5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DECAP5_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell with buffering capacitance, ESD
//                      optimized
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP5_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DECAP7_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell with buffering capacitance, ESD
//                      optimized
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP7_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DECAP10_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell with buffering capacitance, ESD
//                      optimized
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP10_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DECAP15_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell with buffering capacitance, ESD
//                      optimized
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP15_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : DECAP25_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell with buffering capacitance, ESD
//                      optimized
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP25_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FEED1_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED1_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FEED2_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED2_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FEED3_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED3_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FEED5_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED5_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FEED7_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED7_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FEED10_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED10_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FEED15_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED15_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : FEED25_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Filler cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED25_5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LOGIC0_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Constant logic 0
//   last modified by : XLICDD generated
//****************************************************************************

module LOGIC0_5V (Q);

   output    Q;

// Function Q: 0
   buf       i0   (Q, 1'b0);

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : LOGIC1_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Constant logic 1
//   last modified by : XLICDD generated
//****************************************************************************

module LOGIC1_5V (Q);

   output    Q;

// Function Q: 1
   buf       i0   (Q, 1'b1);

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : MPROBEBU_5VX8
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Microprobe cell for buffered signal output (signal
//                      decoupling)
//   last modified by : XLICDD generated
//****************************************************************************

module MPROBEBU_5VX8 (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : MPROBE_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Micro probe cell for direct wire access
//   last modified by : XLICDD generated
//****************************************************************************

module MPROBE_5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.18um HV SOI CMOS
//   module name      : CLKVBUF_5V
//   version          : 4.0.0, Tue Oct 18 08:35:25 2016
//   cell_description : Virtual Clock Tree Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module CLKVBUF_5V (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A => Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

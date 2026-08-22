*SPICE netlist created from BLIF module alu_4bit by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt alu_4bit vdd gnd A[0] A[1] A[2] A[3] B[0] B[1] B[2] B[3] ALU_Sel[0] ALU_Sel[1] ALU_Sel[2] Cin Y[0] Y[1] Y[2] Y[3] Cout Zero 
XINVX1_1 Cin _46_ vdd gnd INVX1
XNOR2X1_1 vdd A[0] gnd _47_ B[0] NOR2X1
XAND2X2_1 vdd gnd B[0] A[0] _48_ AND2X2
XOAI21X1_1 gnd vdd _47_ _48_ _49_ _46_ OAI21X1
XINVX1_2 ALU_Sel[1] _50_ vdd gnd INVX1
XINVX1_3 ALU_Sel[0] _51_ vdd gnd INVX1
XNAND2X1_1 vdd _52_ gnd _50_ _51_ NAND2X1
XNOR2X1_2 vdd _52_ gnd _53_ ALU_Sel[2] NOR2X1
XOR2X2_1 _54_ A[0] vdd gnd B[0] OR2X2
XNAND2X1_2 vdd _55_ gnd B[0] A[0] NAND2X1
XNAND3X1_1 _55_ vdd gnd Cin _54_ _56_ NAND3X1
XNAND3X1_2 _56_ vdd gnd _49_ _53_ _57_ NAND3X1
XNOR2X1_3 vdd _48_ gnd _58_ _47_ NOR2X1
XNAND2X1_3 vdd _59_ gnd ALU_Sel[0] _50_ NAND2X1
XNOR2X1_4 vdd _59_ gnd _60_ ALU_Sel[2] NOR2X1
XNOR2X1_5 vdd ALU_Sel[0] gnd _61_ ALU_Sel[1] NOR2X1
XNAND2X1_4 vdd _62_ gnd ALU_Sel[2] _61_ NAND2X1
XINVX1_4 _62_ _63_ vdd gnd INVX1
XOAI21X1_2 gnd vdd _60_ _63_ _64_ _58_ OAI21X1
XINVX1_5 ALU_Sel[2] _65_ vdd gnd INVX1
XNAND3X1_3 _65_ vdd gnd ALU_Sel[1] _51_ _66_ NAND3X1
XINVX1_6 _66_ _67_ vdd gnd INVX1
XNAND3X1_4 ALU_Sel[0] vdd gnd ALU_Sel[1] _65_ _68_ NAND3X1
XINVX1_7 A[0] _69_ vdd gnd INVX1
XNAND2X1_5 vdd _70_ gnd ALU_Sel[2] _69_ NAND2X1
XOAI22X1_1 gnd vdd _68_ _47_ _61_ _70_ _71_ OAI22X1
XAOI21X1_1 gnd vdd _48_ _67_ _72_ _71_ AOI21X1
XNAND3X1_5 _64_ vdd gnd _57_ _72_ _126_[0] NAND3X1
XINVX1_8 B[1] _73_ vdd gnd INVX1
XNAND2X1_6 vdd _74_ gnd A[1] _73_ NAND2X1
XINVX1_9 A[1] _75_ vdd gnd INVX1
XNAND2X1_7 vdd _76_ gnd B[1] _75_ NAND2X1
XNAND2X1_8 vdd _77_ gnd _74_ _76_ NAND2X1
XOAI21X1_3 gnd vdd _46_ _47_ _78_ _55_ OAI21X1
XOAI21X1_4 gnd vdd _78_ _77_ _79_ _53_ OAI21X1
XAOI21X1_2 gnd vdd _77_ _78_ _80_ _79_ AOI21X1
XNAND2X1_9 vdd _81_ gnd B[0] _69_ NAND2X1
XNAND3X1_6 _76_ vdd gnd _74_ _81_ _82_ NAND3X1
XNOR2X1_6 vdd _75_ gnd _83_ B[1] NOR2X1
XNOR2X1_7 vdd _73_ gnd _84_ A[1] NOR2X1
XAND2X2_2 vdd gnd _69_ B[0] _85_ AND2X2
XOAI21X1_5 gnd vdd _83_ _84_ _86_ _85_ OAI21X1
XNAND3X1_7 _82_ vdd gnd _60_ _86_ _87_ NAND3X1
XNAND3X1_8 ALU_Sel[0] vdd gnd ALU_Sel[2] _50_ _88_ NAND3X1
XINVX1_10 _88_ _89_ vdd gnd INVX1
XNOR2X1_8 vdd A[1] gnd _90_ B[1] NOR2X1
XNAND2X1_10 vdd _91_ gnd B[1] A[1] NAND2X1
XOAI22X1_2 gnd vdd _66_ _91_ _68_ _90_ _92_ OAI22X1
XAOI21X1_3 gnd vdd _75_ _89_ _93_ _92_ AOI21X1
XNAND3X1_9 ALU_Sel[1] vdd gnd ALU_Sel[2] ALU_Sel[0] _94_ NAND3X1
XNOR2X1_9 vdd A[1] gnd _95_ A[0] NOR2X1
XNAND2X1_11 vdd _96_ gnd A[0] A[1] NAND2X1
XINVX1_11 _96_ _97_ vdd gnd INVX1
XOAI21X1_6 gnd vdd _95_ _97_ _98_ _94_ OAI21X1
XNAND3X1_10 ALU_Sel[1] vdd gnd ALU_Sel[2] _51_ _99_ NAND3X1
XNAND2X1_12 vdd _100_ gnd _69_ _75_ NAND2X1
XNAND3X1_11 _100_ vdd gnd _96_ _99_ _101_ NAND3X1
XAOI22X1_1 gnd vdd _98_ _101_ _102_ _63_ _77_ AOI22X1
XNAND3X1_12 _102_ vdd gnd _87_ _93_ _103_ NAND3X1
XOR2X2_2 _126_[1] _80_ vdd gnd _103_ OR2X2
XNAND2X1_13 vdd _104_ gnd B[2] A[2] NAND2X1
XINVX1_12 B[2] _105_ vdd gnd INVX1
XINVX1_13 A[2] _106_ vdd gnd INVX1
XNAND2X1_14 vdd _107_ gnd _105_ _106_ NAND2X1
XNAND2X1_15 vdd _108_ gnd _104_ _107_ NAND2X1
XINVX1_14 _91_ _109_ vdd gnd INVX1
XAOI21X1_4 gnd vdd _77_ _78_ _110_ _109_ AOI21X1
XINVX1_15 _53_ _111_ vdd gnd INVX1
XAOI21X1_5 gnd vdd _110_ _108_ _112_ _111_ AOI21X1
XOAI21X1_7 gnd vdd _108_ _110_ _113_ _112_ OAI21X1
XAND2X2_3 vdd gnd _107_ _104_ _114_ AND2X2
XAOI21X1_6 gnd vdd _76_ _81_ _115_ _83_ AOI21X1
XOR2X2_3 _116_ _114_ vdd gnd _115_ OR2X2
XINVX1_16 _60_ _117_ vdd gnd INVX1
XAOI21X1_7 gnd vdd _115_ _114_ _118_ _117_ AOI21X1
XINVX1_17 _104_ _119_ vdd gnd INVX1
XOAI21X1_8 gnd vdd _119_ _62_ _120_ _68_ OAI21X1
XOAI21X1_9 gnd vdd B[2] A[2] _121_ _120_ OAI21X1
XNAND3X1_13 A[1] vdd gnd A[0] A[2] _122_ NAND3X1
XINVX1_18 _122_ _123_ vdd gnd INVX1
XNOR2X1_10 vdd _123_ gnd _124_ _99_ NOR2X1
XOAI21X1_10 gnd vdd A[2] _97_ _0_ _124_ OAI21X1
XINVX1_19 _94_ _1_ vdd gnd INVX1
XNAND2X1_16 vdd _2_ gnd _106_ _95_ NAND2X1
XOAI21X1_11 gnd vdd A[0] A[1] _3_ A[2] OAI21X1
XNAND2X1_17 vdd _4_ gnd _3_ _2_ NAND2X1
XOAI22X1_3 gnd vdd _66_ _104_ A[2] _88_ _5_ OAI22X1
XAOI21X1_8 gnd vdd _1_ _4_ _6_ _5_ AOI21X1
XNAND3X1_14 _6_ vdd gnd _0_ _121_ _7_ NAND3X1
XAOI21X1_9 gnd vdd _118_ _116_ _8_ _7_ AOI21X1
XNAND2X1_18 vdd _126_[2] gnd _113_ _8_ NAND2X1
XNOR2X1_11 vdd A[3] gnd _9_ B[3] NOR2X1
XINVX1_20 B[3] _10_ vdd gnd INVX1
XINVX2_1 vdd gnd _11_ A[3] INVX2
XNOR2X1_12 vdd _11_ gnd _12_ _10_ NOR2X1
XNOR2X1_13 vdd _12_ gnd _13_ _9_ NOR2X1
XOAI21X1_12 gnd vdd _108_ _110_ _14_ _104_ OAI21X1
XNOR2X1_14 vdd _14_ gnd _15_ _13_ NOR2X1
XINVX1_21 _13_ _16_ vdd gnd INVX1
XXNOR2X1_1 B[1] A[1] gnd vdd _17_ XNOR2X1
XAOI21X1_10 gnd vdd _54_ Cin _18_ _48_ AOI21X1
XOAI21X1_13 gnd vdd _17_ _18_ _19_ _91_ OAI21X1
XAOI21X1_11 gnd vdd _19_ _114_ _20_ _119_ AOI21X1
XOAI21X1_14 gnd vdd _16_ _20_ _21_ _53_ OAI21X1
XNAND2X1_19 vdd _22_ gnd A[2] _105_ NAND2X1
XNAND3X1_15 _22_ vdd gnd _13_ _116_ _23_ NAND3X1
XOAI21X1_15 gnd vdd _114_ _115_ _24_ _22_ OAI21X1
XAOI21X1_12 gnd vdd _24_ _16_ _25_ _117_ AOI21X1
XNOR2X1_15 vdd _2_ gnd _26_ A[3] NOR2X1
XAOI21X1_13 gnd vdd _95_ _106_ _27_ _11_ AOI21X1
XOAI21X1_16 gnd vdd _27_ _26_ _28_ _1_ OAI21X1
XAOI22X1_2 gnd vdd _67_ _12_ _29_ _89_ _11_ AOI22X1
XINVX1_22 _9_ _30_ vdd gnd INVX1
XNAND2X1_20 vdd _31_ gnd A[3] _123_ NAND2X1
XAOI21X1_14 gnd vdd _11_ _122_ _32_ _99_ AOI21X1
XOAI21X1_17 gnd vdd _12_ _62_ _33_ _68_ OAI21X1
XAOI22X1_3 gnd vdd _30_ _33_ _34_ _31_ _32_ AOI22X1
XNAND3X1_16 _28_ vdd gnd _29_ _34_ _35_ NAND3X1
XAOI21X1_15 gnd vdd _25_ _23_ _36_ _35_ AOI21X1
XOAI21X1_18 gnd vdd _15_ _21_ _126_[3] _36_ OAI21X1
XNOR3X1_1 vdd gnd _126_[0] _103_ _80_ _37_ NOR3X1
XNAND3X1_17 _8_ vdd gnd _113_ _37_ _38_ NAND3X1
XNOR2X1_16 vdd _38_ gnd _127_ _126_[3] NOR2X1
XNOR2X1_17 vdd _14_ gnd _39_ _12_ NOR2X1
XOAI21X1_19 gnd vdd B[3] A[3] _40_ _53_ OAI21X1
XOAI21X1_20 gnd vdd _10_ A[3] _41_ _24_ OAI21X1
XAOI21X1_16 gnd vdd _10_ A[3] _42_ _117_ AOI21X1
XNAND2X1_21 vdd _43_ gnd _1_ _26_ NAND2X1
XOAI21X1_21 gnd vdd _99_ _31_ _44_ _43_ OAI21X1
XAOI21X1_17 gnd vdd _41_ _42_ _45_ _44_ AOI21X1
XOAI21X1_22 gnd vdd _40_ _39_ _125_ _45_ OAI21X1
XBUFX2_1 vdd gnd _125_ Cout BUFX2
XBUFX2_2 vdd gnd _126_[0] Y[0] BUFX2
XBUFX2_3 vdd gnd _126_[1] Y[1] BUFX2
XBUFX2_4 vdd gnd _126_[2] Y[2] BUFX2
XBUFX2_5 vdd gnd _126_[3] Y[3] BUFX2
XBUFX2_6 vdd gnd _127_ Zero BUFX2
XFILL_0_0_0 vdd gnd FILL
XFILL_0_0_1 vdd gnd FILL
XFILL_0_0_2 vdd gnd FILL
XFILL_0_1_0 vdd gnd FILL
XFILL_0_1_1 vdd gnd FILL
XFILL_0_1_2 vdd gnd FILL
XFILL_1_1 vdd gnd FILL
XFILL_1_0_0 vdd gnd FILL
XFILL_1_0_1 vdd gnd FILL
XFILL_1_0_2 vdd gnd FILL
XFILL_1_1_0 vdd gnd FILL
XFILL_1_1_1 vdd gnd FILL
XFILL_1_1_2 vdd gnd FILL
XFILL_2_1 vdd gnd FILL
XFILL_2_0_0 vdd gnd FILL
XFILL_2_0_1 vdd gnd FILL
XFILL_2_0_2 vdd gnd FILL
XFILL_2_1_0 vdd gnd FILL
XFILL_2_1_1 vdd gnd FILL
XFILL_2_1_2 vdd gnd FILL
XFILL_3_0_0 vdd gnd FILL
XFILL_3_0_1 vdd gnd FILL
XFILL_3_0_2 vdd gnd FILL
XFILL_3_1_0 vdd gnd FILL
XFILL_3_1_1 vdd gnd FILL
XFILL_3_1_2 vdd gnd FILL
XFILL_4_1 vdd gnd FILL
XFILL_4_0_0 vdd gnd FILL
XFILL_4_0_1 vdd gnd FILL
XFILL_4_0_2 vdd gnd FILL
XFILL_4_1_0 vdd gnd FILL
XFILL_4_1_1 vdd gnd FILL
XFILL_4_1_2 vdd gnd FILL
XFILL_5_1 vdd gnd FILL
.ends alu_4bit
 

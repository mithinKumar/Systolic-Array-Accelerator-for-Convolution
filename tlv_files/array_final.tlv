\m4_TLV_version 1d: tl-x.org
\SV
   module top(input wire clk); 


\TLV Full_Adder($_A, $_B, $_Cin, $_Sum, $_Cout, /_top)
   $_Sum = /_top$_A ^ /_top$_B ^ /_top$_Cin;
   $_Cout = (/_top$_A & /_top$_B) | (/_top$_B & /_top$_Cin) | (/_top$_A & /_top$_Cin);


\TLV Half_Adder($_A, $_B, $_Sum, $_Cout, /_top)
   $_Sum = /_top$_A ^ /_top$_B;
   $_Cout = /_top$_A & /_top$_B;


\TLV Wallace_PP_Generator(#_width, $_A, $_B, $_PPout, /_top)
   /row[#_width-1:0]
      /col[#_width-1:0]
         $A_bit = /_top$_A[#row];
         $B_bit = /_top$_B[#col];
         $pp = $A_bit & $B_bit;
         $_PPout = $pp;


\TLV WallaceTreeMultiplier(#_width, $_A, $_B, $_Result, /_top, /_top2)
   
   /mul
      $ai[#_width-1:0] = /_top2$_A;
      $bi[#_width-1:0] = /_top2$_B;
      m5+Wallace_PP_Generator(#_width, $ai, $bi, $PP_generated, /_top)


      /lev0
         $_Result = /_top/row[0]/col[0]$PP_generated;

      /lev1
         m5+Half_Adder(/row[0]/col[1]$PP_generated, /row[1]/col[0]$PP_generated, $result1, $carry1, /_top)
         $_Result = /_top/lev1$result1;

      /lev2
         m5+Full_Adder(/row[0]/col[2]$PP_generated, /row[1]/col[1]$PP_generated, /lev1$carry1, $result2_temp_1, $carry2_temp_1, /_top)
         m5+Half_Adder(/row[2]/col[0]$PP_generated, /lev2$result2_temp_1, $result2, $carry2, /_top)
         $_Result = /_top/lev2$result2;

      /lev3
         m5+Full_Adder(/row[3]/col[0]$PP_generated, /row[2]/col[1]$PP_generated, /lev2$carry2, $result3_temp_1, $carry3_temp_1, /_top)
         m5+Full_Adder(/row[1]/col[2]$PP_generated, /lev3$result3_temp_1, /lev2$carry2_temp_1, $result3_temp_2, $carry3_temp_2, /_top)
         m5+Half_Adder(/row[0]/col[3]$PP_generated, /lev3$result3_temp_2, $result3, $carry3, /_top)
         $_Result = /_top/lev3$result3;

      /lev4
         m5+Full_Adder(/row[0]/col[4]$PP_generated, /row[1]/col[3]$PP_generated, /lev3$carry3, $result4_temp_1, $carry4_temp_1, /_top)
         m5+Full_Adder(/row[2]/col[2]$PP_generated, /lev4$result4_temp_1, /lev3$carry3_temp_1, $result4_temp_2, $carry4_temp_2, /_top)
         m5+Full_Adder(/row[3]/col[1]$PP_generated, /lev4$result4_temp_2, /lev3$carry3_temp_2, $result4_temp_3, $carry4_temp_3, /_top)
         m5+Half_Adder(/row[4]/col[0]$PP_generated, /lev4$result4_temp_3, $result4, $carry4, /_top)
         $_Result = /_top/lev4$result4;

      /lev5
         m5+Full_Adder(/row[0]/col[5]$PP_generated, /row[1]/col[4]$PP_generated, /lev4$carry4, $result5_temp_1, $carry5_temp_1, /_top)
         m5+Full_Adder(/row[2]/col[3]$PP_generated, /lev5$result5_temp_1, /lev4$carry4_temp_1, $result5_temp_2, $carry5_temp_2, /_top)
         m5+Full_Adder(/row[3]/col[2]$PP_generated, /lev5$result5_temp_2, /lev4$carry4_temp_2, $result5_temp_3, $carry5_temp_3, /_top)
         m5+Full_Adder(/row[4]/col[1]$PP_generated, /lev5$result5_temp_3, /lev4$carry4_temp_3, $result5_temp_4, $carry5_temp_4, /_top)
         m5+Half_Adder(/row[5]/col[0]$PP_generated, /lev5$result5_temp_4, $result5, $carry5, /_top)
         $_Result = /_top/lev5$result5;

      /lev6
         m5+Full_Adder(/row[0]/col[6]$PP_generated, /row[1]/col[5]$PP_generated, /lev5$carry5, $result6_temp_1, $carry6_temp_1, /_top)
         m5+Full_Adder(/row[2]/col[4]$PP_generated, /lev6$result6_temp_1, /lev5$carry5_temp_1, $result6_temp_2, $carry6_temp_2, /_top)
         m5+Full_Adder(/row[3]/col[3]$PP_generated, /lev6$result6_temp_2, /lev5$carry5_temp_2, $result6_temp_3, $carry6_temp_3, /_top)
         m5+Full_Adder(/row[4]/col[2]$PP_generated, /lev6$result6_temp_3, /lev5$carry5_temp_3, $result6_temp_4, $carry6_temp_4, /_top)
         m5+Full_Adder(/row[5]/col[1]$PP_generated, /lev6$result6_temp_4, /lev5$carry5_temp_4, $result6_temp_5, $carry6_temp_5, /_top)
         m5+Half_Adder(/row[6]/col[0]$PP_generated, /lev6$result6_temp_5, $result6, $carry6, /_top)
         $_Result = /_top/lev6$result6;


      /lev7
         m5+Full_Adder(/row[0]/col[7]$PP_generated, /row[1]/col[6]$PP_generated, /lev6$carry6, $result7_temp_1, $carry7_temp_1, /_top)
         m5+Full_Adder(/row[2]/col[5]$PP_generated, /lev7$result7_temp_1, /lev6$carry6_temp_1, $result7_temp_2, $carry7_temp_2, /_top)
         m5+Full_Adder(/row[3]/col[4]$PP_generated, /lev7$result7_temp_2, /lev6$carry6_temp_2, $result7_temp_3, $carry7_temp_3, /_top)
         m5+Full_Adder(/row[4]/col[3]$PP_generated, /lev7$result7_temp_3, /lev6$carry6_temp_3, $result7_temp_4, $carry7_temp_4, /_top)
         m5+Full_Adder(/row[5]/col[2]$PP_generated, /lev7$result7_temp_4, /lev6$carry6_temp_4, $result7_temp_5, $carry7_temp_5, /_top)
         m5+Full_Adder(/row[6]/col[1]$PP_generated, /lev7$result7_temp_5, /lev6$carry6_temp_5, $result7_temp_6, $carry7_temp_6, /_top)
         m5+Half_Adder(/row[7]/col[0]$PP_generated, /lev7$result7_temp_6, $result7, $carry7, /_top)
         $_Result = /_top/lev7$result7;


      /lev8
         m5+Full_Adder(/row[1]/col[7]$PP_generated, /row[2]/col[6]$PP_generated, /lev7$carry7, $result8_temp_1, $carry8_temp_1, /_top)
         m5+Full_Adder(/row[3]/col[5]$PP_generated, /lev8$result8_temp_1, /lev7$carry7_temp_1, $result8_temp_2, $carry8_temp_2, /_top)
         m5+Full_Adder(/row[4]/col[4]$PP_generated, /lev8$result8_temp_2, /lev7$carry7_temp_2, $result8_temp_3, $carry8_temp_3, /_top)
         m5+Full_Adder(/row[5]/col[3]$PP_generated, /lev8$result8_temp_3, /lev7$carry7_temp_3, $result8_temp_4, $carry8_temp_4, /_top)
         m5+Full_Adder(/row[6]/col[2]$PP_generated, /lev8$result8_temp_4, /lev7$carry7_temp_4, $result8_temp_5, $carry8_temp_5, /_top)
         m5+Full_Adder(/row[7]/col[1]$PP_generated, /lev8$result8_temp_5, /lev7$carry7_temp_5, $result8_temp_6, $carry8_temp_6, /_top)
         m5+Half_Adder(/lev8$result8_temp_6, /lev7$carry7_temp_6, $result8, $carry8, /_top)
         $_Result = /_top/lev8$result8;

      /lev9
         m5+Full_Adder(/row[2]/col[7]$PP_generated, /row[3]/col[6]$PP_generated, /lev8$carry8, $result9_temp_1, $carry9_temp_1, /_top)
         m5+Full_Adder(/row[4]/col[5]$PP_generated, /lev9$result9_temp_1, /lev8$carry8_temp_1, $result9_temp_2, $carry9_temp_2, /_top)
         m5+Full_Adder(/row[5]/col[4]$PP_generated, /lev9$result9_temp_2, /lev8$carry8_temp_2, $result9_temp_3, $carry9_temp_3, /_top)
         m5+Full_Adder(/row[6]/col[3]$PP_generated, /lev9$result9_temp_3, /lev8$carry8_temp_3, $result9_temp_4, $carry9_temp_4, /_top)
         m5+Full_Adder(/row[7]/col[2]$PP_generated, /lev9$result9_temp_4, /lev8$carry8_temp_4, $result9_temp_5, $carry9_temp_5, /_top)
         m5+Full_Adder(/lev9$result9_temp_5, /lev8$carry8_temp_5, /lev8$carry8_temp_6, $result9, $carry9, /_top)
         $_Result = /_top/lev9$result9;


      /lev10
         m5+Full_Adder(/row[3]/col[7]$PP_generated, /row[4]/col[6]$PP_generated, /lev9$carry9, $result10_temp_1, $carry10_temp_1, /_top)
         m5+Full_Adder(/row[5]/col[5]$PP_generated, /lev10$result10_temp_1, /lev9$carry9_temp_1, $result10_temp_2, $carry10_temp_2, /_top)
         m5+Full_Adder(/row[6]/col[4]$PP_generated, /lev10$result10_temp_2, /lev9$carry9_temp_2, $result10_temp_3, $carry10_temp_3, /_top)
         m5+Full_Adder(/row[7]/col[3]$PP_generated, /lev10$result10_temp_3, /lev9$carry9_temp_3, $result10_temp_4, $carry10_temp_4, /_top)
         m5+Full_Adder(/lev10$result10_temp_4, /lev9$carry9_temp_4, /lev9$carry9_temp_5, $result10, $carry10, /_top)
         $_Result = /_top/lev10$result10;

      /lev11
         m5+Full_Adder(/row[4]/col[7]$PP_generated, /row[5]/col[6]$PP_generated, /lev10$carry10, $result11_temp_1, $carry11_temp_1, /_top)
         m5+Full_Adder(/row[6]/col[5]$PP_generated, /lev11$result11_temp_1, /lev10$carry10_temp_1, $result11_temp_2, $carry11_temp_2, /_top)
         m5+Full_Adder(/row[7]/col[4]$PP_generated, /lev11$result11_temp_2, /lev10$carry10_temp_2, $result11_temp_3, $carry11_temp_3, /_top)
         m5+Full_Adder(/lev11$result11_temp_3, /lev10$carry10_temp_3, /lev10$carry10_temp_4, $result11, $carry11, /_top)
         $_Result = /_top/lev11$result11;

      /lev12
         m5+Full_Adder(/row[5]/col[7]$PP_generated, /row[6]/col[6]$PP_generated, /lev11$carry11, $result12_temp_1, $carry12_temp_1, /_top)
         m5+Full_Adder(/row[7]/col[5]$PP_generated, /lev12$result12_temp_1, /lev11$carry11_temp_1, $result12_temp_2, $carry12_temp_2, /_top)
         m5+Full_Adder(/lev12$result12_temp_2, /lev11$carry11_temp_2, /lev11$carry11_temp_3, $result12, $carry12, /_top)
         $_Result = /_top/lev12$result12;


      /lev13
         m5+Full_Adder(/row[6]/col[7]$PP_generated, /row[7]/col[6]$PP_generated, /lev12$carry12, $result13_temp_1, $carry13_temp_1, /_top)
         m5+Full_Adder(/lev13$result13_temp_1, /lev12$carry12_temp_2, /lev12$carry12_temp_1, $result13, $carry13, /_top)
         $_Result = /_top/lev13$result13;

      /lev14
         m5+Full_Adder(/row[7]/col[7]$PP_generated, /lev13$carry13, /lev13$carry13_temp_1, $result14, $carry14, /_top)
         $_Result = /_top/lev14$result14;


      /lev15
         $_Result = /_top/lev14$carry14;

\TLV Kogge_Stone_Adder(#_width, $_A, $_B, $_Sumout, $_CarryOut,/_slice)
   /slice[#_width-1:0]
      $A1 = /_slice$_A[#slice];
      $B1 = $_B[#slice];
      $G = $A1 & $B1;
      $P = $A1 ^ $B1;

      $G1 = (#slice == 0) ? $G : ($G | ($P & /slice[#slice - 1]$G1));
      $P1 = (#slice == 0) ? $P : ($P & /slice[#slice - 1]$P1);


      $G2 = (#slice < 2) ? $G1 : ($G1 | ($P1 & /slice[#slice - 2]$G2));
      $P2 = (#slice < 2) ? $P1 : ($P1 & /slice[#slice - 2]$P2);


      $G3 = (#slice < 4) ? $G2 : ($G2 | ($P2 & /slice[#slice - 4]$G3));
      $P3 = (#slice < 4) ? $P2 : ($P2 & /slice[#slice - 4]$P3);


      $C = (#slice == 0) ? 1'b0 : /slice[#slice - 1]$G3;


      $sum = $P ^ $C;

   $_Sumout[#_width-1:0] = /slice[*]$sum;
   $_CarryOut = /slice[#_width - 1]$G3; 
   

   
\TLV PE($_a_en,$_acc_en,$_weight_en,$_rst,$_a_in,$_weight_in,$_acc_in,$_weight,$_acc,$_a)
   
   |pepipe
      /pe
         @0
            $min1[7:0] = {1'b0,>>2$_weight[6:0]};
            $min2[7:0] = {1'b0,>>2$_a[6:0]};
            m4+WallaceTreeMultiplier(8, $min1, $min2, $result,/mul, /pe)
            $mul[15:0] = {/mul/lev15$result,/mul/lev14$result,/mul/lev13$result,/mul/lev12$result,/mul/lev11$result,/mul/lev10$result,/mul/lev9$result,/mul/lev8$result,/mul/lev7$result,/mul/lev6$result,/mul/lev5$result,/mul/lev4$result,/mul/lev3$result,/mul/lev2$result,/mul/lev1$result,/mul/lev0$result};
            m4+Kogge_Stone_Adder(8, $mulout[7:0], $_acc_in[7:0] , $add, $carry,/pe)
            $overflow = |$mul[15:7];
            $mulout1[6:0] = $overflow ? ($mulout2 ? 6'b0:6'b111111 ) : $mul[6:0];
            $sign = (>>2$_weight[7] ^ >>2$_a[7]);
            $mulout2 = $sign ? 1'b1 : 1'b0;
            $mulout[7:0] = {$mulout2,$mulout1};
            $add_overflow = ($mulout[7] == $_acc_in[7]) &&
                            ($mulout[7] != $add[7]);
            $addout[7:0] = $add_overflow ?
                            $mulout[7]?
                            {$mulout[7], 7'b0}:{$mulout[7], 7'b1111111}: 
                             $add[7:0];
         @1
            $weight12[7:0] = $_rst ? 8'b0 : $_weight_en ? $_weight_in[7:0]:>>1$_weight;
            $a12[7:0] = $_rst ? 8'b0 : $_a_en ? $_a_in[7:0] :>>1$_a;
            $acc12[7:0] = $_rst ? 8'b0 : $_acc_en? <<1$addout[7:0]:>>1$_acc;
         @2
            $_weight[7:0] = $weight12;
            $_a[7:0] = $a12;
            $_acc[7:0] = $acc12;
   

\TLV array(#_height,#_width,$_a_en,$_acc_en,$_weight_en,$_rst,$_a_in,$_weight_in,$_height,$_outstream,/_ain,/_win)  
   /columns[#_width-1:0]
      /rows[#_height-1:0]
         $a_i[7:0] = (#columns == 0) ? /top/_ain[#rows]$_a_in[7:0] : /top/columns[#columns-1]/rows[#rows]|pepipe/pe>>2$a;
         $weight_i[7:0] = (#rows == 0) ? /top/_win[#columns]$_weight_in[7:0] : /top/columns[#columns]/rows[#rows-1]|pepipe/pe>>2$weight;
         $acc_i[7:0] = (#rows == 0) ? 8'b0 : /top/columns[#columns]/rows[#rows-1]|pepipe/pe>>2$acc;
         m4+PE(/top<<1$_a_en,/top<<1$_acc_en,/top<<1$_weight_en,/top<<1$_rst,/columns[#columns]/rows[#rows]<<1$a_i,/columns[#columns]/rows[#rows]<<1$weight_i,/columns[#columns]/rows[#rows]$acc_i,$weight,$acc,$a)
   /out[7:0]
      $_outstream[7:0] = /top/columns[#out]/rows[/top$_height]|pepipe/pe>>2$acc;

\TLV
   m4_define(['m4_width'], 8)
   m4_define(['m4_height'], 8)
   m4+array(m4_height,m4_width,$a_en,$acc_en,$weight_en,$rst,$a_in,$weight_in,$height,$outstream,/ain,/win)
   /win[m4_width-1:0]
      $weight_in[7:0] = (/top$weight_en == 1'b1) ? (#win<2)? 6-*cyc_cnt : 10-*cyc_cnt : 8'b0;
   /ain[m4_height-1:0]
      $a_in[7:0] = (*cyc_cnt > 5 + #ain && *cyc_cnt < 15 + #ain) ? 
                   (#ain <= 1) ? (*cyc_cnt - 5) : 
                   (#ain <= 3) ? (*cyc_cnt - 4) : 8'b0 : 8'b0;
   $rst = (*cyc_cnt<2) ? 1'b1 : 1'b0;
   $weight_en = (*cyc_cnt>1 && *cyc_cnt<6) ? 1'b1 : 1'b0;
   $a_en = (*cyc_cnt>5 && *cyc_cnt<33) ? 1'b1: 1'b0;
   $acc_en = (*cyc_cnt>5 && *cyc_cnt<33) ? 1'b1: 1'b0;
   $height[2:0] = 3'b011;
   
   
   
\SV
    logic [5:0] cyc_cnt = 6'b0;
    always@(posedge clk) cyc_cnt <= cyc_cnt+1; 
endmodule

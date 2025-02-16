module array(input wire clk, output wire [7:0]out1, output wire [5:0] counter); 
 
 
 
genvar ain, col, columns, out, row, rows, win;

logic [5:0] cyc_cnt = 6'b0;
    always@(posedge clk) cyc_cnt <= cyc_cnt+1; 
	 wire [5:0] count;
	 assign count = cyc_cnt;
assign counter = count;
//
// Signals declared top-level.
//

// For $a_en.
logic L0_a_en_a0;

// For $acc_en.
logic L0_acc_en_a0;

// For $height.
logic [2:0] L0_height_a0;

// For $rst.
logic L0_rst_a0;

// For $weight_en.
logic L0_weight_en_a0;

// For /ain$a_in.
logic [7:0] Ain_a_in_a0 [8-1:0];

// For /columns/rows$a_i.
logic [7:0] Columns_Rows_a_i_a0 [8-1:0][8-1:0];

// For /columns/rows$acc_i.
logic [7:0] Columns_Rows_acc_i_a0 [8-1:0][8-1:0];

// For /columns/rows$weight_i.
logic [7:0] Columns_Rows_weight_i_a0 [8-1:0][8-1:0];

// For /columns/rows|pepipe/pe$a.
logic [7:0] Columns_Rows_PEPIPE_Pe_a_a2 [8-1:0][8-1:0];

// For /columns/rows|pepipe/pe$acc.
logic [7:0] Columns_Rows_PEPIPE_Pe_acc_a2 [8-1:0][8-1:0];

// For /columns/rows|pepipe/pe$weight.
logic [7:0] Columns_Rows_PEPIPE_Pe_weight_a2 [8-1:0][8-1:0];

// For /win$weight_in.
logic [7:0] Win_weight_in_a0 [8-1:0];


genvar slice;


   //
   // Scope: /columns[8-1:0]
	
	  generate
   //
		for (columns = 0; columns <= 8-1; columns++) begin : L1gen_Columns

			//
			// Scope: /rows[8-1:0]
			//
			for (rows = 0; rows <= 8-1; rows++) begin : L2gen_Rows

				//
				// Scope: |pepipe
				//


					//
					// Scope: /pe
					//

						// Staging of $a12.
						always_ff @(posedge clk) L1_Columns[columns].L2_Rows[rows].L2_PEPIPE_Pe_a12_a2[7:0] <= L1_Columns[columns].L2_Rows[rows].L2_PEPIPE_Pe_a12_a1[7:0];

						// Staging of $acc12.
						always_ff @(posedge clk) L1_Columns[columns].L2_Rows[rows].L2_PEPIPE_Pe_acc12_a2[7:0] <= L1_Columns[columns].L2_Rows[rows].L2_PEPIPE_Pe_acc12_a1[7:0];

						// Staging of $weight12.
						always_ff @(posedge clk) L1_Columns[columns].L2_Rows[rows].L2_PEPIPE_Pe_weight12_a2[7:0] <= L1_Columns[columns].L2_Rows[rows].L2_PEPIPE_Pe_weight12_a1[7:0];



			end
		end





      for (columns = 0; columns <= 8-1; columns++) begin : L1_Columns //_/columns
         for (rows = 0; rows <= 8-1; rows++) begin : L2_Rows logic [7:0] L2_PEPIPE_Pe_a12_a1, L2_PEPIPE_Pe_a12_a2; logic [7:0] L2_PEPIPE_Pe_acc12_a1, L2_PEPIPE_Pe_acc12_a2; logic [8-1:0] L2_PEPIPE_Pe_add_a0; logic L2_PEPIPE_Pe_add_overflow_a0; logic [7:0] L2_PEPIPE_Pe_addout_a0; logic L2_PEPIPE_Pe_carry_a0; logic [7:0] L2_PEPIPE_Pe_min1_a0; logic [7:0] L2_PEPIPE_Pe_min2_a0; logic [15:0] L2_PEPIPE_Pe_mul_a0; logic [7:0] L2_PEPIPE_Pe_mulout_a0; logic [6:0] L2_PEPIPE_Pe_mulout1_a0; logic L2_PEPIPE_Pe_mulout2_a0; logic L2_PEPIPE_Pe_overflow_a0; logic L2_PEPIPE_Pe_sign_a0; logic [7:0] L2_PEPIPE_Pe_weight12_a1, L2_PEPIPE_Pe_weight12_a2; logic [8-1:0] L2_PEPIPE_Pe_Mul_ai_a0; logic [8-1:0] L2_PEPIPE_Pe_Mul_bi_a0; logic L2_PEPIPE_Pe_Mul_Lev0_result_a0; logic L2_PEPIPE_Pe_Mul_Lev1_carry1_a0; logic L2_PEPIPE_Pe_Mul_Lev1_result_a0; logic L2_PEPIPE_Pe_Mul_Lev1_result1_a0; logic L2_PEPIPE_Pe_Mul_Lev10_carry10_a0; logic L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev10_result_a0; logic L2_PEPIPE_Pe_Mul_Lev10_result10_a0; logic L2_PEPIPE_Pe_Mul_Lev10_result10_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev10_result10_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev10_result10_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev10_result10_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev11_carry11_a0; logic L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev11_result_a0; logic L2_PEPIPE_Pe_Mul_Lev11_result11_a0; logic L2_PEPIPE_Pe_Mul_Lev11_result11_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev11_result11_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev11_result11_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev12_carry12_a0; logic L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev12_result_a0; logic L2_PEPIPE_Pe_Mul_Lev12_result12_a0; logic L2_PEPIPE_Pe_Mul_Lev12_result12_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev12_result12_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev13_carry13_a0; logic L2_PEPIPE_Pe_Mul_Lev13_carry13_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev13_result_a0; logic L2_PEPIPE_Pe_Mul_Lev13_result13_a0; logic L2_PEPIPE_Pe_Mul_Lev13_result13_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev14_carry14_a0; logic L2_PEPIPE_Pe_Mul_Lev14_result_a0; logic L2_PEPIPE_Pe_Mul_Lev14_result14_a0; logic L2_PEPIPE_Pe_Mul_Lev15_result_a0; logic L2_PEPIPE_Pe_Mul_Lev2_carry2_a0; logic L2_PEPIPE_Pe_Mul_Lev2_carry2_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev2_result_a0; logic L2_PEPIPE_Pe_Mul_Lev2_result2_a0; logic L2_PEPIPE_Pe_Mul_Lev2_result2_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev3_carry3_a0; logic L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev3_result_a0; logic L2_PEPIPE_Pe_Mul_Lev3_result3_a0; logic L2_PEPIPE_Pe_Mul_Lev3_result3_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev3_result3_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev4_carry4_a0; logic L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev4_result_a0; logic L2_PEPIPE_Pe_Mul_Lev4_result4_a0; logic L2_PEPIPE_Pe_Mul_Lev4_result4_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev4_result4_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev4_result4_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev5_carry5_a0; logic L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev5_result_a0; logic L2_PEPIPE_Pe_Mul_Lev5_result5_a0; logic L2_PEPIPE_Pe_Mul_Lev5_result5_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev5_result5_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev5_result5_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev5_result5_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev6_carry6_a0; logic L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_5_a0; logic L2_PEPIPE_Pe_Mul_Lev6_result_a0; logic L2_PEPIPE_Pe_Mul_Lev6_result6_a0; logic L2_PEPIPE_Pe_Mul_Lev6_result6_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev6_result6_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev6_result6_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev6_result6_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev6_result6_temp_5_a0; logic L2_PEPIPE_Pe_Mul_Lev7_carry7_a0; logic L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_5_a0; logic L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_6_a0; logic L2_PEPIPE_Pe_Mul_Lev7_result_a0; logic L2_PEPIPE_Pe_Mul_Lev7_result7_a0; logic L2_PEPIPE_Pe_Mul_Lev7_result7_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev7_result7_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev7_result7_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev7_result7_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev7_result7_temp_5_a0; logic L2_PEPIPE_Pe_Mul_Lev7_result7_temp_6_a0; logic L2_PEPIPE_Pe_Mul_Lev8_carry8_a0; logic L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_5_a0; logic L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_6_a0; logic L2_PEPIPE_Pe_Mul_Lev8_result_a0; logic L2_PEPIPE_Pe_Mul_Lev8_result8_a0; logic L2_PEPIPE_Pe_Mul_Lev8_result8_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev8_result8_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev8_result8_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev8_result8_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev8_result8_temp_5_a0; logic L2_PEPIPE_Pe_Mul_Lev8_result8_temp_6_a0; logic L2_PEPIPE_Pe_Mul_Lev9_carry9_a0; logic L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_5_a0; logic L2_PEPIPE_Pe_Mul_Lev9_result_a0; logic L2_PEPIPE_Pe_Mul_Lev9_result9_a0; logic L2_PEPIPE_Pe_Mul_Lev9_result9_temp_1_a0; logic L2_PEPIPE_Pe_Mul_Lev9_result9_temp_2_a0; logic L2_PEPIPE_Pe_Mul_Lev9_result9_temp_3_a0; logic L2_PEPIPE_Pe_Mul_Lev9_result9_temp_4_a0; logic L2_PEPIPE_Pe_Mul_Lev9_result9_temp_5_a0; logic L2_PEPIPE_Pe_Slice_G1_a0 [8-1:0]; logic L2_PEPIPE_Pe_Slice_G2_a0 [8-1:0]; logic L2_PEPIPE_Pe_Slice_G3_a0 [8-1:0]; logic L2_PEPIPE_Pe_Slice_P1_a0 [8-1:0]; logic L2_PEPIPE_Pe_Slice_P2_a0 [8-1:0]; logic L2_PEPIPE_Pe_Slice_P3_a0 [8-1:0]; logic [8-1:0] L2_PEPIPE_Pe_Slice_sum_a0; //_/rows
            assign Columns_Rows_a_i_a0[columns][rows][7:0] = (columns == 0) ? Ain_a_in_a0[rows][7:0] : Columns_Rows_PEPIPE_Pe_a_a2[columns-1][rows];
            assign Columns_Rows_weight_i_a0[columns][rows][7:0] = (rows == 0) ? Win_weight_in_a0[columns][7:0] : Columns_Rows_PEPIPE_Pe_weight_a2[columns][rows-1];
            assign Columns_Rows_acc_i_a0[columns][rows][7:0] = (rows == 0) ? 8'b0 : Columns_Rows_PEPIPE_Pe_acc_a2[columns][rows-1];
               
               //_|pepipe
                  //_/pe
                     //_@0
                        assign L2_PEPIPE_Pe_min1_a0[7:0] = {1'b0,Columns_Rows_PEPIPE_Pe_weight_a2[columns][rows][6:0]};
                        assign L2_PEPIPE_Pe_min2_a0[7:0] = {1'b0,Columns_Rows_PEPIPE_Pe_a_a2[columns][rows][6:0]};
                           
                           //_/mul
                              assign L2_PEPIPE_Pe_Mul_ai_a0[8-1:0] = L2_PEPIPE_Pe_min1_a0;
                              assign L2_PEPIPE_Pe_Mul_bi_a0[8-1:0] = L2_PEPIPE_Pe_min2_a0;
                                 for (row = 0; row <= 8-1; row++) begin : L3_PEPIPE_Pe_Mul_Row //_/row
                                    for (col = 0; col <= 8-1; col++) begin : L4_Col logic L4_A_bit_a0; logic L4_B_bit_a0; logic L4_PP_generated_a0; logic L4_pp_a0; //_/col
                                       assign L4_A_bit_a0 = L2_PEPIPE_Pe_Mul_ai_a0[row];
                                       assign L4_B_bit_a0 = L2_PEPIPE_Pe_Mul_bi_a0[col];
                                       assign L4_pp_a0 = L4_A_bit_a0 & L4_B_bit_a0;
                                       assign L4_PP_generated_a0 = L4_pp_a0; end end
                              //_\end_source
                        
                        
                              //_/lev0
                                 assign L2_PEPIPE_Pe_Mul_Lev0_result_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[0].L4_PP_generated_a0;
                        
                              //_/lev1
                                    assign L2_PEPIPE_Pe_Mul_Lev1_result1_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[1].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[1].L4_Col[0].L4_PP_generated_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev1_carry1_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[1].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[1].L4_Col[0].L4_PP_generated_a0;
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev1_result_a0 = L2_PEPIPE_Pe_Mul_Lev1_result1_a0;
                        
                              //_/lev2
                                    assign L2_PEPIPE_Pe_Mul_Lev2_result2_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[2].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[1].L4_Col[1].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev1_carry1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev2_carry2_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[2].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[1].L4_Col[1].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev1_carry1_a0) | (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev1_carry1_a0);
                                 //_\end_source

                                    assign L2_PEPIPE_Pe_Mul_Lev2_result2_a0 = L3_PEPIPE_Pe_Mul_Row[2].L4_Col[0].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev2_result2_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev2_carry2_a0 = L3_PEPIPE_Pe_Mul_Row[2].L4_Col[0].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev2_result2_temp_1_a0;
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev2_result_a0 = L2_PEPIPE_Pe_Mul_Lev2_result2_a0;
                        
                              //_/lev3
                                    assign L2_PEPIPE_Pe_Mul_Lev3_result3_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[3].L4_Col[0].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[2].L4_Col[1].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev2_carry2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[0].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[2].L4_Col[1].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev2_carry2_a0) | (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[0].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev2_carry2_a0);
                                 //_\end_source

                                    assign L2_PEPIPE_Pe_Mul_Lev3_result3_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[1].L4_Col[2].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev3_result3_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev2_carry2_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev3_result3_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev3_result3_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev2_carry2_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev2_carry2_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev3_result3_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[3].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev3_result3_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev3_carry3_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev3_result3_temp_2_a0;
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev3_result_a0 = L2_PEPIPE_Pe_Mul_Lev3_result3_a0;
                        
                              //_/lev4
                                    assign L2_PEPIPE_Pe_Mul_Lev4_result4_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[4].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[1].L4_Col[3].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev3_carry3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[4].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[1].L4_Col[3].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev3_carry3_a0) | (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev3_carry3_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev4_result4_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[2].L4_Col[2].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev4_result4_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev4_result4_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev4_result4_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_1_a0);
                                 //_\end_source
                                
                                    assign L2_PEPIPE_Pe_Mul_Lev4_result4_temp_3_a0 = L3_PEPIPE_Pe_Mul_Row[3].L4_Col[1].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev4_result4_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_3_a0 = (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev4_result4_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev4_result4_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_2_a0) | (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev3_carry3_temp_2_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev4_result4_a0 = L3_PEPIPE_Pe_Mul_Row[4].L4_Col[0].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev4_result4_temp_3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev4_carry4_a0 = L3_PEPIPE_Pe_Mul_Row[4].L4_Col[0].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev4_result4_temp_3_a0;
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev4_result_a0 = L2_PEPIPE_Pe_Mul_Lev4_result4_a0;
                        
                              //_/lev5
                                    assign L2_PEPIPE_Pe_Mul_Lev5_result5_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[5].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[1].L4_Col[4].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev4_carry4_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[5].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[1].L4_Col[4].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev4_carry4_a0) | (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev4_carry4_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev5_result5_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[2].L4_Col[3].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_result5_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_result5_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev5_result5_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev5_result5_temp_3_a0 = L3_PEPIPE_Pe_Mul_Row[3].L4_Col[2].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_result5_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_3_a0 = (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_result5_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev5_result5_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_2_a0) | (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_2_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev5_result5_temp_4_a0 = L3_PEPIPE_Pe_Mul_Row[4].L4_Col[1].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_result5_temp_3_a0 ^ L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_4_a0 = (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_result5_temp_3_a0) | (L2_PEPIPE_Pe_Mul_Lev5_result5_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_3_a0) | (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev4_carry4_temp_3_a0);
                                 //_\end_source
                                
                                    assign L2_PEPIPE_Pe_Mul_Lev5_result5_a0 = L3_PEPIPE_Pe_Mul_Row[5].L4_Col[0].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_result5_temp_4_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev5_carry5_a0 = L3_PEPIPE_Pe_Mul_Row[5].L4_Col[0].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_result5_temp_4_a0;
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev5_result_a0 = L2_PEPIPE_Pe_Mul_Lev5_result5_a0;
                        
                              //_/lev6
                                    assign L2_PEPIPE_Pe_Mul_Lev6_result6_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[6].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[1].L4_Col[5].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_carry5_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[6].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[1].L4_Col[5].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_a0) | (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[6].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev6_result6_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[2].L4_Col[4].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_result6_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_result6_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev6_result6_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev6_result6_temp_3_a0 = L3_PEPIPE_Pe_Mul_Row[3].L4_Col[3].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_result6_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_3_a0 = (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_result6_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev6_result6_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_2_a0) | (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_2_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev6_result6_temp_4_a0 = L3_PEPIPE_Pe_Mul_Row[4].L4_Col[2].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_result6_temp_3_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_4_a0 = (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_result6_temp_3_a0) | (L2_PEPIPE_Pe_Mul_Lev6_result6_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_3_a0) | (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_3_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev6_result6_temp_5_a0 = L3_PEPIPE_Pe_Mul_Row[5].L4_Col[1].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_result6_temp_4_a0 ^ L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_4_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_5_a0 = (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_result6_temp_4_a0) | (L2_PEPIPE_Pe_Mul_Lev6_result6_temp_4_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_4_a0) | (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev5_carry5_temp_4_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev6_result6_a0 = L3_PEPIPE_Pe_Mul_Row[6].L4_Col[0].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_result6_temp_5_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev6_carry6_a0 = L3_PEPIPE_Pe_Mul_Row[6].L4_Col[0].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_result6_temp_5_a0;
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev6_result_a0 = L2_PEPIPE_Pe_Mul_Lev6_result6_a0;
                        
                        
                              //_/lev7
                                    assign L2_PEPIPE_Pe_Mul_Lev7_result7_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[0].L4_Col[7].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[1].L4_Col[6].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_carry6_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[7].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[1].L4_Col[6].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[6].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_a0) | (L3_PEPIPE_Pe_Mul_Row[0].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev7_result7_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[2].L4_Col[5].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_result7_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_result7_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev7_result7_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev7_result7_temp_3_a0 = L3_PEPIPE_Pe_Mul_Row[3].L4_Col[4].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_result7_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_3_a0 = (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_result7_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev7_result7_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_2_a0) | (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_2_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev7_result7_temp_4_a0 = L3_PEPIPE_Pe_Mul_Row[4].L4_Col[3].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_result7_temp_3_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_4_a0 = (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_result7_temp_3_a0) | (L2_PEPIPE_Pe_Mul_Lev7_result7_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_3_a0) | (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_3_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev7_result7_temp_5_a0 = L3_PEPIPE_Pe_Mul_Row[5].L4_Col[2].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_result7_temp_4_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_4_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_5_a0 = (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_result7_temp_4_a0) | (L2_PEPIPE_Pe_Mul_Lev7_result7_temp_4_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_4_a0) | (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_4_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev7_result7_temp_6_a0 = L3_PEPIPE_Pe_Mul_Row[6].L4_Col[1].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_result7_temp_5_a0 ^ L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_5_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_6_a0 = (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_result7_temp_5_a0) | (L2_PEPIPE_Pe_Mul_Lev7_result7_temp_5_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_5_a0) | (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev6_carry6_temp_5_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev7_result7_a0 = L3_PEPIPE_Pe_Mul_Row[7].L4_Col[0].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_result7_temp_6_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev7_carry7_a0 = L3_PEPIPE_Pe_Mul_Row[7].L4_Col[0].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_result7_temp_6_a0;
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev7_result_a0 = L2_PEPIPE_Pe_Mul_Lev7_result7_a0;
                        
                        
                              //_/lev8
                                    assign L2_PEPIPE_Pe_Mul_Lev8_result8_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[1].L4_Col[7].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[2].L4_Col[6].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_carry7_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[7].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[2].L4_Col[6].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[6].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_a0) | (L3_PEPIPE_Pe_Mul_Row[1].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev8_result8_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[3].L4_Col[5].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_result8_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_result8_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev8_result8_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev8_result8_temp_3_a0 = L3_PEPIPE_Pe_Mul_Row[4].L4_Col[4].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_result8_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_3_a0 = (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_result8_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev8_result8_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_2_a0) | (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_2_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev8_result8_temp_4_a0 = L3_PEPIPE_Pe_Mul_Row[5].L4_Col[3].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_result8_temp_3_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_4_a0 = (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_result8_temp_3_a0) | (L2_PEPIPE_Pe_Mul_Lev8_result8_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_3_a0) | (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_3_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev8_result8_temp_5_a0 = L3_PEPIPE_Pe_Mul_Row[6].L4_Col[2].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_result8_temp_4_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_4_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_5_a0 = (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_result8_temp_4_a0) | (L2_PEPIPE_Pe_Mul_Lev8_result8_temp_4_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_4_a0) | (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_4_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev8_result8_temp_6_a0 = L3_PEPIPE_Pe_Mul_Row[7].L4_Col[1].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_result8_temp_5_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_5_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_6_a0 = (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_result8_temp_5_a0) | (L2_PEPIPE_Pe_Mul_Lev8_result8_temp_5_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_5_a0) | (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[1].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_5_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev8_result8_a0 = L2_PEPIPE_Pe_Mul_Lev8_result8_temp_6_a0 ^ L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_6_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev8_carry8_a0 = L2_PEPIPE_Pe_Mul_Lev8_result8_temp_6_a0 & L2_PEPIPE_Pe_Mul_Lev7_carry7_temp_6_a0;
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev8_result_a0 = L2_PEPIPE_Pe_Mul_Lev8_result8_a0;
                        
                              //_/lev9
                                    assign L2_PEPIPE_Pe_Mul_Lev9_result9_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[2].L4_Col[7].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[3].L4_Col[6].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_carry8_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[7].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[3].L4_Col[6].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[6].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_a0) | (L3_PEPIPE_Pe_Mul_Row[2].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev9_result9_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[4].L4_Col[5].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_result9_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_result9_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev9_result9_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev9_result9_temp_3_a0 = L3_PEPIPE_Pe_Mul_Row[5].L4_Col[4].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_result9_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_3_a0 = (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_result9_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev9_result9_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_2_a0) | (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_2_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev9_result9_temp_4_a0 = L3_PEPIPE_Pe_Mul_Row[6].L4_Col[3].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_result9_temp_3_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_4_a0 = (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_result9_temp_3_a0) | (L2_PEPIPE_Pe_Mul_Lev9_result9_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_3_a0) | (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_3_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev9_result9_temp_5_a0 = L3_PEPIPE_Pe_Mul_Row[7].L4_Col[2].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_result9_temp_4_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_4_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_5_a0 = (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_result9_temp_4_a0) | (L2_PEPIPE_Pe_Mul_Lev9_result9_temp_4_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_4_a0) | (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[2].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_4_a0);
                                 //_\end_source
                                
                                    assign L2_PEPIPE_Pe_Mul_Lev9_result9_a0 = L2_PEPIPE_Pe_Mul_Lev9_result9_temp_5_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_5_a0 ^ L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_6_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev9_carry9_a0 = (L2_PEPIPE_Pe_Mul_Lev9_result9_temp_5_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_5_a0) | (L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_5_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_6_a0) | (L2_PEPIPE_Pe_Mul_Lev9_result9_temp_5_a0 & L2_PEPIPE_Pe_Mul_Lev8_carry8_temp_6_a0);
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev9_result_a0 = L2_PEPIPE_Pe_Mul_Lev9_result9_a0;
                        
                        
                              //_/lev10
                                    assign L2_PEPIPE_Pe_Mul_Lev10_result10_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[3].L4_Col[7].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[4].L4_Col[6].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_carry9_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[7].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[4].L4_Col[6].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[6].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_a0) | (L3_PEPIPE_Pe_Mul_Row[3].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_a0);
                                
                                    assign L2_PEPIPE_Pe_Mul_Lev10_result10_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[5].L4_Col[5].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev10_result10_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev10_result10_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev10_result10_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev10_result10_temp_3_a0 = L3_PEPIPE_Pe_Mul_Row[6].L4_Col[4].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev10_result10_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_3_a0 = (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev10_result10_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev10_result10_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_2_a0) | (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_2_a0);
                                 //_\end_source
                                
                                    assign L2_PEPIPE_Pe_Mul_Lev10_result10_temp_4_a0 = L3_PEPIPE_Pe_Mul_Row[7].L4_Col[3].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev10_result10_temp_3_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_4_a0 = (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev10_result10_temp_3_a0) | (L2_PEPIPE_Pe_Mul_Lev10_result10_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_3_a0) | (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[3].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_3_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev10_result10_a0 = L2_PEPIPE_Pe_Mul_Lev10_result10_temp_4_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_4_a0 ^ L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_5_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev10_carry10_a0 = (L2_PEPIPE_Pe_Mul_Lev10_result10_temp_4_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_4_a0) | (L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_4_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_5_a0) | (L2_PEPIPE_Pe_Mul_Lev10_result10_temp_4_a0 & L2_PEPIPE_Pe_Mul_Lev9_carry9_temp_5_a0);
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev10_result_a0 = L2_PEPIPE_Pe_Mul_Lev10_result10_a0;
                        
                              //_/lev11
                                    assign L2_PEPIPE_Pe_Mul_Lev11_result11_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[4].L4_Col[7].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[5].L4_Col[6].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev10_carry10_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[7].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[5].L4_Col[6].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[6].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_a0) | (L3_PEPIPE_Pe_Mul_Row[4].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev11_result11_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[6].L4_Col[5].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev11_result11_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev11_result11_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev11_result11_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev11_result11_temp_3_a0 = L3_PEPIPE_Pe_Mul_Row[7].L4_Col[4].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev11_result11_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_2_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_3_a0 = (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev11_result11_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev11_result11_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_2_a0) | (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[4].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_2_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev11_result11_a0 = L2_PEPIPE_Pe_Mul_Lev11_result11_temp_3_a0 ^ L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_3_a0 ^ L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_4_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev11_carry11_a0 = (L2_PEPIPE_Pe_Mul_Lev11_result11_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_3_a0) | (L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_4_a0) | (L2_PEPIPE_Pe_Mul_Lev11_result11_temp_3_a0 & L2_PEPIPE_Pe_Mul_Lev10_carry10_temp_4_a0);
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev11_result_a0 = L2_PEPIPE_Pe_Mul_Lev11_result11_a0;
                        
                              //_/lev12
                                    assign L2_PEPIPE_Pe_Mul_Lev12_result12_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[5].L4_Col[7].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[6].L4_Col[6].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev11_carry11_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[7].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[6].L4_Col[6].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[6].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev11_carry11_a0) | (L3_PEPIPE_Pe_Mul_Row[5].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev11_carry11_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev12_result12_temp_2_a0 = L3_PEPIPE_Pe_Mul_Row[7].L4_Col[5].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev12_result12_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_2_a0 = (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev12_result12_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev12_result12_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[5].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_1_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev12_result12_a0 = L2_PEPIPE_Pe_Mul_Lev12_result12_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_3_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev12_carry12_a0 = (L2_PEPIPE_Pe_Mul_Lev12_result12_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_3_a0) | (L2_PEPIPE_Pe_Mul_Lev12_result12_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev11_carry11_temp_3_a0);
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev12_result_a0 = L2_PEPIPE_Pe_Mul_Lev12_result12_a0;
                        
                        
                              //_/lev13
                                    assign L2_PEPIPE_Pe_Mul_Lev13_result13_temp_1_a0 = L3_PEPIPE_Pe_Mul_Row[6].L4_Col[7].L4_PP_generated_a0 ^ L3_PEPIPE_Pe_Mul_Row[7].L4_Col[6].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev12_carry12_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev13_carry13_temp_1_a0 = (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[7].L4_PP_generated_a0 & L3_PEPIPE_Pe_Mul_Row[7].L4_Col[6].L4_PP_generated_a0) | (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[6].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev12_carry12_a0) | (L3_PEPIPE_Pe_Mul_Row[6].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev12_carry12_a0);
                                 //_\end_source
                                 
                                    assign L2_PEPIPE_Pe_Mul_Lev13_result13_a0 = L2_PEPIPE_Pe_Mul_Lev13_result13_temp_1_a0 ^ L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_2_a0 ^ L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev13_carry13_a0 = (L2_PEPIPE_Pe_Mul_Lev13_result13_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_2_a0) | (L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_2_a0 & L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_1_a0) | (L2_PEPIPE_Pe_Mul_Lev13_result13_temp_1_a0 & L2_PEPIPE_Pe_Mul_Lev12_carry12_temp_1_a0);
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev13_result_a0 = L2_PEPIPE_Pe_Mul_Lev13_result13_a0;
                        
                              //_/lev14
                                    assign L2_PEPIPE_Pe_Mul_Lev14_result14_a0 = L3_PEPIPE_Pe_Mul_Row[7].L4_Col[7].L4_PP_generated_a0 ^ L2_PEPIPE_Pe_Mul_Lev13_carry13_a0 ^ L2_PEPIPE_Pe_Mul_Lev13_carry13_temp_1_a0;
                                    assign L2_PEPIPE_Pe_Mul_Lev14_carry14_a0 = (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev13_carry13_a0) | (L2_PEPIPE_Pe_Mul_Lev13_carry13_a0 & L2_PEPIPE_Pe_Mul_Lev13_carry13_temp_1_a0) | (L3_PEPIPE_Pe_Mul_Row[7].L4_Col[7].L4_PP_generated_a0 & L2_PEPIPE_Pe_Mul_Lev13_carry13_temp_1_a0);
                                 //_\end_source
                                 assign L2_PEPIPE_Pe_Mul_Lev14_result_a0 = L2_PEPIPE_Pe_Mul_Lev14_result14_a0;
                        
                        
                              //_/lev15
                                 assign L2_PEPIPE_Pe_Mul_Lev15_result_a0 = L2_PEPIPE_Pe_Mul_Lev14_carry14_a0;
                        //_\end_source
                        assign L2_PEPIPE_Pe_mul_a0[15:0] = {L2_PEPIPE_Pe_Mul_Lev15_result_a0,L2_PEPIPE_Pe_Mul_Lev14_result_a0,L2_PEPIPE_Pe_Mul_Lev13_result_a0,L2_PEPIPE_Pe_Mul_Lev12_result_a0,L2_PEPIPE_Pe_Mul_Lev11_result_a0,L2_PEPIPE_Pe_Mul_Lev10_result_a0,L2_PEPIPE_Pe_Mul_Lev9_result_a0,L2_PEPIPE_Pe_Mul_Lev8_result_a0,L2_PEPIPE_Pe_Mul_Lev7_result_a0,L2_PEPIPE_Pe_Mul_Lev6_result_a0,L2_PEPIPE_Pe_Mul_Lev5_result_a0,L2_PEPIPE_Pe_Mul_Lev4_result_a0,L2_PEPIPE_Pe_Mul_Lev3_result_a0,L2_PEPIPE_Pe_Mul_Lev2_result_a0,L2_PEPIPE_Pe_Mul_Lev1_result_a0,L2_PEPIPE_Pe_Mul_Lev0_result_a0};
                           for ( slice = 0; slice <= 8-1; slice++) begin : L3_PEPIPE_Pe_Slice logic L3_A1_a0; logic L3_B1_a0; logic L3_C_a0; logic L3_G_a0; logic L3_P_a0; //_/slice
                              assign L3_A1_a0 = L2_PEPIPE_Pe_mulout_a0[slice];
                              assign L3_B1_a0 = Columns_Rows_acc_i_a0[columns][rows][slice];
                              assign L3_G_a0 = L3_A1_a0 & L3_B1_a0;
                              assign L3_P_a0 = L3_A1_a0 ^ L3_B1_a0;
                        
                              assign L2_PEPIPE_Pe_Slice_G1_a0[slice] = (slice == 0) ? L3_G_a0 : (L3_G_a0 | (L3_P_a0 & L2_PEPIPE_Pe_Slice_G1_a0[slice - 1]));
                              assign L2_PEPIPE_Pe_Slice_P1_a0[slice] = (slice == 0) ? L3_P_a0 : (L3_P_a0 & L2_PEPIPE_Pe_Slice_P1_a0[slice - 1]);
                        
                        
                              assign L2_PEPIPE_Pe_Slice_G2_a0[slice] = (slice < 2) ? L2_PEPIPE_Pe_Slice_G1_a0[slice] : (L2_PEPIPE_Pe_Slice_G1_a0[slice] | (L2_PEPIPE_Pe_Slice_P1_a0[slice] & L2_PEPIPE_Pe_Slice_G2_a0[slice - 2]));
                              assign L2_PEPIPE_Pe_Slice_P2_a0[slice] = (slice < 2) ? L2_PEPIPE_Pe_Slice_P1_a0[slice] : (L2_PEPIPE_Pe_Slice_P1_a0[slice] & L2_PEPIPE_Pe_Slice_P2_a0[slice - 2]);
                        
                        
                              assign L2_PEPIPE_Pe_Slice_G3_a0[slice] = (slice < 4) ? L2_PEPIPE_Pe_Slice_G2_a0[slice] : (L2_PEPIPE_Pe_Slice_G2_a0[slice] | (L2_PEPIPE_Pe_Slice_P2_a0[slice] & L2_PEPIPE_Pe_Slice_G3_a0[slice - 4]));
                              assign L2_PEPIPE_Pe_Slice_P3_a0[slice] = (slice < 4) ? L2_PEPIPE_Pe_Slice_P2_a0[slice] : (L2_PEPIPE_Pe_Slice_P2_a0[slice] & L2_PEPIPE_Pe_Slice_P3_a0[slice - 4]);
                        
                        
                              assign L3_C_a0 = (slice == 0) ? 1'b0 : L2_PEPIPE_Pe_Slice_G3_a0[slice - 1];
                        
                        
                              assign L2_PEPIPE_Pe_Slice_sum_a0[slice] = L3_P_a0 ^ L3_C_a0; end
                        
                           assign L2_PEPIPE_Pe_add_a0[8-1:0] = L2_PEPIPE_Pe_Slice_sum_a0;
                           assign L2_PEPIPE_Pe_carry_a0 = L2_PEPIPE_Pe_Slice_G3_a0[8 - 1]; 
                           
                        
                           
                        //_\end_source
                        assign L2_PEPIPE_Pe_overflow_a0 = |L2_PEPIPE_Pe_mul_a0[15:7];
                        assign L2_PEPIPE_Pe_mulout1_a0[6:0] = L2_PEPIPE_Pe_overflow_a0 ? (L2_PEPIPE_Pe_mulout2_a0 ? 6'b0:6'b111111 ) : L2_PEPIPE_Pe_mul_a0[6:0];
                        assign L2_PEPIPE_Pe_sign_a0 = (Columns_Rows_PEPIPE_Pe_weight_a2[columns][rows][7] ^ Columns_Rows_PEPIPE_Pe_a_a2[columns][rows][7]);
                        assign L2_PEPIPE_Pe_mulout2_a0 = L2_PEPIPE_Pe_sign_a0 ? 1'b1 : 1'b0;
                        assign L2_PEPIPE_Pe_mulout_a0[7:0] = {L2_PEPIPE_Pe_mulout2_a0,L2_PEPIPE_Pe_mulout1_a0};
                        assign L2_PEPIPE_Pe_add_overflow_a0 = (L2_PEPIPE_Pe_mulout_a0[7] == Columns_Rows_acc_i_a0[columns][rows][7]) &&
                                        (L2_PEPIPE_Pe_mulout_a0[7] != L2_PEPIPE_Pe_add_a0[7]);
                        assign L2_PEPIPE_Pe_addout_a0[7:0] = L2_PEPIPE_Pe_add_overflow_a0 ?
                                        L2_PEPIPE_Pe_mulout_a0[7]?
                                        {L2_PEPIPE_Pe_mulout_a0[7], 7'b0}:{L2_PEPIPE_Pe_mulout_a0[7], 7'b1111111}: 
                                         L2_PEPIPE_Pe_add_a0[7:0];
                     //_@1
                        assign L2_PEPIPE_Pe_weight12_a1[7:0] = L0_rst_a0 ? 8'b0 : L0_weight_en_a0 ? Columns_Rows_weight_i_a0[columns][rows][7:0]:Columns_Rows_PEPIPE_Pe_weight_a2[columns][rows];
                        assign L2_PEPIPE_Pe_a12_a1[7:0] = L0_rst_a0 ? 8'b0 : L0_a_en_a0 ? Columns_Rows_a_i_a0[columns][rows][7:0] :Columns_Rows_PEPIPE_Pe_a_a2[columns][rows];
                        assign L2_PEPIPE_Pe_acc12_a1[7:0] = L0_rst_a0 ? 8'b0 : L0_acc_en_a0? L2_PEPIPE_Pe_addout_a0[7:0]:Columns_Rows_PEPIPE_Pe_acc_a2[columns][rows];
                     //_@2
                        assign Columns_Rows_PEPIPE_Pe_weight_a2[columns][rows][7:0] = L2_PEPIPE_Pe_weight12_a2;
                        assign Columns_Rows_PEPIPE_Pe_a_a2[columns][rows][7:0] = L2_PEPIPE_Pe_a12_a2;
                        assign Columns_Rows_PEPIPE_Pe_acc_a2[columns][rows][7:0] = L2_PEPIPE_Pe_acc12_a2;
               
            end end //_\end_source
      for (out = 0; out <= 7; out++) begin : L1_Out logic [7:0] L1_outstream_a0; //_/out
         assign L1_outstream_a0[7:0] = Columns_Rows_PEPIPE_Pe_acc_a2[out][L0_height_a0]; end
   //_\end_source
   for (win = 0; win <= 8-1; win++) begin : L1_Win //_/win
      assign Win_weight_in_a0[win][7:0] = (L0_weight_en_a0 == 1'b1) ? (win<2)? (6-count) : (count+3) : 8'b0; end
		
   for (ain = 0; ain <= 8-1; ain++) begin : L1_Ain //_/ain
      assign Ain_a_in_a0[ain][7:0] = ((count > 5 + ain) && (count < 15 + ain)) ? 
                   (ain <= 1) ? (count - 5) : 
                   (ain <= 3) ? (count - 4) : 8'b0 : 8'b0; end
						 
   assign L0_rst_a0 = (count<2) ? 1'b1 : 1'b0;
   assign L0_weight_en_a0 = (count>1 && count<6) ? 1'b1 : 1'b0;
   assign L0_a_en_a0 = (count>5 && count<33) ? 1'b1: 1'b0;
   assign L0_acc_en_a0 = (count>5 && count<33) ? 1'b1: 1'b0;
   assign L0_height_a0[2:0] = 3'b011;
	assign out1 = L1_Out[0].L1_outstream_a0;
   endgenerate
   
//_\SV
    
endmodule


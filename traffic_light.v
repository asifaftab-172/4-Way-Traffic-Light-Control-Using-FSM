module traffic_light(Clk,Reset,w,N_G,N_Y,N_R,S_G,S_Y,S_R,E_G,E_Y,E_R,W_G,W_Y,W_R,P1_G,P1_Y,P1_R,P2_G,P2_Y,P2_R,P3_G,P3_Y,P3_R,
                   P4_G,P4_Y,P4_R,P5_G,P5_Y,P5_R,P6_G,P6_Y,P6_R,P7_G,P7_Y,P7_R,P8_G,P8_Y,P8_R);

          input Clk,Reset,w;
          output reg N_G,N_Y,N_R,S_G,S_Y,S_R,E_G,E_Y,E_R,W_G,W_Y,W_R;
          
          output reg P1_G,P1_Y,P1_R,P2_G,P2_Y,P2_R,P3_G,P3_Y,P3_R,P4_G,P4_Y,P4_R,P5_G,P5_Y,P5_R,P6_G,P6_Y,P6_R,P7_G,P7_Y,P7_R,P8_G,P8_Y,P8_R;
          
          reg [3:1] y,Y;
          parameter [3:1] A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100,F=3'b101,G=3'b110,H=3'b111;
          
          always @(w,y)
          begin
              case(y)
                A: if(w)
                   begin
                      N_G=1;N_Y=0;N_R=0;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=0;W_R=1;
                      
                      P1_G=1;P1_Y=0;P1_R=0;P2_G=1;P2_Y=0;P2_R=0;P3_G=0;P3_Y=0;P3_R=1;P4_G=1;P4_Y=0;P4_R=0;
                      P5_G=1;P5_Y=0;P5_R=0;P6_G=0;P6_Y=0;P6_R=1;P7_G=0;P7_Y=0;P7_R=1;P8_G=0;P8_Y=0;P8_R=1;
                      
                      Y=B;
                      
                   end
                   else
                   begin
                      N_G=1;N_Y=0;N_R=0;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=0;W_R=1;
                      
                      P1_G=1;P1_Y=0;P1_R=0;P2_G=1;P2_Y=0;P2_R=0;P3_G=0;P3_Y=0;P3_R=1;P4_G=1;P4_Y=0;P4_R=0;
                      P5_G=1;P5_Y=0;P5_R=0;P6_G=0;P6_Y=0;P6_R=1;P7_G=0;P7_Y=0;P7_R=1;P8_G=0;P8_Y=0;P8_R=1;
                      
                      Y=A;
                   end
                B: if(w)
                   begin
                       N_G=0;N_Y=1;N_R=0;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=0;W_R=1;
                       
                       P1_G=0;P1_Y=1;P1_R=0;P2_G=0;P2_Y=1;P2_R=0;P3_G=0;P3_Y=0;P3_R=1;P4_G=0;P4_Y=1;P4_R=0;
                       P5_G=0;P5_Y=1;P5_R=0;P6_G=0;P6_Y=0;P6_R=1;P7_G=0;P7_Y=0;P7_R=1;P8_G=0;P8_Y=0;P8_R=1;
                      
                       Y=B;
                      
                   end
                   else
                   begin
                     N_G=0;N_Y=1;N_R=0;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=0;W_R=1;
                     
                      P1_G=0;P1_Y=1;P1_R=0;P2_G=0;P2_Y=1;P2_R=0;P3_G=0;P3_Y=0;P3_R=1;P4_G=0;P4_Y=1;P4_R=0;
                      P5_G=0;P5_Y=1;P5_R=0;P6_G=0;P6_Y=0;P6_R=1;P7_G=0;P7_Y=0;P7_R=1;P8_G=0;P8_Y=0;P8_R=1;
                      
                       
                     Y=C;
                   end
                C:  if(w)
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=0;S_R=1;E_G=1;E_Y=0;E_R=0;W_G=0;W_Y=0;W_R=1;
                       
                       P1_G=1;P1_Y=0;P1_R=0;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=0;P3_R=1;P4_G=0;P4_Y=0;P4_R=1;
                       P5_G=1;P5_Y=0;P5_R=0;P6_G=1;P6_Y=0;P6_R=0;P7_G=1;P7_Y=0;P7_R=0;P8_G=0;P8_Y=0;P8_R=1;
                       
                       Y=D;
                      
                   end
                   else
                   begin
                      N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=0;S_R=1;E_G=1;E_Y=0;E_R=0;W_G=0;W_Y=0;W_R=1;
                      
                      P1_G=1;P1_Y=0;P1_R=0;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=0;P3_R=1;P4_G=0;P4_Y=0;P4_R=1;
                      P5_G=1;P5_Y=0;P5_R=0;P6_G=1;P6_Y=0;P6_R=0;P7_G=1;P7_Y=0;P7_R=0;P8_G=0;P8_Y=0;P8_R=1;
                       
                      Y=C;
                   end
                D:   if(w)
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=1;E_R=0;W_G=0;W_Y=0;W_R=1;
                       
                       P1_G=0;P1_Y=1;P1_R=0;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=0;P3_R=1;P4_G=0;P4_Y=0;P4_R=1;
                       P5_G=0;P5_Y=1;P5_R=0;P6_G=0;P6_Y=1;P6_R=0;P7_G=0;P7_Y=1;P7_R=0;P8_G=0;P8_Y=0;P8_R=1;
                       
                       Y=D;
                      
                   end
                   else
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=1;E_R=0;W_G=0;W_Y=0;W_R=1;
                      
                       P1_G=0;P1_Y=1;P1_R=0;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=0;P3_R=1;P4_G=0;P4_Y=0;P4_R=1;
                       P5_G=0;P5_Y=1;P5_R=0;P6_G=0;P6_Y=1;P6_R=0;P7_G=0;P7_Y=1;P7_R=0;P8_G=0;P8_Y=0;P8_R=1;
                       
                       Y=E;
                   end
                E:   if(w)
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=1;S_Y=0;S_R=0;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=0;W_R=1;
                       
                       P1_G=0;P1_Y=0;P1_R=1;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=0;P3_R=1;P4_G=1;P4_Y=0;P4_R=0;
                       P5_G=1;P5_Y=0;P5_R=0;P6_G=0;P6_Y=0;P6_R=1;P7_G=1;P7_Y=0;P7_R=0;P8_G=1;P8_Y=0;P8_R=0;
                       
                       Y=F;
                      
                   end
                   else
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=1;S_Y=0;S_R=0;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=0;W_R=1;
                       
                       P1_G=0;P1_Y=0;P1_R=1;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=0;P3_R=1;P4_G=1;P4_Y=0;P4_R=0;
                       P5_G=1;P5_Y=0;P5_R=0;P6_G=0;P6_Y=0;P6_R=1;P7_G=1;P7_Y=0;P7_R=0;P8_G=1;P8_Y=0;P8_R=0;
                       
                       Y=E;
                   end
                F:   if(w)
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=1;S_R=0;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=0;W_R=1;
                       
                       P1_G=0;P1_Y=0;P1_R=1;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=0;P3_R=1;P4_G=0;P4_Y=1;P4_R=0;
                       P5_G=0;P5_Y=1;P5_R=0;P6_G=0;P6_Y=0;P6_R=1;P7_G=0;P7_Y=1;P7_R=0;P8_G=0;P8_Y=1;P8_R=0;
                       
                       Y=F;
                      
                   end
                   else
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=1;S_R=0;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=0;W_R=1;
                       
                       P1_G=0;P1_Y=0;P1_R=1;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=0;P3_R=1;P4_G=0;P4_Y=1;P4_R=0;
                       P5_G=0;P5_Y=1;P5_R=0;P6_G=0;P6_Y=0;P6_R=1;P7_G=0;P7_Y=1;P7_R=0;P8_G=0;P8_Y=1;P8_R=0;
                       
                       Y=G;
                   end
               G:   if(w)
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=0;E_R=1;W_G=1;W_Y=0;W_R=0;
                       
                       P1_G=1;P1_Y=0;P1_R=0;P2_G=0;P2_Y=0;P2_R=1;P3_G=1;P3_Y=0;P3_R=0;P4_G=1;P4_Y=0;P4_R=0;
                       P5_G=0;P5_Y=0;P5_R=1;P6_G=0;P6_Y=0;P6_R=1;P7_G=1;P7_Y=0;P7_R=0;P8_G=0;P8_Y=0;P8_R=1;
                       
                       Y=H;
                      
                   end
                   else
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=0;E_R=1;W_G=1;W_Y=0;W_R=0;
                      
                       
                       P1_G=1;P1_Y=0;P1_R=0;P2_G=0;P2_Y=0;P2_R=1;P3_G=1;P3_Y=0;P3_R=0;P4_G=1;P4_Y=0;P4_R=0;
                       P5_G=0;P5_Y=0;P5_R=1;P6_G=0;P6_Y=0;P6_R=1;P7_G=1;P7_Y=0;P7_R=0;P8_G=0;P8_Y=0;P8_R=1;
                       
                       Y=G;
                   end
               H:   if(w)
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=1;W_R=0;
                       
                       P1_G=0;P1_Y=1;P1_R=0;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=1;P3_R=0;P4_G=0;P4_Y=1;P4_R=0;
                       P5_G=0;P5_Y=0;P5_R=1;P6_G=0;P6_Y=0;P6_R=1;P7_G=0;P7_Y=1;P7_R=0;P8_G=0;P8_Y=0;P8_R=1;
                       
                       Y=H;
                      
                   end
                   else
                   begin
                       N_G=0;N_Y=0;N_R=1;S_G=0;S_Y=0;S_R=1;E_G=0;E_Y=0;E_R=1;W_G=0;W_Y=1;W_R=0;
                       
                       P1_G=0;P1_Y=1;P1_R=0;P2_G=0;P2_Y=0;P2_R=1;P3_G=0;P3_Y=1;P3_R=0;P4_G=0;P4_Y=1;P4_R=0;
                       P5_G=0;P5_Y=0;P5_R=1;P6_G=0;P6_Y=0;P6_R=1;P7_G=0;P7_Y=1;P7_R=0;P8_G=0;P8_Y=0;P8_R=1;
                       
                       Y=A;
                   end
              endcase

          end
          
          always @(posedge Reset or posedge Clk)
          begin
              
              if(Reset==1) y<=A;
              else y<=Y;

          end
          

endmodule

�  ��� ��:����(����MetalMax)
�� ��:TC800
ԭ��:void MyBox(int x0,int y0,int x1,int y1,int mode,int fill,int type);
����:�������־��ο�
˵��:mode��10��,0-8Ϊ͹���α߿�,9Ϊ���߿�,10Ϊ��Ӱ��
     fillΪ1ʱ��Ĭ�ϵ�ɫ���,Ϊ2ʱ�԰�ɫ���(�������),Ϊ0ʱ�����
     typeΪ1ʱ�򻺳�����ͼ,Ϊ0x41ʱ����Ļ��ͼ
ԭ��:void DrawFrame(int x0,int y0,int x1,int y1,long Caption,char Focus,int Font,char fill,int type);
����:�������ֿ��
˵��:Caption:�����ִ�,���޳���
     Focus:Ϊ1ʱ�ִ��������߿�
     Font:Ϊ�ϳɲ���,bit0-7��ֵΪ������ɫֵ,bit8-15��ֵΪ1ʱ����Ϊ������,Font��ʹ����ʽΪ:Font=15|1<<8(��ɫ15,������)
     fill:Ϊ1ʱ�ؼ���Ĭ�ϵ�ɫ���
ԭ��:void DrawCommand(int x0,int y0,int x1,int y1,long Caption,char BorderStyle,char Value,int F_F,int type);
����:�������ְ�ť
˵��:Caption:��ť�ϵ�����,���ж���
     BorderStyle:��ť��ʽ����4��,ֵ1-4,Ч������ͬ
     Value:Ϊ1ʱ���İ�ť�Ǳ����µ���ʽ
     F_F:��Focus��Font�ĺϳɲ���,��ʹ����ʽΪ:F_F=Focus|Font<<8.Focus:Ϊ1���ִ��ϻ����߿�.Font:Ҳ�ǺϳɵĲ���,bit0-bit7��ֵΪ������ɫ,bit8-bit15��ֵΪ1������
ԭ��:void Tool(int mode,int a,int b,int c,int d,int e);
����:�������ִ������Ͻǵİ�ť
˵��:Caption:����ı�������
ԭ��:void DrawForm(int x0,int y0,int x1,int y1,long Caption,long Print,int B_BD,long msg,int type);
����:�������ִ���
˵��:Caption:����ı�������
     Print:��������ʾ���ִ�,�Զ�����,���з�Ҳ�ܻ���
     B_BD:��Button��ButtonDown���������ϲ�����,��ʹ����ʽ:B_BD=Button|ButtonDown<<8.Button:�Ǵ������Ͻǵİ�ť���������,��6��:0:�ް�ť,1:��,2:��,��,3:��С��,���,��,4:��,��С��,���,��,5:��С��,��ԭ,��,6:��,��С��,��ԭ,��.ButtonDown:�ǰ�ť�ı�����״̬,��Чֵ��1��4��Ӧ���ҵ�����ĸ���ť,Ϊ0ʱ�ޱ����°�ť,Ϊ2ʱ��2����ť�ڻ���ʱ�Ǳ����µ�����,�Դ�����
     msg:��Font,Icon��Focus���������ϲ�����,��ʹ����ʽ:msg=Font|Icon<<8|Focus<<16.Font:����ģʽ,Ϊ1ʱ�ô�����(16*16)��ʾ.Icon:��������ͼ�����,���������Ͻ���ʾͼ��,����������Ч��(δ���),Ϊ1ʱֻ�տ���ʾͼ���λ��,����ڻ��괰����Լ��ٻ���ͼ��.Focus:����,��Ч,������256ɫģʽ��ʹ��,Ϊ1ʱ����������ɫ��(�����),Ϊ0ʱ�ǻ�ɫ��(�ǻ����)
ԭ��:void DrawLabel(int x0,int y0,int x1,int y1,long Caption,int F_F,int A_A,int B_W,int type);
����:�������ֱ�ǩ
˵��:Caption:��ǩ�ִ�,���̲���
     F_F:��Focus��Font�ĺϳɲ���,��ʹ����ʽΪ:F_F=Focus|Font<<8.Focus:Ϊ1���ִ��ϻ����߿�,Font:Ҳ�ǺϳɵĲ���,bit0-bit7��ֵΪ������ɫ,bit8-bit15��ֵΪ1������
     A_A:��Alignment��AutoSize�ĺϳɲ���,��ʹ����ʽΪ:A_A=Alignment|AutoSize<<8.Alignment:Ϊ�ִ����뷽ʽ,0�����,Ϊ1�Ҷ���,Ϊ2���ж���,AutoSize:Ϊ0�ִ��������ֽ�ȥ(�˹���δȫ�����),Ϊ1�����ִ�����,��ǩ�Զ�������С
     B_W:��BorderStyle��WordWrap�ĺϳɲ���,��ʹ����ʽΪ:B_W=BorderStyle|WordWrap<<8.BorderStyle:Ϊ�߿���,Ϊ0�ޱ߿�,Ϊ1���߱߿�,ע��:��Ϊ�˷ḻ����������,�صظ�������������ı߿���1-10�Ź�ʮ�ֱ߿�,ʹ���Label()����ͬʱ������Ϊ��Ϣ����ʾ,��ʾ��Ϣ��!WordWrap:δ���,�Զ���������,Ϊ0������,Ϊ1�Զ�����
ԭ��:void DrawScrollBar(int x0,int y0,int x1,int y1,long Max_Min,int Value,int Size,int B_M,int type);
����:�������ֹ�����
˵��:Max_Min:Max��Min�ĺϳɲ���,�����鴦�ڹ��������,��Сλ��ʱ��������ֵ.ʹ����ʽ:Max_Min=Max|Min<<16
     Value����:��ʾ�������λ���ڹ������д�����ֵ
     Size����:��ʾ����ĳ����ڹ������д�����ֵ,Value��Size��ֵ����Max��Min֮��
     B_M:Button��mode�ĺϳɲ���.ʹ����ʽ:B_M=Button|mode<<8.ButtonΪ0�����ް�ť,����0���˰�ť������ʾ.ButtonΪ1���˶���ť͹��,Ϊ2��˰�ť������,Ϊ3�Ҷ˰�ť������.modeΪ1ˮƽ������,Ϊ2��ֱ������
����:
#include "Visual.y"
void main()
{SetGraphMode(4);
 SetBgColor(3);ClearScreen();
 DrawForm(1,0,159,79,"VisualLavaX","",3,0,1);
 DrawFrame(4,17,102,76,"��Ϣ",0,15,1,1);
 DrawCommand(110,24,150,44,"ȷ��",2,0,1|15<<8,1);
 DrawCommand(110,52,150,72,"�˳�",2,0,0|15<<8,1);
 Refresh();getchar();
 SetBgColor(3);ClearScreen();
 DrawForm(1,0,159,79,"�༭","",3,0,1);
 MyBox(4,18,144,76,8,2,1);
 DrawScrollBar(147,18,156,76,100,0,20,1|2<<8,2);
 Refresh();getchar();
 DrawLabel(48,28,112,52,"�༭���",0|15<<8,2|1<<8,7,1);
 Refresh();getchar();
}   > � O  89   �  58	 O  89,  	 �  58 @#89N   	     �;�   )89k   	    �;�   89�   	    �?> � O  89�   �  58	 O  89�  	 �  58 O  89�   �  58 O  89�   �  58 	    @&�?>+ �d  �            MyBox                389&  �   &58 �   &58 �   &58	  389\ 	 � 	  &58 �  	 &58	 � 	  &58" �  58# � 58$ � 	58% � 58& � 58) �  58* � 58 L 89� " � 	58$ �  58) � 58* �  58;T  L 89 " � 58# � 	58$ � 58% �  58) � 58* �  58;T  L 89T " � 58# � 	58$ � 58% �  58) � 58* �  58� L 89e  � 89�  	    @#=    L  L (89 " �" � 	   F  @#) $=�   	  F 	  @#) $=�  $ �$ � 	    @#* $=�       @#* $=�  ;u  L  L (89U " �" � 	   F  @#) $=�   	  F 	  @#) $=�  # �# � E 	 E  E  F  @#) $=�   E 	 E  F 	 E  @#) $=�  % �% �     @#* $=�   	    @#* $=�  $ �$ � E  F  F  F  @#* $=�   F 	 E  F  F  @#* $=�  ;u  L 89� % � 	     =    E 	 E  F  F   =�  ;u  L 89� % � 	     =   $ � E 	 E  F  F   =   ;u  L  L $89p # �# � 	   F  @#$=�   	  F 	  @#$=�  % �% �     @#$=�   	    @#$=�  " �" � E 	 E  E  F  @#) $=�   E 	 E  F 	 E  @#) $=�  $ �$ � F 	 E  F  F  @#* $=�   F 	 E  F 	 E  @# $=�   E  F  F  F  @#* $=�   E  F  E  F  @# $=�  ;u  L	 89) % �' �  58'   "489� ' I 89� '  !	 '  !	  =�  '  ! '  !  =�  ' � 8;� ' �  58'  	 "489I ' I 89>  ' 	 ! ' 	 ! =�   ' 	 ! ' 	 ! =�  ' � 8;� # �' �  58'   "489� ' I )89� '  !	 '  !	  @#=�  '  ! '  !  @#=�  ' � 8;V ' �  58'  	 "489% ' I )89  ' 	 ! ' 	 ! @#=�   ' 	 ! ' 	 ! @#=�  ' � 8;� ;u  L
 89u " � E 	 E     @#=   $ � 	  F  F   =   ?>/ 	�d  v    	       DrawFrame          , �  �#58  389�  �   &58 �   &58 �   &58	  389� 	 � 	  &58 �  	 &58	 � 	  &58) � % 58+ � 58 K L 89*	 + � 58) � ) �$58- �  �58! L 89[	 � 	   % @#=    	 + !E   
 % =�  � + !	 E  + !+ - *!	 E + G !% @#=    �, � + !	 E  ) �#$� L 89
  + !F 	  + !F - + *!E 	 + G !E 	 % =�  ?>6 	�d  
    	       DrawCommand        4 � ! 585 � ! K 580 � 5 �#58  389v
  �   &58 �   &58 �   &58	  389�
 	 � 	  &58 �  	 &58	 � 	  &582 �  58 L 89�
 2 � 58) � % 58/ � 585 K L 89  / � 58) � ) �$581 �  �58+ �    "H !1 / *H "58- � 	  	 "H !/ "58 Q  89X  � 58 	    G F  !% =�  �0 �+ 2 !- 2 ! ) �4 L 89�  E 	 E  F  F 	 % =�  ?> �d  �           Tool                �  58 L 89� 	 L 89/ 	�    !F   =�   � E  E   ! E  @#=�  ;} 	 L 89} 	�     !F  =�   � E  E  E   ! @#=�  ;�  L 89� 	 O 	 N	 (89� ? I L  89�  � 58   E  E
   =�  	  E  ! E  !  =� ;�  L 89� �	 L 89q  E  E  E  E  =�   E  E  E  E  =�    E  E  E  =�  ;� 	 L 89�   E  E  E  =�   E  E  E  E  =�   E  E  E  E  =�  ;� 	 L 89C  E   E  E  =�   E  E  E  E  =�   E  E  E  E  =�  ;� 	 L 89�   E   E  =�   E  E  E  E  =�   E   E  E  =�  ;� 	 L 89    E  E  =�   E   E  E  =�    E  E   =�   E  E  E   =�  ;� 	 L 89h    E  E   =    E  E  E  E  =�  ;� 	 L 89�  E   E  E   =     E  E  E   =   � E  E  E  E  =�  ;� 	 L 89"  E  E  E  E  =�   E  E  E  E  =�  ;� 	 L	 89�  E   E   =�    E  E  E  =�   E  E  E  E  =    E  E  E  E  =�   E  E  E  E  =�  ?>I	�d  �    	       DrawForm             389�  �   &58 �   &58 �   &58	  3892 	 � 	  &58 �  	 &58	 � 	  &58) �  58* �  K 58+ � ! 58, � ! K �#58- � ! K �#58:� % 58D� 58+ L 89� D� 58:� :�$58 89� <�  �58;� <�  58E�   "F
 D+58G�  	 "F DG "F F F DG E +581�* 89! * 1586� 7� 8� 9�  55558) L 89T 6� 58;+ ) L 89u 6� 587� 	58;+ ) L 89� 6� 587� 588� 58;+ ) L 89� 6� 587� 588� 589� 	58;+ ) L 89� 6� 587� 588� 58;+ ) L 89+ 6� 587� 588� 589� 	58 	   % =�  B�  58>� 58>Q 89� >� E 	 E  F B  "*H� "	 E D*!E % =   B� B>H "!58>� 8;T � �, 89�  E DG !	 E  :E �;  E 	 E  :E ���F�  58 89R @�  58@<489R .   �>�  58. @!>!�.L
 89� .  @!>�>� >E 58@� @>!58; ;� .L /L
 '89� .  @!>�>� >E 58@� @>!58; ;� >E289� .  @!E�@� @E!58; >� 8;?  E 	 E D*!E E E FDG E *!. :�F� 8FG289N ;R ;! 689y 6 F 	 D!F 2% =� 789� 7 F 	 D!F 3% =� 889� 8 F* 	 D!F 4% =� 989� 9 F6 	 D!F 5% =� ?>? 	�d  �    	       DrawLabel          7 �  588 �  K 580 � 8 �#58: �  58; �  K 58< � ! 58= � ! K 58  389{  �   &58 �   &58 �   &58	  389� 	 � 	  &58 �  	 &58	 � 	  &58) � % 58/ � 588 L 89� / � 58) � ) �$581 �  �58= L  89  : N 89 : �  58: L  89+ + �  E 58;z : L 89O + �  1 / *"F 58;z : L 89z + �    "H !1 / *H "581   "/ +3890 ; L  89� + �  E 58;0 ; L 890 : L  89�  �  E 1 / *!E 58;0 : L 89  �  F 1 / *"F 58;0 : L 890  � + F 58 � + 1 / *!E 58- � 	  	 "H !/ "E 58� 	   % @#=   < N
 89{ < � 58< 89�  	   <  % =�  �+ - + / 1 *!- / G !% @#=    �0 �+ -  ) �#$�7 L 89 + F - F + 1 / *!E - / G !E 	 % =�  ;: = L 89: : N 89? : �  58: L  89[ + �  E 58;� : L 89 + �  1 / *"F 58;� : L 89� + �    "H !1 / *H "581   "/ +389` ; L  89� + �  E 58;` ; L 89` : L  89  �  E 1 / *!E 58;` : L 893  �  F 1 / *"F 58;` : L 89`  � + F 58 � + 1 / *!E 58- � 	  	 "H !/ "E 58� 	   % @#=   < P 89�  	    % =�  �+ - + / 1 *!- / G !% @#=    �0 �+ -  ) �#$�7 L 89: + F - F + 1 / *!E - / G !E 	 % =�  ?>M 	�d  ;    	       DrawScrollBar      ) �  ��  #58+ �  K 58- � ! �#58/ � ! K 581 � ) + "583 �  + "585 �  58I � 3 1 Hd +58K � 5 1 Hd +587 � 9 � 558; � = �  558- L  89� C �  58;2 - L 89 7 � 58; � 58;2 - L 892 9 � 58= � 58  389h  �   &58 �   &58 �   &58	  389� 	 � 	  &58 �  	 &58	 � 	  &58�� 	   % @#=    	    % @#$=   / L 89� - 89� C �  	 "58E �   "C *"I *Hd E 58G �   "C *"K *Hd 58G E !  "C G "289j G �   "C G "F E "58E O  89~ E �  58C 89   	  C ! 7 % =�   C H !F ; !	 C H !F ; ! % =�  C "	   9 % =�   C "C H !F = !	 C H !F = ! % =� G O 89[ � C !E !	  C !E !G ! % =   ;�  C !E !	  C !E !G ! % =�  ;9  / L 899  - 89� C �   "58E �  	 "C *"I *Hd E 58G �  	 "C *"K *Hd 58G E ! 	 "C G "289 G �  	 "C G "F E "58E O  891 E �  58C 89�  	  	 C !7 % =�   C H !F ; !	 C H !F ; ! % =�   C "  9 % =�   C H !F = ! C "C H !F = ! % =� G O 89  � 	 C !E ! 	 C !E !G !% =   ;9   	 C !E ! 	 C !E !G !% =�  ?
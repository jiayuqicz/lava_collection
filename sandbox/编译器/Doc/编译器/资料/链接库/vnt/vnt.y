�  �����:TC800
ԭ��:void CloseVnt();
����:�رյ�ǰ���ڲ��ŵ�vnt�ļ���
˵��:�ڲ��Ž�����Ҫ�øú����ر�vnt�ļ���
ԭ��:void RestartVnt();
����:������
˵��:�ӱ�ǵ�a��ʼ���š����RepeatVnt����ʹ�ã�����ʵ�ָ������ܡ�
ԭ��:void RepeatVnt();
����:������
˵��:��һ�ε��øú���ʱ����¼��ǵ�a���ڶ��ε��øú���ʱ����¼��ǵ�b�������ε��øú�����������б�ǵ㡣
ԭ��:void SetVntStart(long start);
����:���ò�����㣬���Ӹ���㲥��vnt������
˵��:ͨ���ú�������ʵ�ֿ�������˹��ܡ�
ԭ��:long GetVntCurrent();
����:��ȡ��ǰ���Ž��ȡ�
ԭ��:long GetVntEnd();
����:��ȡ��ǰ���Ž�����
ԭ��:void GetVntTime(char &str[]);
����:��ȡ��ǰ����ʱ�䡣
˵��:���������str�С�
ԭ��:int PlayVnt(char &filename[]);
����:����vnt�ļ���
˵��:�ļ��򿪴��󷵻�-1���ļ���ʽ���󷵻�-2��������ʼ����vnt�ļ���
����:
#include <vnt.y>

void main()
{
 PlayVnt("/˫������/a.vnt");
 for(;;)
 {
  if(System.SndIfEnd())break;
  //������������
 }
 CloseVnt();
}  �>  �d                CloseVnt           �8�8  �       	       5555558?�>  �   J E  �8    "J � �8?�>  �d                RestartVnt           	   558�8=:  ?�>  �d                RepeatVnt           )89�    	 58;�   )89�  	  389�    	 58;�       558?�>	 �d               SetVntStart        �8  	   558=:  ?�>  �d               GetVntCurrent      	   �K !58	 ? ?�>  �d               GetVntEnd           ? ?�> �d               GetVntTime          � 	 J H} 58	 �  H< 58
 �  I< 58	 O
 89� 
 O
 89w  0%d:0%d 	 
 �;�  0%d:%d 	 
 �;� 
 O
 89�  %d:0%d 	 
 �;�  %d:%d 	 
 �?�> �d              PlayVnt                   	       5555558    r �5)89	 ��?	 �  58	   �8	 �  089=   �    58��?   �8    �K 58�8=:   ?
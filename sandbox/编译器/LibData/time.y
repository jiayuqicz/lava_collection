�  �ԭ��:void gettime(char &str[]);
����:��ȡϵͳʱ�䡣
˵��:ʱ�䱣�����ַ���str�У���ʽΪhh:mm:ss��

ԭ��:void getdate(char &str[]);
����:��ȡϵͳ���ڡ�
˵��:���ڱ������ַ���str�У���ʽΪyy:mm:dd��

ԭ��:long difftime(struct TIME &t1,struct TIME &t2);
����:��������ʱ��֮���ʱ��

����:
#include <time.y>
struct TIME
{int year;
 char month;
 char day;
 char hour;
 char minute;
 char second;
 char week;
};
void main()
{struct TIME t1,t2;
 char str[30];
 int d;
 SetScreen(1);
 getdate(str);
 printf("���ڣ�%s\n",str);
 gettime(str);
 printf("ʱ�䣺%s\n",str);
 GetTime(t1);
 Delay(5*1000);
 GetTime(t2);
 d=difftime(t1,t2);
 printf("ʱ���Ϊ��%d\n",d);
 getchar();
}   > �	 O
 89!   0%d 	 �;.   %d 	 �?> �d  /            gettime            	 �  =     =     =    %s:%s:%s    �?> �d  o            getdate            	 � %d��%d��%d�� 	   �?> �d �            difftime            !6	 !6"�G<  !6	 !6"�!G<  !6	 !6"�!? ?
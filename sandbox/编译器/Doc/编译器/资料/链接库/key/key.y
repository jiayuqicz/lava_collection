�  �ԭ��:char getkey();
����:�ȴ��û����°��������ؼ�ֵ��
˵��:�ú���֧�ֹ��������ʾ������������Ӧ��

ԭ��:void setcursor(char width, char height, char ison);
����:���ù��״̬��
˵��:width:�����ȣ�height:���߶ȣ�ison:�Ƿ�����꣬��0������0��������

ԭ��:void setseat(char x, char y);
����:���ù����ʾλ�á�
˵��:x:���x���꣬y:���y���ꡣ

ԭ��:void setspeed(long speed);
����:���ù�������ٶȡ�
˵��:speedֵ��Լ500���ҡ�
����:

ԭ��:void setdelay(int delay);
����:����������Ӧ��ʱ�䡣
˵��:����һ����ʱgetkey���������Ϸ��ظü�ֵ�������ס�ü����ţ����ͣ��delayʱ�䣬�����ʱ�ü�������ס����������Ӧ�ü���
ԭ��:void clearkey();
����:ֹͣ������Ӧ��ǰ����
˵��:�ڵ������������󣬷��ص������ú�������ʱҪ�øú���ֹͣ��Ӧ��һ�����������İ���������ᱻgetkey�������յ��������ؼ�ֵ�������������������
����:
#include <stdio.y>
#include <key.y>
void main()
{
 char x,y;
 char key;
 char type, tmp;
 char numkey[10];
 int i, len;
 char s[256];
 setcursor(8, 1, 1);
 setspeed(500);
 setdelay(60);
 clearkey();
 for (key = 0; key != 13;)
 {
  SetScreen(0);
  printf("%s", s);
  x = ((len = strlen(s)) % 20) << 3;
  y= (len / 20) << 4;
  if (y > 64)
  {
   y = 64;
   if (!x) printf(" ");
  }
  setseat(x, y + 14);//���ù��
  key = getkey();//��������
  if (isprint(key))
  {
   if ((type&1)== 0)//Ӣ��
   {
    if (key == '0')
    {
     tmp = Getsign();
     clearkey();
     if (!tmp) continue;
    }//ע�����������clearkey��������Ϊ���������Getsign��������ʱ�������������а���ֵ���ᱻgetkey������ȡ�������������������һ������������Getsign�����������ESC�����أ���ʱ�������clearkey��������getkey�����ͽ��յ�ESC�����ͻ�ִ�б������е�ESC�������ˡ���
    else if (type&2)
    {
     tmp = toupper(key);
    }
    else
    {
     tmp = key;
    }
   }
   else if (strchr(numkey, key))
   {
    tmp = strchr(numkey, key) - numkey + '1';//����
   }
   else
   {
    tmp = key;//С��ĸ,����
   }
   *(s + i++) = tmp;
   *(s + i) = 0;
  }
  else if (key == 0x1d || key == 0x17)
  {
   if (i) *(s + (--i)) = 0;
  }
  else if (key == 0x14 || key == 0x1b)
  {
   i = 0;
   *s = 0;
  }
  else if (key == 0x1a) type = type ^ 1;
  else if (key == 0x12) type = type ^ 2;
 }
}  �>  �d               getkey              � 	 �  558 89V   )89>        !  !� �  /89V   �  58 �  58  ��58�8  / )(89�     58;    /89�  	 � 	 2 (89�    58;�  � � 58;�     58;�  ;   ? ?�> �d               setcursor             58  	 58   58?�> �d               setseat                58  	 58?�>	 �d               setspeed              58?�>	 �d               setdelay           	   58?�>  �d                clearkey             ��58?
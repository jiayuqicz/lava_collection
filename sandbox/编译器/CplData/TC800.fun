�zUQ �&� ��� :�U �~�B�%�� � �� � � ~� � n �`oO9 �2z G _ � � L#8B-` /;GS_kw������ i  � Ur� ���# . ���putchar c �getchar c� printf c � strcpy c �strlen c�SetScreen c �UpdateLCD c �Delay c �WriteBlock c �Refresh c � TextOut c �Block c �Rectangle c �exit c �ClearScreen c � abs c�rand c� srand c �Locate c �Inkey c� Point c �GetPoint c�Line c �Box c �Circle c �Ellipse c �Beep c � isalnum c�isalpha c�iscntrl c�isdigit c�isgraph c�islower c�isprint c�ispunct c�isspace c�isupper c�isxdigit c�strcat c �strchr c�strcmp c�strstr c�tolower c�toupper c�memset c �memcpy c �fopen c�fclose c �fread c�fwrite c�fseek c�ftell c�feof c�rewind c �getc c�putc c�sprintf c � MakeDir c�DeleteFile c�Getms c� CheckKey c�memmove c �Crc16 c�Secret c �ChDir c�FileList c�GetTime c �SetTime c �GetWord c�XDraw c �ReleaseKey c �GetBlock c �Sin c�Cos c�FillArea c �SetGraphMode c�SetBgColor c �SetFgColor c �Fade c �FindFile c�GetFileNum c�� ԭ��:void putchar(char ch);
����:���ַ�ch�������Ļ
����:
void main()
{SetScreen(0);
 putchar('g');
 putchar('g');
 putchar('v');
 getchar();
} � ԭ��:char getchar();
����:����
˵��:�Ӽ����϶�ȡһ����,�����ظü��ļ�ֵ
����:
void main()
{char c;
 SetScreen(0);printf("Press key...");
 while((c=getchar())!='q')
  {SetScreen(0);
   printf("key: %c\nvalue: %d",c,c);
  }
} sԭ��:void printf(int format,...);
����:���ַ����������Ļ
˵��:formatָ�������ʽ�������Ҫ����ı���
     Ŀǰprintf֧�����¸�ʽ:
     %c �����ַ�
     %d ʮ��������
     %s �ַ���
     %% ����ٷֺ�%
����:
char s[]="Hello";
void main()
{SetScreen(0);
 printf("%s��%d���ַ�\n",s,strlen(s));
 printf("����ĸ��%c\n",s[0]);
 printf("100%%\n");
 getchar();
} Gԭ��:void strcpy(int str1,int str2);
����:��str2��ָ��NULL�������ַ������Ƶ�str1��ָ��������
˵��:str2��str1��ָ�ڴ����򲻿����ص���str1�������㹻�Ŀռ�������str2�ַ���.
     ����ָ��str1��ָ��
����:
char s[]="Golden Global View";
void main()
{char d[20];
 SetScreen(0);
 strcpy(d,s);
 printf("%s",d);
 getchar();
} � ԭ��:int strlen(int str);
����:�����ַ���str�ĳ���
˵��:����str�ĳ���,������������NULL
����:
char s[]="Golden Global View";
void main()
{SetScreen(0);
 printf("%s has %d chars",s,strlen(s));
 getchar();
} ԭ��:void SetScreen(char mode);
����:���������������С
˵��:mode=0:������
     mode=1:С����
����:
void main()
{SetScreen(1);
 printf("������С����\n");
 printf("�����������\n");
 getchar();
 SetScreen(0);
 printf("�����Ǵ�����\n"); 
 getchar();
} 	ԭ��:void UpdateLCD(char mode);
����:��ָ��ģʽˢ����Ļ
˵��:mode��ÿһ��bit,�Ӹߵ��Ϳ�����Ļ��ÿһ��,0��ʾ���и���,1��ʾ���в�����
����:
void main()
{SetScreen(1);
 strcpy(_TEXT,"I am Lee.");//����_TEXT��ʾ��Ļ�ı��������ĵ�ַ
 UpdateLCD(0);
 getchar();
} ԭ��:void Delay(int ms);
����:��ʱ
˵��:��ʱms������,ms���ȡֵ32767(��:32.7��)
����:
char s[]="Golden Global View";
void main()
{int p;
 char c;
 SetScreen(0);p=s;
 for(;;)
  {c=*p++;
   if(c)putchar(c);
   else break;
   if(c!=' ')Delay(200);
  }
 getchar();
} �ԭ��:void WriteBlock(int x,int y,int width,int height,int type,int data);
����:��λͼ���Ƶ���Ļ������
˵��:����Ļ��(x,y)���괦��ͼ,ͼ�Ŀ�Ϊwidth,��Ϊheight,ͼ�ε����ݵ�ַΪdata
     type��bit6Ϊ1ʱֱ������Ļ�ϻ�ͼ
     bit5Ϊ1ʱ����ͼ�����ҷ�ת(Ҫ��ͼ�ο��Ⱥ�x���궼������8��������)
     bit3Ϊ1ʱͼ�η���
     bit2-0: 1:copy 2:not 3:or 4:and 5:xor
����:
char fa[]={
0xff,0xe0,0x80,0x20,0xbb,0xa0,0x8a,0x20,
0x91,0x20,0xa0,0xa0,0xbb,0xa0,0x8a,0xa0,
0xba,0xa0,0xa0,0x20,0xbb,0xa0,0x8a,0xa0,
0x89,0x20,0xba,0xa0,0x80,0x20,0xff,0xe0};
void main()
{ClearScreen();
 WriteBlock(60,30,11,16,1,fa);
 WriteBlock(80,30,11,16,2,fa);
 WriteBlock(96,30,16,16,0x21,fa);
 Refresh();
 getchar();
} ԭ��:void Refresh();
����:�ѻ������ڵ�ͼ��ˢ�µ���Ļ����ʾ
˵��:ͨ��ʹ�û�������ͼ,����ʵ������˸��ͼ
����:
void main()
{ClearScreen();
 Block(10,20,100,60,1);//�ڻ�������ͼ����Ļû����ʾ
 getchar();
 Refresh();//�ѻ�����ͼ��ˢ�µ���Ļ�����ڿ��Կ�����
 getchar();
} �ԭ��:void TextOut(int x,int y,int string,int type);
����:���ַ������Ƶ���Ļ������
˵��:����Ļ��(x,y)���괦�����ַ���,stringΪ�ַ����ĵ�ַ
     type��bit7=1:������,bit7=0:С����
     bit6Ϊ1ʱֱ������Ļ�ϻ�ͼ
     bit5Ϊ1ʱ����ͼ�����ҷ�ת(Ҫ��ͼ�ο��Ⱥ�x���궼������8��������)
     bit3Ϊ1ʱͼ�η���
     bit2-0:1:copy 2:not 3:or 4:and 5:xor
����:
void main()
{ClearScreen();
 TextOut(2,0,"������",0x81);
 TextOut(2,16,"С����",1);
 TextOut(2,32,"����",9);
 Refresh();
 getchar();
} lԭ��:void Block(int x0,int y0,int x1,int y1,int type);
����:����Ļ��������һʵ�ľ���
˵��:(x0,y0)ָ�����Ͻ�����,(x1,y1)ָ�����½�����
     type������ͼ��ʽ,��ֵ��������:
     0:�����ʽ
     1:������ʽ
     2:���෽ʽ
����:
void main()
{ClearScreen();
 Block(10,20,100,60,1);
 Refresh();
 getchar();
 Block(30,10,80,70,2);
 Refresh();
 getchar();
} [ԭ��:void Rectangle(int x0,int y0,int x1,int y1,int type);
����:����Ļ��������һ���ľ���
˵��:(x0,y0)ָ�����Ͻ�����,(x1,y1)ָ�����½�����.
     type������ͼ��ʽ,��ֵ��������:
     0:�����ʽ
     1:������ʽ
     2:���෽ʽ
����:
void main()
{ClearScreen();
 Block(10,20,100,60,1);
 Rectangle(30,10,80,70,2);
 Refresh();
 getchar();
} ԭ��:void exit(int exitcode);
����:��������
˵��:Ŀǰ����º����˳���exitcode
����:
void main()
{int i;
 SetScreen(0);
 for(i=0;i<10;i++)
  {if(i==5)exit(0);
   else
    {SetScreen(0);
     printf("%d",i);
     getchar();
    }
  }
 getchar();
} � ԭ��:void ClearScreen();
����:����Ļ�������ڵ�ͼ�����
����:
void main()
{ClearScreen();
 Block(10,20,100,60,1);
 Refresh();
 getchar();
 ClearScreen();
 Refresh();
 getchar();
} ԭ��:long abs(long x);
����:��x�ľ���ֵ
˵��:����|x|,��xΪ����ʱ����-x,���򷵻�x
����:
void main()
{int x;
 SetScreen(0);
 x=-5;
 printf("|%d|=%d\n",x,abs(x));
 x=0;
 printf("|%d|=%d\n",x,abs(x));
 x=5;
 printf("|%d|=%d\n",x,abs(x));
 getchar();
} � ԭ��:int rand();
����:ȡ��һ�������ֵ
˵��:����ֵ�ķ�Χ��0~32767
����:
void main()
{SetScreen(0);
 printf("%d\n",rand());
 printf("%d\n",rand());
 printf("%d\n",rand());
 getchar();
} 'ԭ��:void srand(long x);
����:��x��ʼ�������������
����:
void main()
{int x;
 SetScreen(0);
 srand(0);
 printf("%d %d %d\n",rand(),rand(),rand());
 x=Getms();srand(x);
 printf("%d %d %d\n",rand(),rand(),rand());
 srand(x);
 printf("%d %d %d\n",rand(),rand(),rand()); 
 getchar();
} � ԭ��:void Locate(int y,int x);
����:��궨λ
˵��:���ַ���ʾ�Ĺ�궨λ��y��x��(x,y����0��ʼ����)
����:
void main()
{SetScreen(0);
 Locate(2,8);
 printf("Good!");
 getchar();
} *ԭ��:char Inkey();
����:��ⰴ��
˵��:�������Ƿ��м�����.
     ����м�����,�򷵻ض�Ӧ��ֵ,���򷵻���.
     Inkey���ȴ����̰���.�������ް���������������.
����:
void main()
{long i;
 i=0;
 SetScreen(0);
 while(!Inkey()){SetScreen(0);printf("%d",i++);}
 printf("\nEnd.");
 getchar();
} 8ԭ��:void Point(int x,int y,int type);
����:����Ļ��ָ��λ���ϻ���
˵��:(x,y)Ϊ��Ļ�ϵ������,typeֵ��������:
     type=0:���(x��y)���ĵ�
     1:��(x,y)������
     2:��(x,y)���ĵ��״̬ȡ��
     type��bit6=1ʱ��ͼ�λ�������ͼ,����ֱ������Ļ��ͼ
����:
void main()
{for(;;)Point(rand()%160,rand()%80,2);} Hԭ��:int GetPoint(int x,int y);
����:������Ļ��ָ�����״̬
˵��:(x,y)Ϊ��Ļ�ϵ������,�����Ϊ���״̬������,���򷵻ط���ֵ
����:
void main()
{int i,j;
 SetScreen(0);printf("V");
 for(i=0;i<8;i++)
  {for(j=0;j<16;j++)
    {if(GetPoint(i,j))Point(10+i,10+j,1);
     else Point(10+i,10+j,0);
    }
  }
 getchar();
} �ԭ��:void Line(int x0,int y0,int x1,int y1,int type);
����:����Ļ�ϻ�ֱ��
˵��:(x0,y0)��(x1,y1)ָ��ֱ�ߵ������˵�����.type�������ߵ�ģʽ
     typeֵ�ĺ���:
     0:�����ʽ
     1:������ʽ
     2:ȡ����ʽ
     type��bit6=1ʱ��ͼ�λ�������ͼ,����ֱ������Ļ��ͼ
����:
void main()
{Box(20,10,100,40,1,1);
 Line(1,1,111,47,1);//from top left to bottom right
 Line(1,47,111,1,0);//from bottom left to top right
 Line(112/2,1,112/2,47,2);//line vertically at the middle of the LCD
 getchar();
} �ԭ��:void Box(int x0,int y0,int x1,int y1,int fill,int type);
����:����Ļ�ϻ�һ����
˵��:(x0,y0)ָ�����Ͻ�����,(x1,y1)ָ�����½�����
     type������ͼ��ʽ,��ֵ��������:
     0:�����ʽ
     1:������ʽ
     2:���෽ʽ
     fill=0:��������
     fill=1:������
����:
void main()
{Box(1,0,111,47,1,1);
 getchar();
 Box(20,10,100,30,0,0);
 getchar();
 Box(40,0,80,47,1,2);
 getchar();
} >ԭ��:void Circle(int x,int y,int r,int fill,int type);
����:����Ļ�ϻ�һԲ
˵��:(x,y)ָ��Բ��,rָ���뾶��
     type������ͼ��ʽ,��ֵ��������:
     0:�����ʽ
     1:������ʽ
     2:���෽ʽ
     fill=0:�����
     fill=1:���
����:
void main()
{Circle(80,40,36,0,1); 
 Circle(80,40,20,1,1);
 getchar();
} iԭ��:void Ellipse(int x,int y,int a,int b,int fill,int type);
����:����Ļ�ϻ�һ��Բ
˵��:(x,y)ָ��Բ��,aΪ���򳤶ȵ�һ��,bΪ���򳤶ȵ�һ��
     type��������ͼ��ʽ,��ֵ��������:
     0:�����ʽ
     1:������ʽ
     2:���෽ʽ
     fill=0:�����
     fill=1:���
����:
void main()
{Ellipse(80,40,60,30,0,1); 
 Ellipse(80,40,20,30,1,1);
 getchar();
} ԭ��:void Beep();
����:����
˵��:������������,����������ڵ�ǰ�����в�����,��ᷢ����������
����:
void main()
{char c;
 SetScreen(0);
 printf("press any key\n");
 c=getchar();
 while(c!=0x1b){Beep();c=getchar();}
 printf("Thank you!");
 getchar();
} ?ԭ��:int isalnum(char c);
����:�ж��ַ�c�Ƿ�Ϊ��ĸ������
˵��:��cΪ����0-9����ĸa-z��A-Zʱ,���ط���ֵ,���򷵻���.
����:
void alnum(char c)
{if(isalnum(c))printf("%c:����ĸ������\n",c);
 else printf("%c:������ĸ������\n",c);
}
void main()
{SetScreen(0);
 alnum('a');
 alnum('7');
 alnum('@');
 getchar();
} +ԭ��:int isalpha(char c);
����:�ж��ַ�c�Ƿ�ΪӢ����ĸ
˵��:��cΪӢ����ĸa-z��A-Zʱ,���ط���ֵ,���򷵻���
����:
void main()
{int c;
 SetScreen(0);
 printf("Press a key");
 for(;;)
  {c=getchar();
   if(isalpha(c))printf("\n%c:��Ӣ����ĸ",c);
   else printf("\n%c:����Ӣ����ĸ",c);
  }
} Aԭ��:int iscntrl(char c);
����:�ж��ַ�c�Ƿ�Ϊ�����ַ�
˵��:��c��0x00-0x1F֮������0x7F(DEL)ʱ,���ط���ֵ,���򷵻���
����:
void cntrl(char c)
{if(iscntrl(c))printf("%d:�ǿ����ַ�\n",c);
 else printf("%d:���ǿ����ַ�\n",c);
}
void main()
{SetScreen(0);
 cntrl('a');
 cntrl(0x0d);
 cntrl(0x7f);
 getchar();
} ԭ��:int isdigit(char c);
����:�ж��ַ�c�Ƿ�Ϊ����
˵��:��cΪ����0-9ʱ,���ط���ֵ,���򷵻���
����:
void digit(char c)
{if(isdigit(c))printf("%c:������\n",c);
 else printf("%c:��������\n",c);
}
void main()
{SetScreen(0);
 digit('a');
 digit('9');
 digit('*');
 getchar();
} Eԭ��:int isgraph(char c);
����:�ж��ַ�c�Ƿ�Ϊ���ո���Ŀɴ�ӡ�ַ�
˵��:��cΪ�ɴ�ӡ�ַ�(0x21-0x7e)ʱ,���ط���ֵ,���򷵻���
����:
void graph(char c)
{if(isgraph(c))printf("%c:�ǿɼ��ַ�\n",c);
 else printf("%c:���ǿɼ��ַ�\n",c);
}
void main()
{SetScreen(0);
 graph('a');
 graph(' ');
 graph(0x7f);
 getchar();
} @ԭ��:int islower(char c);
����:�ж��ַ�c�Ƿ�ΪСдӢ����ĸ
˵��:��cΪСдӢ����ĸ(a-z)ʱ,���ط���ֵ,���򷵻���
����:
void lower(char c)
{if(islower(c))printf("%c:��СдӢ����ĸ\n",c);
 else printf("%c:����СдӢ����ĸ\n",c);
}
void main()
{SetScreen(0);
 lower('a');
 lower('A');
 lower('7');
 getchar();
} Gԭ��:int isprint(char c);
����:�ж��ַ�c�Ƿ�Ϊ�ɴ�ӡ�ַ�(���ո�)
˵��:��cΪ�ɴ�ӡ�ַ�(0x20-0x7e)ʱ,���ط���ֵ,���򷵻���
����:
void print(char c)
{if(isprint(c))printf("%c:�ǿɴ�ӡ�ַ�\n",c);
 else printf("%c:���ǿɴ�ӡ�ַ�\n",c);
}
void main()
{SetScreen(0);
 print('a');
 print(' ');
 print(0x7f);
 getchar();
} gԭ��:int ispunct(char c);
����:�ж��ַ�c�Ƿ�Ϊ������
˵��:��cΪ������ʱ,���ط���ֵ,���򷵻��㡣
     ������ָ��Щ�Ȳ�����ĸ����,Ҳ���ǿո�Ŀɴ�ӡ�ַ�
����:
void punct(char c)
{if(ispunct(c))printf("%c:�Ǳ�����\n",c);
 else printf("%c:���Ǳ�����\n",c);
}
void main()
{SetScreen(0);
 punct('0');
 punct(',');
 punct('.');
 getchar();
} \ԭ��:int isspace(char c);
����:�ж��ַ�c�Ƿ�Ϊ�հ׷�
˵��:��cΪ�հ׷�ʱ,���ط���ֵ,���򷵻���.
     �հ׷�ָ�ո�,ˮƽ�Ʊ�,��ֱ�Ʊ�,��ҳ,�س��ͻ��з�
����:
void space(char c)
{if(isspace(c))printf("%d:�ǿհ׷�\n",c);
 else printf("%d:���ǿհ׷�\n",c);
}
void main()
{SetScreen(0);
 space('a');
 space(' ');
 space(0x0d);
 getchar();
} @ԭ��:int isupper(char c);
����:�ж��ַ�c�Ƿ�Ϊ��дӢ����ĸ
˵��:��cΪ��дӢ����ĸ(A-Z)ʱ,���ط���ֵ,���򷵻���
����:
void upper(char c)
{if(isupper(c))printf("%c:�Ǵ�дӢ����ĸ\n",c);
 else printf("%c:���Ǵ�дӢ����ĸ\n",c);
}
void main()
{SetScreen(0);
 upper('a');
 upper('A');
 upper('7');
 getchar();
} Sԭ��:int isxdigit(char c);
����:�ж��ַ�c�Ƿ�Ϊʮ����������
˵��:��cΪA-F,a-f��0-9֮���ʮ����������ʱ,���ط���ֵ,���򷵻���
����:
void xdigit(char c)
{if(isxdigit(c))printf("%c:��ʮ����������\n",c);
 else printf("%c:����ʮ����������\n",c);
}
void main()
{SetScreen(0);
 xdigit('a');
 xdigit('9');
 xdigit('*');
 getchar();
} � ԭ��:void strcat(addr dest,addr src);
����:��srcָ����ַ������ӵ�dest��β
����:
char d[20]="Made in";
char s[]=" China";
void main()
{SetScreen(0);
 strcat(d,s);
 printf("%s",d);
 getchar();
} :ԭ��:int strchr(int str,char c)
����:����str��ָ�ַ������״γ����ַ�c��λ��
˵��:�����״γ���c��λ�ã����s�в�����c�򷵻�NULL
����:
char s[30]="Golden Global View";
void main()
{int p;
 SetScreen(0);
 printf("%s\n",s);
 p=strchr(s,'V');
 if(p)printf("%s",p);
 else printf("Not Found!");
 getchar();
} rԭ��:int strcmp(int str1,int str2);
����:�Ƚ��ַ���s1��s2
˵��:��s1<s2ʱ,����ֵ<0
     ��s1=s2ʱ,����ֵ=0
     ��s1>s2ʱ,����ֵ>0
����:
char s1[]="Hello, Programmers!";
char s2[]="Hello, programmers!";
void main()
{int r;
 SetScreen(0);
 r=strcmp(s1,s2);
 if(!r)printf("s1����s2");
 else if(r<0)printf("s1С��s2");
 else printf("s1����s2");
 getchar();
} Nԭ��:int strstr(int str1,int str2);
����:���ַ���str1��Ѱ��str2��һ�γ��ֵ�λ��(���ȽϽ�����NULL)
˵��:����ָ���һ�γ���str2λ�õ�ָ��,���û�ҵ��򷵻�NULL
����:
char s[]="Golden Global View";
char l[]="den";
void main()
{int p;
 SetScreen(0);p=strstr(s,l);
 if(p)printf("%s",p);
 else printf("Not Found!");
 getchar();
} ԭ��:char tolower(char c);
����:���ַ�cת��ΪСдӢ����ĸ
˵��:���cΪ��дӢ����ĸ,�򷵻ض�Ӧ��Сд��ĸ,���򷵻�ԭ����ֵ
����:
char s[]="Hello,World!";
void main()
{int i;
 SetScreen(0);
 printf("%s\n",s);
 for(i=0;i<strlen(s);i++)putchar(tolower(s[i]));
 getchar();
} ԭ��:char toupper(char c);
����:���ַ�cת��Ϊ��дӢ����ĸ
˵��:���cΪСдӢ����ĸ,�򷵻ض�Ӧ�Ĵ�д��ĸ,���򷵻�ԭ����ֵ
����:
char s[]="Hello,World!";
void main()
{int i;
 SetScreen(0);
 printf("%s\n",s);
 for(i=0;i<strlen(s);i++)putchar(toupper(s[i]));
 getchar();
} � ԭ��:void memset(int buffer,char c,int count);
����:��buffer��ָ�ڴ������ǰcount���ֽ����ó��ַ�c
����:
char s[]="Golden Global View";
void main()
{SetScreen(0); 
 memset(s,'G',6);
 printf("%s",s);
 getchar();
} )ԭ��:void memcpy(int dest,int src,int count);
����:��src��ָ�ڴ�������count���ֽڵ�dest��ָ�ڴ�����
˵��:src��dest��ָ�ڴ��������ص�
����:
char s[]="Golden Global View";
void main()
{char d[20];
 SetScreen(0);
 memcpy(d,s,strlen(s));
 d[strlen(s)]=0;
 printf("%s",d);
 getchar();
} iԭ��:char fopen(char &filename[],char &mode[]);
����:���ļ�
˵��:��modeָ���ķ�ʽ����Ϊfilename���ļ�.�ɹ�,����һ���ļ����,���򷵻�0
����:
void main()
{char fp;
 if((fp=fopen("/LavaData/tmp.dat","w"))==0)printf("�����ļ�ʧ��!");
 else{fclose(fp);printf("�����ļ��ɹ�!");}
 getchar();
}
���ϣ�
�ļ��Ĵ򿪲�����ʾ�����û�ָ�����ļ����ڴ����һ���ṹ���������ýṹ��ָ�뷵�ظ��û������Ժ��û�����Ϳ��ô�ָ����ʵ�ֶ�ָ���ļ��Ĵ�ȡ�����ˡ���ʹ�ô򿪺���ʱ����������ļ������ļ�������ʽ(����д���д),������ļ��������ڣ�����ζ�Ž���(ֻ��д�ļ����ԣ��Զ��ļ������)�������ļ�ָ��ָ���ļ���ͷ��������һ��ͬ���ļ����ڣ���ɾ�����ļ�������ͬ���ļ����������ļ��������ļ�ָ��ָ���ļ���ͷ��
 fopen(char &filename[],char &mode[]);����filename��Ҫ���ļ����ļ�����һ����˫�������������ļ�����ʾ��Ҳ��ʹ��˫��б�ܸ�����·��������mode������ʾ�˶Դ��ļ��Ĳ�����ʽ����ɲ��õĲ�����ʽ���£�
 ��ʽ ����
 "r"  �򿪣�ֻ��
 "w"  �򿪣��ļ�ָ��ָ��ͷ��ֻд
 "r+" �Զ�/д��ʽ��һ���Ѵ��ڵ��ļ�
 "w+" �Զ�/д��ʽ����һ���µ��ļ�
����fopen(0�ɹ��Ĵ�һ���ļ�ʱ���ú���������һ��ָ�룬����ļ���ʧ�ܣ�������һ��NULL�������test�ļ�������д��
 char fp;
 if((fp=fopen("test","w"))==NULL)
  {
   printf("File cannot be  opened\n");
   exit(0);
  }
 else printf("File opened for writing\n");
 ����
 fclose(fp);
 ϵͳ��ͬʱ�򿪵��ļ���Ŀ�������Ƶģ����ͬʱ��3���ļ��� �ԭ��:void fclose(char fp);
����:�ر��ļ�
˵��:�رվ��Ϊfp���ļ� 
����:
void main()
{char fp;
 if((fp=fopen("/LavaData/tmp.dat","w"))==0)printf("�����ļ�ʧ��!");
 else
  {fclose(fp);
   printf("�����ļ��ɹ�!");
  }
 getchar();
}
���ϣ�
�ļ�������ɺ󣬱���Ҫ��fclose()�������йرգ�������Ϊ�Դ򿪵��ļ�����д��ʱ�����ļ��������Ŀռ�δ��д���������������Щ���ݲ���д���򿪵��ļ���ȥ����ʧ��ֻ�жԴ򿪵��ļ����йرղ���ʱ��ͣ�����ļ������������ݲ���д�����ļ���ȥ���Ӷ�ʹ�ļ�����������һ���ر����ļ������ļ���Ӧ�Ľṹ�����ͷţ��Ӷ�ʹ�رյ��ļ��õ���������Ϊ��ʱ�Ը��ļ��Ĵ�ȡ������������С��ļ��Ĺر�Ҳ��ζ���ͷ��˸��ļ��Ļ�������
 void fclose(char fp);
 ����ʾ�ú������ر�ָ���Ӧ���ļ��� Oԭ��:int fread(int pt,int size,int n,char fp);
����:���ļ�
˵��:�Ӿ��Ϊfp���ļ��ж�ȡn���ֽڣ��浽pt��ָ����ڴ���
     �����������ֽ����������ļ��������������0
     ע��:fread��fwrite�Ĳ���size�ᱻ����,ʵ�ʶ�д���ֽ����ǲ���n.֮���Ա���size��Ϊ����c����.����sizeֵȡ1
����:
char s[]="www.ggv.com.cn";
void main()
{char fp;
 char t[20];
 if((fp=fopen("/LavaData/tmp.dat","w+"))==0)printf("�����ļ�ʧ��!");
 else
  {printf("�����ļ��ɹ�!");
   fwrite(s,1,strlen(s)+1,fp);
   rewind(fp);
   fread(t,1,strlen(s)+1,fp);
   printf("\n%s",t);
   fclose(fp);
  }
 getchar();
} :ԭ��:int fwrite(int pt,int size,int n,char fp);
����:д�ļ�
˵��:��pt��ָ���n���ֽ���������Ϊfp���ļ���
     ����д��fp�ļ��е��ֽ���
     ע��:fread��fwrite�Ĳ���size�ᱻ����,ʵ�ʶ�д���ֽ����ǲ���n.֮���Ա���size��Ϊ����c����.����sizeֵȡ1�� 
����:
char s[]="www.ggv.com.cn";
void main()
{char fp;
 char t[20];
 if ((fp=fopen("/LavaData/tmp.dat","w+"))==0)
  printf("�����ļ�ʧ��!"); 
 else {
  printf("�����ļ��ɹ�!");
  fwrite(s,1,strlen(s)+1,fp);
  rewind(fp);
  fread(t,1,strlen(s)+1,fp);
  printf("\n%s",t);
  fclose(fp); 
 }
 getchar();
} �ԭ��:long fseek(char fp,long offset,char base);
����:�ļ�ָ�붨λ
˵��:�����Ϊfp���ļ���λ��ָ���Ƶ���base��ָ����λ��Ϊ��׼,��offsetΪλ������λ��
     ���ص�ǰλ��.������,����-1
����:
char s[]="www.ggv.com.cn";
void main()
{char fp;
 char t[20];
 if((fp=fopen("/LavaData/tmp.dat","w+"))==0)printf("�����ļ�ʧ��!"); 
 else
  {printf("�����ļ��ɹ�!");
   fwrite(s,1,strlen(s)+1,fp);
   fseek(fp,4,0);
   fread(t,1,strlen(s)+1,fp);
   printf("\n%s",t);
   fclose(fp);
  }
 getchar();
} �ԭ��:long ftell(char fp);
����:ȡ�ļ�ָ��
˵��:���ؾ��Ϊfp���ļ��еĶ�дλ��
����:
char s[]="www.ggv.com.cn";
void main()
{char fp;
 char t[20];
 if((fp=fopen("/LavaData/tmp.dat","w+"))==0)printf("�����ļ�ʧ��!"); 
 else
  {printf("�����ļ��ɹ�!");
   fwrite(s,1,strlen(s)+1,fp);
   rewind(fp);
   fread(t,1,strlen(s)+1,fp);
   printf("\n%s\n%d",t,ftell(fp));
   fclose(fp);
  }
 getchar();
} �ԭ��:int feof(char fp);
����:����ļ��Ƿ����
˵��:���ļ����������ط�0ֵ,���򷵻�0
����:
char s[]="www.ggv.com.cn";
void main()
{char fp;
 char c;
 if((fp=fopen("/LavaData/tmp.dat","w+"))==0)printf("�����ļ�ʧ��!"); 
 else
  {printf("�����ļ��ɹ�!\n");
   fwrite(s,1,strlen(s)+1,fp);
   rewind(fp);
   for(;;)
    {if(feof(fp))break;
     c=getc(fp);
     if(isprint(c))putchar(c);
    }
   fclose(fp);
  }
 getchar();
} �ԭ��:void rewind(char fp);
����:�ļ�ָ�븴λ
˵��:�����Ϊfp���ļ��е�λ��ָ�������ļ���ͷλ��
����:
char s[]="www.ggv.com.cn";
void main()
{char fp;
 char t[20];
 if((fp=fopen("/LavaData/tmp.dat","w+"))==0)printf("�����ļ�ʧ��!"); 
 else
  {printf("�����ļ��ɹ�!");
   fwrite(s,1,strlen(s)+1,fp);
   rewind(fp);
   fread(t,1,strlen(s)+1,fp);
   printf("\n%s",t);
   fclose(fp);
  }
 getchar();
} nԭ��:int getc(char fp);
����:���ļ���һ���ַ�
˵��:�Ӿ��Ϊfp���ļ��ж���һ���ַ�
     �����������ַ�.���ļ����������,����-1
����:
void main()
{char fp;
 if((fp=fopen("/LavaData/tmp.dat","w+"))==0)printf("�����ļ�ʧ��!"); 
 else
  {printf("�����ļ��ɹ�!");
   putc('A',fp);
   rewind(fp);
   printf("\n%c",getc(fp));
   fclose(fp);
  }
 getchar();
} rԭ��:int putc(char ch,char fp);
����:дһ���ַ����ļ�
˵��:��һ���ַ�ch��������Ϊfp���ļ���
     ����������ַ�ch.������,����-1
����:
void main()
{char fp;
 if((fp=fopen("/LavaData/tmp.dat","w+"))==0)printf("�����ļ�ʧ��!"); 
 else
  {printf("�����ļ��ɹ�!");
   putc('A',fp);
   rewind(fp);
   printf("\n%c",getc(fp));
   fclose(fp);
  }
 getchar();
} ԭ��:void sprintf(int str,int format,...);
����:��һ����ʽ�ַ������str��ָ�ڴ�����
˵��:��printf��ͬ���ǣ�������ַ�����������Ļ
����:
char s[]="Hello";
void main()
{char t[20];
 SetScreen(0);
 sprintf(t,"%s��%d���ַ�\n",s,strlen(s));
 printf(t);
 getchar();
} � ԭ��:int MakeDir(int path);
����:������Ŀ¼
˵��:�ɹ����ط�0ֵ,ʧ�ܷ���0
����:
char s[]="/�ƶ�Ӳ��";
void main()
{if(ChDir(s))printf("Ŀ¼�Ѿ�����!");
 else if(MakeDir(s))printf("����Ŀ¼�ɹ�!");
 else printf("����Ŀ¼ʧ��!");
 getchar();
} �ԭ��:int DeleteFile(int filename);
����:ɾ���ļ�
˵��:�ɹ����ط�0ֵ,ʧ�ܷ���0
����:
char s[]="www.ggv.com.cn";
void main()
{char fp;
 if((fp=fopen("/LavaData/tmp.dat","w+"))==0)printf("�����ļ�ʧ��!");
 else
  {printf("�����ļ��ɹ�!\n");
   fwrite(s,1,strlen(s)+1,fp);
   fclose(fp);
   if(DeleteFile("/LavaData/tmp.dat"))printf("ɾ���ļ��ɹ�!");
   else printf("ɾ���ļ�ʧ��!");
  }
 getchar();
} � ԭ��:char Getms();
����:ȡϵͳʱ��ĺ�����
˵��:ʵ������1/256��,����ֵ�ķ�ΧΪ0~255
����:
void main()
{for(;;){printf("\n%d",Getms());getchar();}
 getchar();
} ԭ��:int CheckKey(char key);
����:��ⰴ��
˵��:���ָ���İ����Ƿ��ڰ���״̬,���·��ط�0,���򷵻�0.
ע��:��key>=128ʱ,������а���,�м����·��ذ���ֵ,���򷵻�0
����:
#define UP_KEY 0x14
#define DOWN_KEY 0x15
#define LEFT_KEY 0x17
#define RIGHT_KEY 0x16
void main()
{int x,y;
 char c;
 x=80;
 y=40;
 ClearScreen();
 Block(x,y,x+7,y+7,1);
 Refresh();
 for(;;)
 {c=CheckKey(128);
  if(c==UP_KEY&&y>0)y--;
  else if(c==DOWN_KEY&&y<72)y++;
  else if(c==LEFT_KEY&&x>0)x--;
  else if(c==RIGHT_KEY&&x<152)x++;
  if(c)
   {ClearScreen();
    Block(x,y,x+7,y+7,1);
    Refresh();
    Delay(10);
   }
 }
 getchar();
} #ԭ��:void memmove(int dest,int src,int count);
����:��src��ָ�ڴ�������count���ֽڵ�dest��ָ�ڴ�����
˵��:��memcpy��ͬ����,src��dest��ָ�ڴ���������ص�
����:
char s[]="Golden Global View";
void main()
{ SetScreen(0);
 memmove(s+5,s,strlen(s)-5);
 printf("%s",s+5);
 getchar();
} � ԭ��:long Crc16(int mem,int len);
����:���ڴ��ַmem��ʼ��len���ֽڵ�CRC16У��ֵ
����:
char s[]="Golden Global View";
void main()
{SetScreen(0); 
 printf("%d",Crc16(s,strlen(s)));
 s[0]='g';
 printf("\n%d",Crc16(s,strlen(s)));
 getchar();
} Mԭ��:void Secret(int mem,int len,int string);
����:���ݼ���
˵��:��һ���ַ���string��mem��ʼ��len���ֽڼ���
     ����ʱͬ��ʹ�ô˺���
����:
char s[]="Golden Global View";
void main()
{int t;
 t=strlen(s);
 SetScreen(0);
 Secret(s,t,"lava");//����
 printf(s);
 Secret(s,t,"lava");//����
 printf("\n%s",s);
 getchar();
} � ԭ��:int ChDir(int path);
����:�ı䵱ǰ����Ŀ¼
˵��:�ɹ����ط�0ֵ,ʧ�ܷ���0
����:
char s[]="/�ƶ�Ӳ��";
void main()
{if(ChDir(s))printf("Ŀ¼�Ѿ�����!"); 
 else if(MakeDir(s))printf("����Ŀ¼�ɹ�!");
 else printf("����Ŀ¼ʧ��!");
 getchar();
} �ԭ��:int FileList(int filename);
����:�г���ǰ����Ŀ¼�µ��ļ����û�ѡ��
˵��:�û�ѡ����ļ���(��Ŀ¼��)�����filenameָ����ڴ�
     ����û�����ѡ�񷵻�0,���򷵻ط�0
����:
char filename[60];
void main()
{int t;
 ChDir("/");
 for(;;)
  {if(!FileList(filename)){ChDir("..");continue;}
   if(ChDir(filename))continue;
   break;
  }
 SetScreen(0);Locate(2,0);
 printf(filename);getchar();
} &ԭ��:void GetTime(struct Time t);
����:ȡϵͳ���ں�ʱ��
˵��:ʹ��GetTime,SetTime,���ڳ�����������½ṹ����:
struct TIME
{int year;
 char month;
 char day;
 char hour;
 char minute;
 char second;
 char week;
};
����:
struct TIME
{int year;
 char month;
 char day;
 char hour;
 char minute;
 char second;
 char week;
};
struct TIME time;
void main()
{GetTime(time);
 printf("%d��%d��%d��\n",time.year,time.month,time.day);
 printf("%d:%d:%d\n",time.hour,time.minute,time.second);
 printf("����%d",time.week);
 getchar();
} ԭ��:void SetTime(struct Time t);
����:����ϵͳ���ں�ʱ��
˵��:ʹ��GetTime,SetTime,���ڳ�����������½ṹ����:
struct TIME
{int year;
 char month;
 char day;
 char hour;
 char minute;
 char second;
 char week;
};
����:
struct TIME
{int year;
 char month;
 char day;
 char hour;
 char minute;
 char second;
 char week;
};
struct TIME time;
void main()
{time.year=2020;
 time.month=12;
 time.day=25;
 time.hour=23;
 time.minute=55;
 time.second=1;
 SetTime(time);
 printf("�������!");
 getchar();
} @ԭ��:char GetWord(int mode);
����:����
˵��:�ȴ��û�����һ�����ַ�.
     ��getchar��ͬ,�ú����������뺺�ֺͷ���.����Ǻ���,���ص���GB����.
     mode=0:Ĭ������ΪӢ��
     mode=1:Ĭ������Ϊ����
     mode=2:Ĭ������Ϊ����
     mode=3:������ǰ��Ĭ������״̬
����:
void main()
{int c;
 char han[3];
 SetScreen(0);printf("Press key...");
 c=GetWord(2);
 for(;;)
  {if((c&0xff00)==0&&isprint(c))printf("%c",c);
   else if(c<0)
    {memset(_TEXT+4*20,' ',20); //�����ʾ��
     han[0]=c;han[1]=c>>8;han[2]=0;
     printf("%s",han);
    }
   c=GetWord(3);
  }
} Pԭ��:void Xdraw(int mode);
����:ȫ����Ч
˵��:mode=0:��������ͼ��ȫ������һ����.
     mode=1:��������ͼ��ȫ������һ����.
     mode=4:��������ͼ�����ҷ�ת.
     mode=5:��������ͼ�����·�ת
����:
void main()
{int i;
 TextOut(144,32,"��",0x81);
 for(i=0;i<144;i++)
  {XDraw(0);
   Refresh();
   Delay(10);
  }
 getchar();
} Zԭ��:void ReleaseKey(char key);
����:�ͷŰ���
˵��:��ָ���İ���״̬��Ϊ�ͷ�״̬(��ʹ�ü�������).
     getchar��Inkey���ڳ������µļ�ֻ����һ����ֵ,ʹ��ReleaseKey���Բ�����������.
ע��:��key>=128ʱ,�ͷ����а���.
����:
void main()
{SetScreen(0);
 printf("�밴����");
 for(;;)
 {putchar(getchar());
  ReleaseKey(128);
  Delay(50);
 }
} �ԭ��:void GetBlock(int x,int y,int width,int height,int type,int data);
����:ȡ��Ļͼ��
˵��:����Ļ��ͼ�λ�������(x,y)���괦�Ŀ�Ϊwidth��height�ľ������򱣴浽�ڴ��ַdata��
     type=0:��ͼ�λ�����ȡͼ��,type=0x40:����Ļȡͼ��
     ע��:x��width����bit0-bit2
����:
void main()
{char data[16];
 Locate(0,1);
 putchar('V');
 GetBlock(8,0,8,16,0x40,data);
 WriteBlock(80,40,8,16,0x41,data);
 getchar();
} uԭ��:int Sin(int deg);
����:����Sin(deg)��ֵ
˵��:deg�ĵ�λ�Ƕ�,ȡ0~32767֮�������
     ����ֵ��sin(deg)��С��ֵ����1024(��ΧΪ-1024~1024)
����:
void main()
{int i,x1,y1,x2,y2;
 x1=20;
 y1=40;
 Line(15,40,145,40,1);
 Line(20,0,20,79,1);
 for(i=3;i<=360;i=i+3)
  {x2=x1+1;
   y2=40-Sin(i)/27;
   Line(x1,y1,x2,y2,1);
   x1=x2;
   y1=y2;
  }
 getchar();
} uԭ��:int Cos(int deg);
����:����Cos(deg)��ֵ
˵��:deg�ĵ�λ�Ƕ�,ȡ0~32767֮�������
     ����ֵ��Cos(deg)��С��ֵ����1024(��ΧΪ-1024~1024)
����:
void main()
{int i,x1,y1,x2,y2;
 x1=20;
 y1=40;
 Line(15,40,145,40,1);
 Line(20,0,20,79,1);
 for(i=3;i<=360;i=i+3)
  {x2=x1+1;
   y2=40-Cos(i)/27;
   Line(x1,y1,x2,y2,1);
   x1=x2;
   y1=y2;
  }
 getchar();
} ԭ��:void FillArea(int x,int y,int type);
����:��һ��պϵ�͹����������
˵��:��x,y���꿪ʼ���
     type=0:���ͼ�λ�����,type=0x40:�����Ļ
����:
void main()
{Line(10,10,10,70,1);
 Line(10,70,150,70,1);
 Line(10,10,150,70,1);
 FillArea(20,60,0x40);
 getchar();
} �ԭ��:int SetGraphMode(int mode);
����:����ϵͳͼ��ģʽ
˵��:mode=1,2ɫģʽ
     mode=4,16ɫģʽ
     mode=8,256ɫģʽ
     mode=0,���ı�ͼ��ģʽ,����ȡ��ǰͼ��ģʽ
     �ɹ�ʱ����ԭ����ͼ��ģʽ,��ͼ����Ӳ����֧�ֵ�ͼ��ģʽ,�᷵��0
����:
char g16[]=
{35,35,35,35,35,35,35,35,35,50,50,50,50,50,50,50,50,50,50,50,50,50,51,35,35,35,35,35,35,35,35,35,35,35,35,35,35,34,50,50,
 50,50,50,50,50,50,35,52,85,67,34,50,50,34,35,34,50,35,34,50,35,34,72,187,149,51,34,34,50,50,35,34,50,35,34,34,34,137,156,
 201,82,35,35,34,34,50,35,34,50,35,34,50,135,136,205,149,50,34,34,50,34,34,34,34,34,34,34,69,120,155,218,82,34,34,34,34,
 34,34,34,34,34,34,52,103,137,189,165,50,34,34,34,34,34,34,34,34,34,34,70,120,155,217,66,34,34,34,34,34,34,34,34,34,34,36,
 103,136,188,99,53,84,66,34,34,34,34,33,33,33,34,69,120,141,168,154,186,151,66,33,33,33,33,33,34,18,36,103,123,203,169,
 172,220,148,34,33,34,33,33,33,33,34,69,103,115,33,18,108,217,66,18,18,18,18,18,18,18,34,85,51,33,0,3,204,131,18,18,17,17,
 17,17,17,37,83,67,33,0,1,92,164,17,17,18,17,18,17,33,25,36,67,33,17,17,42,197,17,33,17,17,17,17,17,55,37,67,50,17,19,39,
 197,17,17,17,17,17,17,17,69,37,84,51,35,35,54,198,17,17,17,17,17,17,17,70,22,84,52,51,52,53,181,17,17,17,17,17,17,17,39,
 20,67,51,68,68,55,164,17,17,17,17,17,17,16,23,50,17,50,85,84,41,114,17,17,17,1,17,1,1,20,97,17,18,86,65,105,65,1,1,16,16,
 16,17,1,1,117,16,18,50,21,148,17,16,16,1,16,16,16,1,1,22,116,35,36,120,49,1,1,1,16,1,1,1,1,0,1,38,136,135,66,16,16,16,16,
 0,16,0,0,0,1,0,1,17,17,16,1,0,0,0,0,0,1,0,16,0,16,0,0,0,0,16,1,0,1,16,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 0,0,0,0};
void main()
{SetGraphMode(4);
 WriteBlock(20,20,30,30,1,g16);
 Refresh();
 getchar();
} � ԭ��:void SetBgColor(int color);
����:���ñ�����ɫ
˵��:2ɫģʽ����Ч
����:
void main()
{SetGraphMode(4);
 SetBgColor(5);
 SetFgColor(10);
 TextOut(56,20,"LeeSoft",1);
 Refresh();getchar();
} � ԭ��:void SetFgColor(int color);
����:����ǰ����ɫ
˵��:2ɫģʽ����Ч
����:
void main()
{SetGraphMode(4);
 SetBgColor(5);
 SetFgColor(10);
 TextOut(56,20,"LeeSoft",1);
 Refresh();getchar();
} cԭ��:void Fade(int bright);
����:���뵭����Ч
˵��:��������ͼ����ָ���������������Ļ����ʾ,���Ҷ�ģʽ����Ч
����:
void main()
{int i;
 SetGraphMode(4);
 SetFgColor(3);
 SetBgColor(15);
 ClearScreen();
 TextOut(52,32,"LeeSoft",0x81);
 for(i=0;i<16;i++){Fade(i);Delay(50);}
 Delay(2000);
 for(i=15;i>=0;i--){Fade(i);Delay(50);}
 getchar();
} ~ԭ��:int FindFile(int from,int num,addr buf);
����:ȡ��ǰĿ¼�µ��ļ���
˵��:fromΪ��һ���ļ���Ŀ¼�е����
     numΪҪȡ���ļ����ĸ���
     bufΪ�ڴ��ַ,���淵�ص��ļ���,ÿ16���ֽڱ���һ���ļ���
     ����ֵΪʵ��ȡ�õ��ļ�����
����:
void main()
{char namebuf[5][16];
 int i,num;
 num=FindFile(1,5,namebuf);
 for(i=0;i<num;i++)printf("\n%s",namebuf[i]);
 getchar();
} � ԭ��:int GetFileNum(addr path);
����:ȡָ��Ŀ¼�µ��ļ���
����:
void main()
{printf("��Ŀ¼����%d���ļ�\n",GetFileNum("/"));
 getchar();
} Qputchar     Mgetchar     �printf      �strcpy      Kstrlen      �SetScreen   m	UpdateLCD   v
Delay       �WriteBlock  �Refresh     [TextOut     qBlock       fRectangle   �exit        3ClearScreen ;abs         �rand        srand       �Locate      �Inkey       �Point       �GetPoint    Line        `Box         Y Circle      �!Ellipse     .#Beep        �$isalnum     �%isalpha     �&iscntrl     (isdigit     V)isgraph     w*islower     �+isprint     -ispunct     L.isspace     �/isupper     1isxdigit    X2strcat      �3strchr      |4strcmp      �5strstr      .7tolower     8toupper     �9memset      �:memcpy      �;fopen       �<fclose      +Bfread       �Dfwrite      AGfseek       ~Iftell       yKfeof        Mrewind      �Ngetc        tPputc        �Qsprintf     ZSMakeDir     mTDeleteFile  jUGetms       
WCheckKey    �Wmemmove     5ZCrc16       [[Secret      X\ChDir       �]FileList    �^GetTime     A`SetTime     jbGetWord     dXDraw       �fReleaseKey  hGetBlock    riSin         kCos         �lFillArea    nSetGraphM.. oSetBgColor  �uSetFgColor  �vFade        lwFindFile    �xGetFileNum  Sz}Beep heck m Block eck m Box Check m ChDir eck m CheckKey  m Circle ck m ClearScreen Cos Check m Crc16 eck m Delay eck m DeleteFile  DiskCheck m DiskReclaim Ellipse e   Fade code   FileList    FillArea    FindFile    FlmDecode   GetBlock    GetFileNum  GetPoint    GetTime     GetWord     Getms d     Inkey d     Line  d     Locate      MakeDir     PY2GB d     Point d     RamRead     Rectangle   Refresh     ReleaseKey  Secret e    SetBgColor  SetFgColor  SetScreen   SetTime     Sin lose    SndClose    SndGetPlay  SndIfEnd    SndOpen     SndPause    SndPlay     SndPlayFile SndResume   SndStop     @System      TextOut     UpdateLCD   WriteBlock  XDraw       abs k       0break        char e       code e      0continue     define       do if e      else  e      endif e     exit  e     fclose      feof  e     fopen e     cfor f e     fread e     fseek e     ftell e     fwrite      getc  e     getchar      goto  e     `if ef e      ifdef e      ifndef      pinclude      int all     isalnum     isalpha     iscntrl     isdigit     isgraph     islower     isprint     ispunct     isspace     isupper     isxdigit    Ploadall      loaddata     long        `main        memcpy      memmove     memset      printf      putc n      putchar     rand n      0return      rewind      `sizeof      Pskip        sprintf     srand        start        static      strcat      strchr      strcmp      strcpy      strlen      strstr       struct      tolower     toupper      undef        union t     Punstart      void        `while       
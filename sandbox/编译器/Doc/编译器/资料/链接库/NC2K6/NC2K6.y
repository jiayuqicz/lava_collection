�
  �
�� ��:NC2600
ԭ��:void exeasm(char &buf[]);
����:��LavaX������ִ�л����롣
˵��:bufΪ�������ַ�����Ч�ʸߣ��ҿ������κ��£����޷���ƽ̨��Ҫ�������á�
����:
#include <NC2K6.y>
char buf[] = {0x00,0x1d,0x05,0x60};//��INT $051d RTS
void main()
{
 SetScreen(0);
 printf("�ռ�������...\n");
 exeasm(buf);
 printf("OK!\n");
 getchar();
}

ԭ��:void call(int brk);
����:��LavaX�����µ���ϵͳ�жϡ�
˵��:brkΪϵͳ�жϺš�
 �磺0x051bΪ�ռ����������ƻ���е�
 INT $051b
 RTS
����:
#include <NC2K6.y>

void main()
{
 SetScreen(0);
 printf("�ռ�������...\n");
 call(0x051b);
 printf("OK!\n");
 getchar();
}

ԭ��:void DiskReclaim();
����:�ռ�������
����:
#include <NC2K6.y>

void main()
{
 SetScreen(0);
 printf("�ռ�������...\n");
 DiskReclaim();
 printf("OK!\n");
 getchar();
}

ԭ��:long DiskCheck();
����:��ȡ����ʣ��ռ䡣
˵��:����ʣ����̿ռ��С����λΪKB��ʹ�øú���ǰ����ȿռ�����һ�¡�
����:
#include <NC2K6.y>
void main()
{
 SetScreen(0);
 DiskReclaim();
 printf("ʣ��ռ�:%dKB\n", DiskCheck());
 getchar();
}

ԭ��:void SetFlmMode(struct FLM_BUF &cut, char &pic[]);
����:���ò��ŵĻ�������ַ��
˵��:���FlmDecode����ʹ�ã�������FlmDecode����ǰ���øĺ�����ʹ�øú���ǰ���붨�壺
struct FLM_BUF
{
 char cmd;
 char pic[1600];
};
���Ǵ��ѹ�����ݵĻ����������Բ���cut����ѹ�����ݻ�������������pic�ǽ�ѹ��������ݻ�������

ԭ��:void FlmDecode();
����:flmӰƬ���롣
˵��:���SetFlmMode����ʹ�ã�ֻ���ڵ���FlmDecode��������ܵ��øú�����
����:
#define ESC_KEY 0x1b

#include <NC2K6.y>

struct FLM_BUF
{
 char cmd;
 char pic[1600];
};
void playFlm2(int fn)
{
 char fp, head[16];
 char ms, low, high;
 int tmp, length, frame, process, speed;
 struct FLM_BUF cut;
 char pic[1600];

 if (!(fp = fopen(fn, "r"))) return;
 fread(head, 1, 16, fp);
 if (head[0] != 'F' || head[1] != 'L' || head[2] != 'M' || head[3] != 0x10)//������Ч��FLM�ļ�
 {
  fclose(fp);
  return;
 }
 if (head[4])//ѹ����ʽ��flm�ļ�
 {
  frame = head[5] + (head[6] << 8);//����
  speed = head[7];//�ٶ�(�ӳ�tick��)
  SetFlmMode(cut, pic);//���ò��ŵĻ�������ַ
  for (process = 0; process < frame && Inkey() != ESC_KEY; process++)
  {
   ms = Getms();
   fread(&tmp, 1, 2, fp);
   length = (tmp&0xfff) - 2;
   cut.cmd = tmp >> 12;//��ȡ����
   fread(cut.pic, 1, length, fp);
   cut.pic[length] = 0xc1;//��ȡѹ������
   FlmDecode();//����
   WriteBlock(0, 0, 160, 80, 1, pic);//��ʾ
   Refresh();
   if (speed)//��ʱ��������
   {
    while (((Getms() - ms)&0xff) < speed);
   }
  }
 }
 fclose(fp);
}

void main()
{
 char fn[60];
 ChDir("/��������");
 for(;;)
 {
  if (!FileList(fn))
  {
   ChDir("..");
   continue;
  }
  if (ChDir(fn)) continue;
  playFlm2(fn);
  ChDir("/��������");
 }
} �!�>	 �d               exeasm             ��  58��� y�  58?�> �d               call               	 �  58
 �  58 � `58	 =  ?�>  �d                DiskReclaim        =  =  ?�>  �d               DiskCheck          A  � �m{��8���|�
�
����
轁�
� �
��
� �۩�� � �����������i�����i ��� ������ 
����������恥�Ń���ł����i0����`  =   � "J ? ?�> �d               SetFlmMode         A  �@���&��� ��� ����,��� ������������@��������`��`���� �����������@������� ��� ��� ���@�)?��@e�������恠 ������`ɀ�()?��@�� ��i�����������恠 ����Я`���')?��@�� �����q��������������)?��@���恠 ������e�����������恩 �
   E 58
   E K 58	
  S
  	 558
  W
  	 K 558
   E  58
   E  K 58?�>  �d                FlmDecode          ��    58��� y�  58?
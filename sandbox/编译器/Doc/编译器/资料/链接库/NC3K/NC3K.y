�  ��� ��:Eastsun
�� ��:NC3000
ԭ��:void exeasm(char &buf[]);
����:��LavaX������ִ�л����롣
˵��:bufΪ�������ַ�����Ч�ʸߣ��ҿ������κ��£����޷���ƽ̨��Ҫ�������á�
����:
#include <NC3K.y>
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
 �磺0x051dΪ�ռ����������ƻ���е�
 INT $051d
 RTS
����:һЩNC3000���жϡ�
�ļ�ϵͳ��
0x0501:���Գ�����
0x0502:����������/�߼���ӳ���
0x0503:��ȡһҳnand(����������eccУ��)
0x0504:��ȡһҳnand(��������eccУ��)
0x0505:��ȡnand(�߼�)
0x0506:��ȡһҳnand(�߼�)
0x0507:��ȡ1�ֽ�nor
0x0508:��ȡ���ֽ�nor
0x0509:����ָ����inode��(0x8d2~0x8d3)�ҳ���Ӧ��Ŀ¼��(0x88d)
0x050a:����Ŀ¼�Ƿ���г�
0x050b:����Ŀ¼
0x050c:��ȡĿ¼
0x050d:�л�����Ŀ¼(0x88d)
0x050e:ɾ���ļ�(�ļ�����0x88d)
0x050f:ɾ��Ŀ¼(0x88d)
0x0510:������(ԭ����:0x88d,������:0x918)
0x0511:�����޸�ָ���ļ�����1(����:0x8ff)
0x0512:��ʱ�޸�ָ���ļ�����1
0x0513:����ָ���ļ�����1
0x0514:�����޸�ָ���ļ�����2
0x0515:�򿪻򴴽��ļ�
 �򿪷�ʽ����:0x8c9
 0x8c9=0x70:�½�,0x80:��,0x81:׷��,0xc0:�޸�
 �ɹ��Ĵ���carry=0,���ɹ�carry=1
0x0516:���ļ�
 0xe0,0xe1:��ʼ��ַ,0x8c6,0x8c7:�ļ�����;�ɹ��Ĵ���carry=0,���ɹ�carry=1
0x0517:�ر��ļ�
0x0518:д�ļ�
 0xe0,0xe1:���ݵ�ַ,0x8c6,0x8c7:�ļ���С;�ɹ��Ĵ���carry=0,���ɹ�carry=1
0x0519:�����ļ���дָ��λ��
0x051a:��inode
0x051b:��һ��inode
0x051c:�ռ�����_�ͷ���ɾ���ռ�
0x051d:�ռ�����_ɾ�����õķ������Ϣ
0x051e:����ʱ�ռ�����A
0x051f:����ʱ�ռ�����B
��ͼ���֣�
0xc729:�����Ļ
0xc72a:������ֻ�����
0xc719:������Ļ(����UpdateLCD)
0xc006:��ȡ����ֵ(����getchar)

0xc733:������ת�����ַ�
0xca03:�˷�
0xca04:����
0xca05:�жϵ�
0xca0a:����������
0xca0c:��������
0xca06:����Ļ0,0��ʼ�����Σ������
0xca07:����Ļ0,0��ʼ��������
0xca0b:����
0xca08:����Ļ�������Ļ�϶�����
0xca0e:��Բ�������
0xca10:��Բ�����
0xca0f:����Բ�������
0xca11:����Բ�����
0xca09:�����ͼ
0xca0d:�����ͼ
0xca12:�Ĵ���a=0Ϊ������,a=1 or 2ʱΪ�Ƿ�Ի���,a=3ʱΪѡ��򣨴�ʱ����������ͬ��

0xca16:��ʾ���ڲ���
0xca17:��ʾû���ҵ�

0xcb01:ϵͳ����Debug
����:
#include <NC3K.y>
void main()
{
 SetScreen(0);
 call(0xca16);//��ʾ���ڲ���
 getchar();
}

ԭ��:void DiskReclaim();
����:�ռ�������
����:
#include <NC3K.y>
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
#include <NC3K.y>
void main()
{
 SetScreen(0);
 DiskReclaim();
 printf("ʣ��ռ�:%dKB\n",DiskCheck());
 getchar();
}

ԭ��:void SetFlmMode(struct FLM_BUF &cut,char &pic[]);
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
#include <NC3K.y>
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
}

ԭ��:int findfile(int from,int num,char &buf[][16]);
����:ȡ��ǰĿ¼�µ��ļ���
˵��:fromΪ��һ���ļ���Ŀ¼�е����
     numΪҪȡ���ļ����ĸ���
     bufΪ�ڴ��ַ�����淵�ص��ļ�����ÿ16���ֽڱ���һ���ļ���
     ����ֵΪʵ��ȡ�õ��ļ�����
����:
void main()
{
 char namebuf[5][16];
 int i, num;

 num = findfile(1, 5, namebuf);
 for (i = 0; i < num; i++) printf("\n%s", namebuf[i]);
 getchar();
} 

ԭ��:int getcurdir();
����:��ȡ��ǰĿ¼
˵��:����Ŀ¼ָ��
����:
void main()
{
 SetScreen(0);
 printf(getcurdir());
 getchar();
}

ԭ��:void bell(char rate);
����:����
˵��:��������������Ƶ�ʵ�
����:
void main()
{
 bell(255);
 getchar();
}

ԭ��:int ChkBattery();
����:������
˵��:����0~31��Χ��ֵ��Խ�ߵ���Խǿ��
����:
void main()
{
 printf("ϵͳ����:%d%%", ChkBattery() * 100 / 32);
 getchar();
} �!�>	 �d               exeasm             ��  58 ?�> �d               call               	 �  58
 �  58 � `58	 =  ?�>  �d                DiskReclaim        =  =  ?�>  �d               DiskCheck          A  � �mt��8�i



��	� ��	���	� ��	���	� �ީ�� � �����������i�����i��� ������ 
����������恥�Ń���ł����i0����`  =   � "J ? ?�> �d               SetFlmMode         A  � �@���&��� ��� ��� ��� ������������@��������`��`���� �����������@������� ��� ��� ���@�)?��@e����惩 �ɀ�()?��@�� ��i�����������恠 ����к`���')?��@�� �����q��������������)?��@���恠 ������e����������
   E 58
   E K 58	
  R
  	 558
  V
  	 K 558
   E  658��   58?�>  �d                FlmDecode           ?�> �d              findfile           
=   �  58 )89�  G  !  .. � �  � 558	  58 	 489� =   		)89� ;�  � G  !  		�	 8;�  ? ?�>  �d               getcurdir          	=  �? ?�>	 �d               bell               A   �  �`
   58��   58 ?�>  �d               ChkBattery         A  < x�	���2� ���������������)���� �� �� ��) ��  X`8
   589
   K 58��   58  ? ?
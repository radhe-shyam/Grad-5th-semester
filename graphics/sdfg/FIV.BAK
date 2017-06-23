/*				Assignment#6
Q.5 Write a Program in Graphics to Rotate House with angle entered by User.
*/
#include<stdio.h>
#include<conio.h>
#include<graphics.h>
#include<math.h>
#include<dos.h>
#include"z:\sem5\cg\ass#3\DDA.c"
void ddahut(int *p)
{
	DDA(p[0],p[1],p[2],p[3]);
	DDA(p[0],p[1],p[4],p[5]);
	DDA(p[0],p[1],p[6],p[7]);
	DDA(p[2],p[3],p[8],p[9]);
	DDA(p[4],p[5],p[10],p[11]);

	DDA(p[6],p[7],p[12],p[13]);
	DDA(p[8],p[9],p[14],p[15]);

	DDA(p[4],p[5],p[8],p[9]);
	DDA(p[10],p[11],p[14],p[15]);

	DDA(p[16],p[17],p[18],p[19]);
	DDA(p[16],p[17],p[20],p[21]);
	DDA(p[18],p[19],p[22],p[23]);

    /*	setfillstyle(2,BROWN);
	floodfill(200,70,WHITE);

	circle(100,80,10);

	setfillstyle(5,BROWN);
	floodfill(110,70,WHITE);

	setfillstyle(10,RED);
	floodfill(60,200,WHITE);
	floodfill(200,200,WHITE);
	settextstyle(4,0,4);
	outtextxy(100,310,"Hut Using Line Algorithm");*/
}
void Rhut(int *p,int ang)
{
	int arr[24];
	arr[0]=p[0]*cos(3.14/180*ang)-p[1]*sin(3.14/180*ang);
	arr[1]=p[0]*sin(3.14/180*ang)+p[1]*cos(3.14/180*ang);

	arr[2]=p[2]*cos(3.14/180*ang)-p[3]*sin(3.14/180*ang);
	arr[3]=p[2]*sin(3.14/180*ang)+p[3]*cos(3.14/180*ang);

	arr[4]=p[4]*cos(3.14/180*ang)-p[5]*sin(3.14/180*ang);
	arr[5]=p[4]*sin(3.14/180*ang)+p[5]*cos(3.14/180*ang);

	arr[6]=p[6]*cos(3.14/180*ang)-p[7]*sin(3.14/180*ang);
	arr[7]=p[6]*sin(3.14/180*ang)+p[7]*cos(3.14/180*ang);

	arr[8]=p[8]*cos(3.14/180*ang)-p[9]*sin(3.14/180*ang);
	arr[9]=p[8]*sin(3.14/180*ang)+p[9]*cos(3.14/180*ang);

	arr[10]=p[10]*cos(3.14/180*ang)-p[11]*sin(3.14/180*ang);
	arr[11]=p[10]*sin(3.14/180*ang)+p[11]*cos(3.14/180*ang);

	arr[12]=p[12]*cos(3.14/180*ang)-p[13]*sin(3.14/180*ang);
	arr[13]=p[12]*sin(3.14/180*ang)+p[13]*cos(3.14/180*ang);

	arr[14]=p[14]*cos(3.14/180*ang)-p[15]*sin(3.14/180*ang);
	arr[15]=p[14]*sin(3.14/180*ang)+p[15]*cos(3.14/180*ang);

	arr[16]=p[16]*cos(3.14/180*ang)-p[17]*sin(3.14/180*ang);
	arr[17]=p[16]*sin(3.14/180*ang)+p[17]*cos(3.14/180*ang);

	arr[18]=p[18]*cos(3.14/180*ang)-p[19]*sin(3.14/180*ang);
	arr[19]=p[18]*sin(3.14/180*ang)+p[19]*cos(3.14/180*ang);

	arr[20]=p[20]*cos(3.14/180*ang)-p[21]*sin(3.14/180*ang);
	arr[21]=p[20]*sin(3.14/180*ang)+p[21]*cos(3.14/180*ang);

	arr[22]=p[22]*cos(3.14/180*ang)-p[23]*sin(3.14/180*ang);
	arr[23]=p[22]*sin(3.14/180*ang)+p[23]*cos(3.14/180*ang);

	DDA(arr[0],arr[1],arr[2],arr[3]);
	DDA(arr[0],arr[1],arr[4],arr[5]);
	DDA(arr[0],arr[1],arr[6],arr[7]);
	DDA(arr[2],arr[3],arr[8],arr[9]);
	DDA(arr[4],arr[5],arr[10],arr[11]);

	DDA(arr[6],arr[7],arr[12],arr[13]);
	DDA(arr[8],arr[9],arr[14],arr[15]);

	DDA(arr[4],arr[5],arr[8],arr[9]);
	DDA(arr[10],arr[11],arr[14],arr[15]);

	DDA(arr[16],arr[17],arr[18],arr[19]);
	DDA(arr[16],arr[17],arr[20],arr[21]);
	DDA(arr[18],arr[19],arr[22],arr[23]);
}
void main()
{
	int gd=DETECT,gm,ang,arr[24]={100,50,400,50,50,100,150,100,450,100,50,300,150,300,450,300,70,200,130,200,70,300,130,300};
	clrscr();
	initgraph(&gd,&gm,"C:\\tc\\bgi");
	ddahut(arr);
	getch();
	printf("Enter angle to rotate the hut....\n");
	scanf("%d",&ang);
	cleardevice();
	Rhut(arr,ang);
	getch();
	closegraph();
}
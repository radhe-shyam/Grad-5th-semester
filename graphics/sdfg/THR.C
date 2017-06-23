/*				Assignment#6
Q.3 WAP in Graphics to perform Transformation on a Triangle.
	A: Translation.
	B: Scaling.
	C: Rotation.
*/
#include<stdio.h>
#include<conio.h>
#include<graphics.h>
#include<dos.h>
#include<math.h>

void Translation(int x1,int y1,int x2,int y2,int x3,int y3,int tx,int ty)
{

	moveto(x1+tx,y1+ty);
	lineto(x2+tx,y2+ty);
	lineto(x3+tx,y3+ty);
	lineto(x1+tx,y1+ty);

}
void Scaling(int x1,int y1,int x2,int y2,int x3,int y3,int tx,int ty)
{
	moveto(x1*tx,y1*ty);
	lineto(x2*tx,y2*ty);
	lineto(x3*tx,y3*ty);
	lineto(x1*tx,y1*ty);
}
void Rotat(int x1,int y1,int x2,int y2,int x3,int y3,int tx,int ty)
{
	x1=x1*cos(1.34/180*tx)-y1*sin(1.34/180*tx);
	y1=x1*sin(1.34/180*tx)+y1*cos(1.34/180*tx);
	x2=x2*cos(1.34/180*tx)-y2*sin(1.34/180*tx);
	y2=x2*sin(1.34/180*tx)+y2*cos(1.34/180*tx);
	x3=x3*cos(1.34/180*tx)-y3*sin(1.34/180*tx);
	y3=x3*sin(1.34/180*tx)+y3*cos(1.34/180*tx);

	moveto(x1,y1);
	lineto(x2,y2);
	lineto(x3,y3);
	lineto(x1,y1);
}
void main()
{
	int gd=9,gm=1,mx,my,tx,ty,x1,y1,x2,y2,x3,y3;
	clrscr();
	initgraph(&gd,&gm,"c:\\tc\\bgi");
	mx=getmaxx();
	my=getmaxy();
	x1=100;
	y1=100;
	x2=150;
	y2=150;
	x3=50;
	y3=150;
	moveto(x1,y1);
	lineto(x2,y2);
	lineto(x3,y3);
	lineto(x1,y1);
	printf("Enter tx, ty\n");
	scanf("%d %d",&tx,&ty);
	Rotat(x1,y1,x2,y2,x3,y3,tx,ty);
	getch();
	closegraph();
}
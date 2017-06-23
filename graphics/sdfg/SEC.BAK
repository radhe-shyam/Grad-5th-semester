/* 				Assignment#6
Q.2 WAP
*/
#include<stdio.h>
#include<conio.h>
#include<graphics.h>
#include<stdlib.h>
#include<math.h>
void Pend(int mx,int my)
{
	int i=0,ang=270,x,y;
	x=mx/2;
	y=my/2;
	line(mx/2,10,x,my/2);
	ellipse(x,y,0,360,50,30);

	getch();
	while(!kbhit())
	{
	i=0;
	while(!kbhit()&&ang>=240)
	{
		rectangle(80,10,mx-80,my-10);
		line(mx/2,10,x,my/2-i);
		ellipse(x,y-i,0,360,50,30);
		ang--;
		i+=2;
		x=x*cos((3.14/180)*ang)-y*sin((3.14/180)*ang);
		delay(10);
		cleardevice();
	}
	sound(1000);
	delay(100);
	nosound();

	while(!kbhit()&&ang<=290)
	{
		rectangle(80,10,mx-80,my-10);
		line(mx/2,10,x,my/2-i);
		ellipse(x,y-i,0,360,50,30);
		ang++;
		i-=2;
		x=x*cos((3.14/180)*ang)-y*sin((3.14/180)*ang);
		delay(10);
		cleardevice();
	}
	while(!kbhit()&&ang<=310)
	{
		rectangle(80,10,mx-80,my-10);
		line(mx/2,10,x,my/2-i);
		ellipse(x,y-i,0,360,50,30);
		ang++;
		i+=2;
		x=x*cos((3.14/180)*ang)-y*sin((3.14/180)*ang);
		delay(10);
		cleardevice();
	}
	sound(1000);
	delay(100);
	nosound();

	while(!kbhit()&&ang>=290)
	{
		rectangle(80,10,mx-80,my-10);

		line(mx/2,10,x,my/2-i);
		ellipse(x,y-i,0,360,50,30);
		ang--;
		i-=2;
		x=x*cos((3.14/180)*ang)-y*sin((3.14/180)*ang);
		delay(10);
		cleardevice();
	}

	}
}
void main()
{
	int gd=DETECT,gm,mx,my;
	clrscr();
	initgraph(&gd,&gm,"c:\\tc\\bgi");
	mx=getmaxx();
	my=getmaxy();
	Pend(mx,my);

	getch();
	closegraph();
}
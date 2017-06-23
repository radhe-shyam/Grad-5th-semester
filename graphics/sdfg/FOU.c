/*				Assignment#6
Q.4 WAP in Graphics to perform transformation on cube.
*/
#include<stdio.h>
#include<conio.h>
#include<graphics.h>
#include<dos.h>
#include<math.h>

void Trans(int *ptr1,int *ptr2)
{
	int tx,ty;
	printf("Enter tx,ty\n");
	scanf("%d %d",&tx,&ty);

	moveto(ptr1[0]+tx,ptr1[1]+ty);
	lineto(ptr1[2]+tx,ptr1[3]+ty);
	lineto(ptr1[4]+tx,ptr1[5]+ty);
	lineto(ptr1[6]+tx,ptr1[7]+ty);
	lineto(ptr1[0]+tx,ptr1[1]+ty);

	moveto(ptr2[0]+tx,ptr2[1]+ty);
	lineto(ptr2[2]+tx,ptr2[3]+ty);
	lineto(ptr2[4]+tx,ptr2[5]+ty);
	lineto(ptr2[6]+tx,ptr2[7]+ty);
	lineto(ptr2[0]+tx,ptr2[1]+ty);

	line(ptr1[0]+tx,ptr1[1]+ty,ptr2[0]+tx,ptr2[1]+ty);
	line(ptr1[2]+tx,ptr1[3]+ty,ptr2[2]+tx,ptr2[3]+ty);
	line(ptr1[4]+tx,ptr1[5]+ty,ptr2[4]+tx,ptr2[5]+ty);
	line(ptr1[6]+tx,ptr1[7]+ty,ptr2[6]+tx,ptr2[7]+ty);
}
void Scal(int *ptr1,int *ptr2)
{
	int tx,ty;
	printf("Enter tx,ty\n");
	scanf("%d %d",&tx,&ty);

	moveto(ptr1[0]*tx,ptr1[1]*ty);
	lineto(ptr1[2]*tx,ptr1[3]*ty);
	lineto(ptr1[4]*tx,ptr1[5]*ty);
	lineto(ptr1[6]*tx,ptr1[7]*ty);
	lineto(ptr1[0]*tx,ptr1[1]*ty);

	moveto(ptr2[0]*tx,ptr2[1]*ty);
	lineto(ptr2[2]*tx,ptr2[3]*ty);
	lineto(ptr2[4]*tx,ptr2[5]*ty);
	lineto(ptr2[6]*tx,ptr2[7]*ty);
	lineto(ptr2[0]*tx,ptr2[1]*ty);

	line(ptr1[0]*tx,ptr1[1]*ty,ptr2[0]*tx,ptr2[1]*ty);
	line(ptr1[2]*tx,ptr1[3]*ty,ptr2[2]*tx,ptr2[3]*ty);
	line(ptr1[4]*tx,ptr1[5]*ty,ptr2[4]*tx,ptr2[5]*ty);
	line(ptr1[6]*tx,ptr1[7]*ty,ptr2[6]*tx,ptr2[7]*ty);
}
void Rotat(int *ptr1,int *ptr2)
{
	int tx,ty,arr1[8],arr2[8];
	printf("Enter the Angle\n");
	scanf("%d %d",&tx);

	arr1[0]=ptr1[0]*cos(1.34/180*tx)-ptr1[1]*sin(1.34/180*tx);
	arr1[1]=ptr1[0]*sin(1.34/180*tx)+ptr1[1]*cos(1.34/180*tx);
	arr1[2]=ptr1[2]*cos(1.34/180*tx)-ptr1[3]*sin(1.34/180*tx);
	arr1[3]=ptr1[2]*sin(1.34/180*tx)+ptr1[3]*cos(1.34/180*tx);
	arr1[4]=ptr1[4]*cos(1.34/180*tx)-ptr1[5]*sin(1.34/180*tx);
	arr1[5]=ptr1[4]*sin(1.34/180*tx)+ptr1[5]*cos(1.34/180*tx);
	arr1[6]=ptr1[6]*cos(1.34/180*tx)-ptr1[7]*sin(1.34/180*tx);
	arr1[7]=ptr1[6]*sin(1.34/180*tx)+ptr1[7]*cos(1.34/180*tx);

	arr2[0]=ptr2[0]*cos(1.34/180*tx)-ptr2[1]*sin(1.34/180*tx);
	arr2[1]=ptr2[0]*sin(1.34/180*tx)+ptr2[1]*cos(1.34/180*tx);
	arr2[2]=ptr2[2]*cos(1.34/180*tx)-ptr2[3]*sin(1.34/180*tx);
	arr2[3]=ptr2[2]*sin(1.34/180*tx)+ptr2[3]*cos(1.34/180*tx);
	arr2[4]=ptr2[4]*cos(1.34/180*tx)-ptr2[5]*sin(1.34/180*tx);
	arr2[5]=ptr2[4]*sin(1.34/180*tx)+ptr2[5]*cos(1.34/180*tx);
	arr2[6]=ptr2[6]*cos(1.34/180*tx)-ptr2[7]*sin(1.34/180*tx);
	arr2[7]=ptr2[6]*sin(1.34/180*tx)+ptr2[7]*cos(1.34/180*tx);

	moveto(arr1[0],arr1[1]);
	lineto(arr1[2],arr1[3]);
	lineto(arr1[4],arr1[5]);
	lineto(arr1[6],arr1[7]);
	lineto(arr1[0],arr1[1]);

	moveto(arr2[0],arr2[1]);
	lineto(arr2[2],arr2[3]);
	lineto(arr2[4],arr2[5]);
	lineto(arr2[6],arr2[7]);
	lineto(arr2[0],arr2[1]);

	line(arr1[0],arr1[1],arr2[0],arr2[1]);
	line(arr1[2],arr1[3],arr2[2],arr2[3]);
	line(arr1[4],arr1[5],arr2[4],arr2[5]);
	line(arr1[6],arr1[7],arr2[6],arr2[7]);

}
void main()
{
	int gd=9,gm=1,mx,my,ch,arr1[8]={10,100,110,100,110,200,10,200},arr2[8]={30,130,140,130,140,230,30,230};
	clrscr();
	initgraph(&gd,&gm,"C:\\tc\\bgi");

	moveto(arr1[0],arr1[1]);
	lineto(arr1[2],arr1[3]);
	lineto(arr1[4],arr1[5]);
	lineto(arr1[6],arr1[7]);
	lineto(arr1[0],arr1[1]);

	moveto(arr2[0],arr2[1]);
	lineto(arr2[2],arr2[3]);
	lineto(arr2[4],arr2[5]);
	lineto(arr2[6],arr2[7]);
	lineto(arr2[0],arr2[1]);

	line(arr1[0],arr1[1],arr2[0],arr2[1]);
	line(arr1[2],arr1[3],arr2[2],arr2[3]);
	line(arr1[4],arr1[5],arr2[4],arr2[5]);
	line(arr1[6],arr1[7],arr2[6],arr2[7]);

	printf("Transformation:\n1. Translation\n2. Scaling\n3. Rotation");
	scanf("%d",&ch);
	if(ch==1)
	Trans(&arr1,&arr2);
	else if(ch==2)
	Scal(&arr1,&arr2);
	else if(ch==3)
	Rotat(&arr1,&arr2);
	else
	printf("invalid Choice");
	getch();
	closegraph();
}
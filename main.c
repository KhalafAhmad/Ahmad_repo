#include<stdio.h>
#include<stdlib.h>
#include"khalaf_sum.h"
int main(){
char check='y' ;	
while (check=='y'){
printf("Please Enter first Number: ");
int Num1 ;
int Num2 ;
scanf("%d",&Num1);
printf("Please enter second number: ");
scanf("%d",&Num2);
int total=KHALAF(Num1,Num2);
printf("The total resulte for your numbers is= %d\n",total);
printf ("You need try other? y/n: ");
scanf("%s",&check);
if (check=='n')
exit(0);
}
return 0;
}

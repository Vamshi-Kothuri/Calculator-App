#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
#include<math.h>

int n,m;
char a[10][10],f[10];
void first(char c);
void follow(char c);

int main(){
	int i,z=1;
	char ch,c;

	printf("Enter the NOof Productions-:");
	scanf("%d",&n);
	printf("Enter the productions-:");
	for(i=0;i<n;i++){
		scanf("%s%c",&a[i],&ch);
	}
	
while(z){
		m=0;
		printf("enter the which first and follow is to be find:");
		scanf("%c",&c);
		first(c);
		printf("first(%c):{",c);
		for(i=0;i<m;i++){
			printf("%c",f[i]);
		}
		printf("}\n");
		strcpy(f," ");
		m=0;
		follow(c);
		printf("follow(%c):{",c);
		for(i=0;i<m;i++){
			printf("%c",f[i]);
		}
		printf("}\n");
		printf("continue(0/1)?");
		scanf("%d%c",&z,&ch);
	}
	return 0;
}

void first(char c){
	if(islower(c)){// char->terminal
		f[m++]=c;
	}
	int k;
	
	for(k=0;k<n;k++){
		if(a[k][0]==c){
			if(a[k][2]=='$'){//epsilon cond($-->follow)
				follow(a[k][0]);
			}
			else if(islower(a[k][2])){//terminal
				f[m++]=a[k][2];
			}
			else{
				first(a[k][2]);//non-Terminal
			}
		}
	}
}

void follow(char c){
	if(a[0][0]==c)f[m++]='$';
	
	int i,j;
	for(i=0;i<n;i++){
		for(j=2;j<strlen(a[i]);j++){
			if(a[i][j]==c){
				if(a[i][j+1]!='\0'){
					first(a[i][j+1]);
				}
				if(a[i][j+1]=='\0' && c!=a[i][0]){
					follow(a[i][0]);
				}
			}
		}
	}
}


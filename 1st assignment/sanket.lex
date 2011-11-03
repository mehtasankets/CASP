%{
#include <stdio.h>
%}

%option noyywrap

%%
[a-z]+	{printf("Great work..!!!\n");};
%%

int main(void)
{
	yylex();
	return 0;
}

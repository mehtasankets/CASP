%%
[a-z]+	{printf("Great work..!!!\n")};
%%

main()
{
	yylex();
	return 0;
}

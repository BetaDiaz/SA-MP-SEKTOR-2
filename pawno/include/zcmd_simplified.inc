#define _zcmd_included
#define MAX_FUNC_NAME (15)

#define COMMAND:%1(%2)			\
			forward cmd_%1(%2); \
			public cmd_%1(%2)		
			
#define CMD:%1(%2) \
			COMMAND:%1(%2)

#define command(%1,%2,%3) \
			COMMAND:%1(%2, %3)

#define cmd(%1,%2,%3) \
			COMMAND:%1(%2, %3)

public OnPlayerCommandText(playerid, cmdtext[])
{
	new pos,funcname[MAX_FUNC_NAME];
	while (cmdtext[++pos] > ' ') 
	{
		funcname[pos-1] = tolower(cmdtext[pos]); 
	}
	format(funcname, sizeof(funcname), "c_%s", funcname);
	while (cmdtext[pos] == ' ')
	{
		pos++;
	}	
	if (!cmdtext[pos])
	{
		CallLocalFunction(funcname, "is", playerid, "\1");	
	}
	else
	{
		CallLocalFunction(funcname, "is", playerid, cmdtext[pos]);
	}
	return 1;
}
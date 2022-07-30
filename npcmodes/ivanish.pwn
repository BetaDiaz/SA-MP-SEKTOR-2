
#include <a_npc>

main(){	print("\n [BOT]Ivanish - init1");}

public OnNPCModeInit()
{
	print("\n [BOT]Ivanish - init");
}
//public OnNPCModeExit();

public OnNPCConnect(myplayerid)
{
	SetMyPos(242.932159, 1856.489990, 8.757813);
	SetMyFacingAngle(269.460266);

	printf("\n [BOT]Ivanish - connect",myplayerid);
}
public OnNPCSpawn()
{
    print("\n [BOT]Ivanish - spawn");
}


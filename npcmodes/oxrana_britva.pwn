#define RECORDING_NAME "oxrana_britva"
#define RECORDING_TYPE_OnFooT 2
#include <a_npc>

main()
{
	print(" [BOT]Armen_Britva\n");
}

public OnNPCModeInit()
{
}
public OnNPCModeExit()
{
}

public OnNPCConnect(myplayerid)
{
}
//public OnNPCDisconnect(reason[]);
public OnNPCSpawn()
{
	StartRecordingPlayback(RECORDING_TYPE_OnFooT, RECORDING_NAME);
	printf("SPAWN RECORD");
	
}
/*
public OnNPCEnterVehicle(vehicleid, seatid);
public OnNPCExitVehicle();
public OnClientMessage(color, text[]);
public OnPlayerDeath(playerid);
public OnPlayerText(playerid, text[]);
public;
public OnPlayerStreamOut(playerid);
public OnVehicleStreamIn(vehicleid);
public OnVehicleStreamOut(vehicleid);*/


public OnRecordingPlaybackEnd()
{
	StartRecordingPlayback(RECORDING_TYPE_OnFooT, RECORDING_NAME);
	printf("Playe BACK END");
}

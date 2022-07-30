#if !defined _INC_SSCANF
	#define _INC_SSCANF
#else
	#endinput
#endif

native sscanf(const data[], const format[], {Float,_}:...);

native SSCANF_Init(players, invalid, len);
native SSCANF_Join(playerid, const name[], npc);
native SSCANF_Leave(playerid);
native SSCANF_IsConnected(playerid);
native SSCANF_Option(const name[], value);

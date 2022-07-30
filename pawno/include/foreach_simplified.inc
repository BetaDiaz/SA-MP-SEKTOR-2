new Players[MAX_PLAYERS],ipe;
#define foreach(%0) for(new %0=Players[ipe],empl=ipe;empl>=0;--empl,%0=Players[ipe])
#define player_Add_To_Foreach(%0) ++ipe,Players[ipe]=%0;
#define player_remove_In_Foreach(%0) for(new i=ipe;i>=0;--i){if(Players[i]==%0){if(i<MAX_PLAYERS-1){Players[i]=Players[ipe];}--ipe;break;}}

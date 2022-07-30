#if defined FAST_foreach
	#endinput
#endif

#define FAST_foreach

#define Create_Iter<%0><%1> %0[%1],%0_last=1
#define Create_AIter<%0><%1><%2> %0[%1][%2],%0_last=1


#define foreach(%0,%1) for(new %1=%0[%0_last-1],element=%0_last-1;element!=0;--element,%1=%0[element])

#define foreachA(%0[%1],%2) for(new %2=%0[%1][%0_last-1],element=%0_last-1;element!=0;--element,%2=%0[%1][element])

#define Iter_Add(%0,%1) Iter_Added(%0, %1, %0_last)
#define Iter_AAdd(%0[%1],%2) Iter_Added(%0[%1], %2, %0_last)
stock Iter_Added(arrays[], iter, &lasti,sizecs=sizeof(arrays))
{
	if(lasti+1<sizecs)
	{
		arrays[lasti]=iter;
		++lasti;
	}
}
#define Iter_Remove(%0,%1) Iter_Removed(%0,%1,%0_last)
#define Iter_ARemove(%0[%1],%2) Iter_Removed(%0[%1],%2,%0_last)
stock Iter_Removed(arrays[],iter,&lasti)
{
	
	for(new i=lasti;i!=0;--i)
	{
		if(arrays[i]==iter)
		{
			
			--lasti;
			arrays[i]=arrays[lasti];
			break;
		}
	}	

}
//stock Iter_AAdded(arrays[][],iter,&lasti,sizecs=sizeof(arrays[]))

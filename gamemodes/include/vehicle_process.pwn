
CreateSektorVehicle(vehicletype, Float:x, Float:y, Float:z, Float:rotation, color1, color2, respawn_delay,Float:health);
{
	new vehicle_id=CreateVehicle(vehicletype, x, y, z, rotation, color1, color2, respawn_delay);
	SetVehicleNumberPlate(vehicle_id, "SEKTOR 2");
	SetVehicleHealth(vehicle_id, health);
	SetTimerEx("MainVehicle",40000,0,"d",vehicle_id);
	vInfo[vehicle_id][isValid]=true;
	return vehicle_id;
}
DestroySektorVehicle(vehicleid)
{
	vInfo[vehicleid][isValid]=false;
	memset(vInfo[vehicleid][inventory],0);
	vInfo[vehicleid][backpack]=false;
	vInfo[vehicleid][doors]=false;
	vInfo[vehicleid][pas_door]=false;
	vInfo[vehicleid][Engine]=false;
	vInfo[vehicleid][akum]=0;
	vInfo[vehicleid][benz]=0;
	vInfo[vehicleid][driveid]=0;
	return DestroyVehicle(vehicleid);
}


forward MainVehicle(vehicleid);
public MainVehicle(vehicleid)
{

	if(vInfo[vehicleid][isValid]==true)
	{
	    if(vInfo[vehicleid][Engine]==false)//если двигатель заглушен
	    {
	        if(vInfo[vehicleid][akum]>0)
	        {
	            --vInfo[vehicleid][akum];
	        }
	    }
	    else//движок заведен
	    {
	        if(vInfo[vehicleid][benz]>0)
	        {
	            --vInfo[vehicleid][benz];
	            if(vInfo[vehicleid][benz]==0)
	            {
	                if(vInfo[vehicleid][driveid]!=0)
	                {
	                    SendClientMessage(vInfo[vehicleid][driveid],0xFF0000AA,!"Бензобак пуст!");
	                }
	                
		            new engine, lights, alarm, dors, bonnet, boot, objective;
					GetVehicleParamsEx(vid, engine, lights, alarm, dors, bonnet, boot, objective);
					SetVehicleParamsEx(vid, 0, 0, 0, dors, bonnet, boot, objective);
	                SetVehicleVelocity(vid,0.0,0.0,0.0);
	            }
	        }
	    }
	    if(vInfo[vehicleid][driveid]!=0)//&&(vInfo[vehicleid][benz]!=0||vInfo[vehicleid][akum]!=0))
	    {
	    	new str_vehicle[8];
	    	
	    	new benzina=vInfo[vehicleid][benz];
	    	
	    	if(benzina<=16)
	    	{
	    	    format(str_vehicle,6,"~r~F");
	    	}
	    	else if(benzina<=32)
	    	{
	    	    format(str_vehicle,6,"~y~F");
	    	}
	    	else if(benzina<=50)
	    	{
	    	    format(str_vehicle,6,"~g~F");
	    	}
	    	
	    	new playerid=vInfo[vehicleid][driveid];
	    	
	    	PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][23],str_vehicle);

			new akummulator=vInfo[vehicleid][akum];
			
			if(akummulator<=33)
	    	{
	    	    format(str_vehicle,8,"~r~+/-");
	    	}
	    	else if(akummulator<=66)
	    	{
	    	    format(str_vehicle,8,"~y~+/-");
	    	}
	    	else if(akummulator<=100)
	    	{
	    	    format(str_vehicle,8,"~g~+/-");
	    	}
            PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][24],str_vehicle);
		}

		SetTimerEx("MainVehicle",40000,0,"d",vehicleid);

	}
	return 1;
	
}

forward UpdateSpeedometer(playerid);
public UpdateSpeedometer(playerid)
{
	if(pInfo[playerid][car_id] != INVALID_VEHICLE_ID)//если игрок в машине
	{
		new str_speed[10],
						Float:uvx,
						Float:uvy,
						Float:uvz;

		GetVehicleVelocity(pInfo[playerid][car_id],uvx, uvy, uvz);
		format(str_speed,10,"%d km/h",floatround(floatsqroot(floatpower(floatabs(uvx), 2.0) + floatpower(floatabs(uvy), 2.0) + floatpower(floatabs(uvz), 2.0)) * 105.0));//истинный алгоритм поиска скорости в точности как в оригинале
		PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][22],str_speed);
		SetTimerEx("UpdateSpeedometer",500,0,"d",playerid);
	}
}
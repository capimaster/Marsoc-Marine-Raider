#include "..\setUnitGlobalVars.sqf";

params["_isIntro"];
if (isNil "_isIntro") then {_isIntro = false};


if (isNil "UseEditorWeather") then {
	UseEditorWeather = false;
};




fnc_fullMoonDates = 
{
	private _year = param [0, 2035];
	private ["_date", "_phase", "_fullMoonDate"];
	private _fullMoonPhase = 1;
	private _waxing = false;
	private _fullMoonDates = [];
	for "_i" from dateToNumber [_year, 1, 1, 0, 0] to dateToNumber [_year, 12, 31, 23, 59] step 1 / 365 do
	{
		_date = numberToDate [_year, _i];
		_phase = moonPhase _date;
		call
		{
			if (_phase > _fullMoonPhase) exitWith
			{
				_waxing = true;
				_fullMoonDate = _date;
			};
			if (_waxing) exitWith 
			{
				_waxing = false;
				_fullMoonDates pushBack _fullMoonDate;
			};
		};
		_fullMoonPhase = _phase;
	};
	_fullMoonDates
};

MoonNight =  selectRandom (2035 call fnc_fullMoonDates);



if (!UseEditorWeather && isServer) then {
		if (!isNil("DateTimeWeather")) then {
			_year = DateTimeWeather select 0;
		    _month = DateTimeWeather select 1;
		    _day = DateTimeWeather select 2;
		    _hour = DateTimeWeather select 3;
		    _min = DateTimeWeather select 4;
		    setDate [_year, _month, _day, _hour, _min];
		    0 setOvercast (DateTimeWeather select 5);
		    0 setFog (DateTimeWeather select 6);
		}
		else {
			_year = 2035;
		    _month = 1;
		    _day = 1;
		    _hour = 12;
		    _min = 0;
		    
		    _WeatherOption = selectRandom WeatherOptions;
		    if (_isIntro) then {_WeatherOption = selectRandom [2,8,9,10,11]};
		    
		    if (_WeatherOption == 1) then { //Sunny Clear
				0 setOvercast 0;
		    	setDate Sunny;    
		 	};
		 	if (_WeatherOption == 2) then {  //Daytime Heavy Overcast
				0 setOvercast 1;
		    	setDate Sunny;    
		 	};
		 	if (_WeatherOption == 3) then { //Day average Overcast
				0 setOvercast 0.5;
		    	setDate Sunny;    
		 	};
			if (_WeatherOption == 4) then {   //Dark Night Clear
				0 setOvercast 0;
		    	setDate DarkNight;    
		 	};
		 	if (_WeatherOption == 5) then {  //Dark Night Heavy Overcast
				0 setOvercast 1;
		    	setDate DarkNight;    
		 	};
		 	if (_WeatherOption == 6) then {  //Dark Night Average overcast
				0 setOvercast 0.5;
		    	setDate DarkNight;   
		 	};
		 	if (_WeatherOption == 7) then {   //EarlyMorning
				0 setOvercast 0.6;
		    	setDate EarlyMorning;    
		 	};
			if (_WeatherOption == 8) then {   //moon Night Clear
				0 setOvercast 0;
		    	setDate MoonNight;    
		 	};
		 	if (_WeatherOption == 9) then {  //moon Night slight overcast
				0 setOvercast 0.4;
		    	setDate MoonNight;    
		 	};	    
		   	if (_WeatherOption == 10) then {  //moon Night heavy overcast
				0 setOvercast 1;
		    	setDate MoonNight;    
		 	};
		   	if (_WeatherOption == 11) then {  //Moon Night slight overcast
				0 setOvercast 1;
		    		setDate MoonNight;    
		 	};
			if (_WeatherOption == 12) then {  //Monsoon (Day)
				0 setOvercast 1;
				setDate Sunny;   
				null = [220,5000,false] execvm "AL_storm\al_monsoon.sqf";   
		 	};		
		};
	    	



	forceWeatherChange;
	    
};    
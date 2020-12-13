// by ALIAS
// null = [] execVM "AL_movie\cut_scene_1.sqf";
// Tutorial: https://www.youtube.com/aliascartoons

//waitUntil {!isnil "video_done"};if (video_done) exitWith {};

if (!hasInterface) exitWith {};
cutText ["", "BLACK IN", 0];

/* ----- how to use camera script -----------------------------------------------------------------------

_camera_shot = [position_1_name, position_2_name, target_name, duration, zoom_level1, zoom_level_2, attached, x_rel_coord, y_rel_coord, z_rel_coord,screen_effect,transition_effect,transition_duration,sound_file_name] execVM "AL_movie\camera_work.sqf";

Where
_camera_shot	- string, is the name/number of the camera shot, you can have as many as you want see examples from down bellow
position_1_name - string, where camera is created, replace it with the name of the object you want camera to start from
position_2_name - string, the object where you want camera to move, if you don't want to move from initial position put the same name as for position_1_name
target_name   	- string, name of the object you want the camera to look at
duration 		- seconds, how long you want the camera to function on current shot
zoom_level_1 	- takes values from 0.01 to 2, FOV (field of view) value for initial position
zoom_level_2	- takes values from 0.01 to 2, FOV value for second position, if you don't to change you can give the same value as you did for zoom_level_1
attached		- boolean, if you want to attach camera to an moving object its value has to be true, otherwise must be false
					in this case position_1_name must have the same value as position_2_name
x_rel_coord		- meters, relative position to the attached object on x coordinate
y_rel_coord		- meters, relative position to the attached object on y coordinate
z_rel_coord		- meters, relative position to the attached object on z coordinate

screen_effect	- predefined values: "none", "nightvision", "thermal", "blackwhite", "grain", "blur", "wet","chromatic","invert"

transition_effect	- transition between shots, predefined values: "none", "black","white", "blur"

transition_duration	- seconds, the duration of transition between shots

sound_effect	- "NoSound" or sound file name you want to play during shots, be aware the file needs to exist under mission folder and must be defined in description.ext

last_shot		- boolean, true if is the last shot in your movie, false otherwise

====================== TEXT ========================================================================================
null = [_title_text,_title_duration,_title_pozition,_text_size,_text_color] execVM "AL_movie\txt_display.sqf";
title_text		- string, text you want to display on the screen
title_duration	- seconds, how long the text stays on screen
title_pozition	- predefined values: "top_right", "middle_right", "bottom_right", "center", "center_bottom", "center_top", "left_bottom", "left_middle", "left_top"
text_size		- number, text size
-----------------------------------------------------------------------------------------------------------*/

// - do not edit or delete the lines downbelow, this line must be before first camera shot
loopdone = false;
while {!loopdone} do {
//^^^^^^^^^^^^^^^^^^^^^^ DO NOT EDIT OR DELETE ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


// EXAMPLES------ insert your lines for camera shots starting from here -----------------------------------------

// text
_txt_1 = ["DEMO Cutscene",5,"center","3","#FFF000"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_firstshot = [cam1, cam2, target1, 7, 0.5, 0.5, false, 0, 0, 0,"grain","black",4,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _firstshot};

// text
_txt_2 = ["Based on the movie SHOOTER",5,"center_bottom","1","#FF0000"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_secondshot = [u1, u1, target2, 5, 0.7, 0.7, true, 12, 50, -20,"grain","none",0,"uav1",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _secondshot};

// text
_txt_3 = ["Ingame Cutscene made with Movie Maker Script",30,"top_right","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_thirdshot = [hq, hq, hq, 4, 0.7, 0.7, true, 0.3, -0.18, 0.85,"none","black",0,"op1",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _thirdshot};

// text
_txt_4 = ["You can place the text here too",5,"left_top","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_4thshot = [u1, u1, target2, 5, 0.7, 0.7, true, 12, 30, -10,"grain","none",0,"uav2",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _4thshot};

// text
_txt_5 = ["Your text can have different color and size for each shot",5,"left_bottom","1","#FF0000"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_5thshot = [u1, u1, target3, 7, 0.2, 0.2, true, 12, 30, -300,"thermal","none",0,"op2",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _5thshot};

// text
_txt_6 = ["You can have a different screen effect for each shot or none",7,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_6thshot = [cam3, cam4, s1, 8, 0.7, 0.7, false, 0, 0, 0,"none","none",0,"snip1",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _6thshot};

// text
_txt_7 = ["For each shot you can have a different sound played or none",5,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_7thshot = [s2, s2, car1, 7, 0.7, 0.05, true, 0.2, -0.2, 1,"none","white",0,"snip2",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _7thshot};

// text
// no text here
// -------------------------------------
_8thshot = [cam3, cam3, s1, 2, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"snip3",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _8thshot};

// text
// no text here
// -------------------------------------
_9thshot = [car1, car1, target1, 5, 0.7, 0.7, true, -6, -6, 0.3,"none","white",0,"snip4",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _9thshot};

// text
// no text here
// -------------------------------------
_91thshot = [cam4, cam4, s2, 2, 0.7, 0.7, true, 0, 0, 0,"none","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _91thshot};

// text
// no text here
// -------------------------------------
_10thshot = [cam5, cam5, s1, 2, 0.7, 0.7, true, 0, 0, 0,"none","none",0,"snip5",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _10thshot};


// text
// no text here
// -------------------------------------
_11thshot = [cam4, cam4, s1, 3, 0.7, 0.7, true, 0, 0, 0.5,"none","none",0,"snip6",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _11thshot};

// text
// no text here
// -------------------------------------
_12thshot = [cam5, cam5, s1, 6, 2, 2, true, 0, 0, 0,"none","white",1,"none",TRUE] execVM "AL_movie\camera_work.sqf";
s1 doFire car1;
waitUntil {scriptdone _12thshot};

// --------------->> end of camera shots <<---------------------------------------------------------
};
cutText [" ", "BLACK IN", 3];
_camera = "camera" camCreate (getpos player);
_camera cameraeffect ["terminate", "back"];
camDestroy _camera;
"dynamicBlur" ppEffectEnable true;   
"dynamicBlur" ppEffectAdjust [100];   
"dynamicBlur" ppEffectCommit 0;     
"dynamicBlur" ppEffectAdjust [0.0];  
"dynamicBlur" ppEffectCommit 4;
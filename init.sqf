// TODO: Initialize and preload
#include "scripts\arjay\arjay_kickstart.sqf"

[] spawn
{
	// wait 3 seconds on mission start to issue the first task
	sleep 3;
	
	// when the mission starts give the player a task to walk to the position of a marker
	// once the task is completed call back to a function called task1Complete
	// when the player is within 50 meters of the marker the task will be completed
	[
		player, 
		"task_briefing_mark", 
		"Go to the field office", 
		"You've been asked to come in to the field office for an assignment.", 
		"taskBriefingComplete", 
		50
	] call arjay_moveToTask;

task1Complete = 
{
	// create a new task to walk to the position of a target object (uncleBob)
	// once the task is completed call back to a function called task2Complete
	// when the player is within 2 meters of uncleBob the task will be completed
	[player, ai_agent_0, "Speak with Agent Garner", "Get your assignment from Agent Garner", "taskMeetGarnerComplete", 2] call arjay_moveToTask;
};



};

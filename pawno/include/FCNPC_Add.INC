// FCNPC - Funções adicionais
// By ForT / dimmy_scarface

/*
native FCNPC_CreateMovement(npcid);
native FCNPC_AddMovement(npcid, Float:x, Float:y, Float:z);
native FCNPC_PlayMovement(npcid, type=MOVE_TYPE_RUN);
*/

#include <a_samp>
#include <FCNPC>

#define MAX_MOVEMENTS_NODES   (350)
#define MAX_RANDOM_MOVEMENT   (0.01)
#define RANDOM_SPEED_MOVEMENT (0.0)

stock Float:frandnorm(const RAND_MAX = 32767)
{
	//Using C's RAND_MAX constant, make a random number up to RAND_MAX and
	//divide it by RAND_MAX, normalizing it (higher RAND_MAX = higher precision)
	return Float:random(RAND_MAX) / Float:RAND_MAX;
}

stock Float:frandom(const Float:max)
{
	//Result will never exceed max, because we're multiplying a normalized (0 .. 1) value
	//by the max (which will only ever give max or less)
	return (frandnorm() * max);
}

enum fcnpcEnum {

	// Velocidade/tipo do movimento
	movType,
	
	// Real velocidade do movimento
	Float:movSpeed,

	// Node atual
	movCur,
	
	// Total de nodes
	movNodes,
	
	// Stop delay
	movStopDelay,

	// Posições
	Float: movX[MAX_MOVEMENTS_NODES],
	Float: movY[MAX_MOVEMENTS_NODES],
	Float: movZ[MAX_MOVEMENTS_NODES],
}
static movInfo[MAX_PLAYERS][fcnpcEnum];

stock FCNPC_CreateMovement(npcid) {

	if (!IsPlayerNPC(npcid) || FCNPC_IsDead(npcid)) return 0;

	movInfo[npcid][movCur]   = -1;
	movInfo[npcid][movNodes] = -1;
	
	for(new nodes; nodes != MAX_MOVEMENTS_NODES; nodes++) {
		movInfo[npcid][movX][nodes] = 0.0000;
		movInfo[npcid][movY][nodes] = 0.0000;
		movInfo[npcid][movZ][nodes] = 0.0000;
	}

	return 1;
}

stock FCNPC_AddMovement(npcid, Float:x, Float:y, Float:z) {

    if (!IsPlayerNPC(npcid) || FCNPC_IsDead(npcid)) return 0;
    
    if (movInfo[npcid][movNodes] < MAX_MOVEMENTS_NODES - 1) {

	    movInfo[npcid][movNodes] ++;

		movInfo[npcid][movX][movInfo[npcid][movNodes]] = x;
		movInfo[npcid][movY][movInfo[npcid][movNodes]] = y;
		movInfo[npcid][movZ][movInfo[npcid][movNodes]] = z;
	}
    
    return 1;
}

stock FCNPC_PlayMovement(npcid, type = FCNPC_MOVE_TYPE_RUN, Float:speed = FCNPC_MOVE_SPEED_RUN, delaystop = 250) {

//	#pragma unused speed

	if (!IsPlayerNPC(npcid) || FCNPC_IsDead(npcid)) return 0;
	
	movInfo[npcid][movCur]  = 0;
	movInfo[npcid][movType] = type;
	movInfo[npcid][movSpeed] = speed;
	movInfo[npcid][movStopDelay] = delaystop;
	
	FCNPC_GoTo(npcid, movInfo[npcid][movX][0], movInfo[npcid][movY][0], movInfo[npcid][movZ][0], movInfo[npcid][movType], .speed = speed, .stopdelay = 0);
	
	return 1;
}

public FCNPC_OnReachDestination(npcid) {

	movInfo[npcid][movCur] ++;

	if (movInfo[npcid][movCur] > movInfo[npcid][movNodes]) {

		#if defined FCNPC_OnMovementEnd
		    FCNPC_OnMovementEnd(npcid);
		#endif
		return 1;
	}

	if (movInfo[npcid][movCur] >= movInfo[npcid][movNodes])
	{
	    FCNPC_GoTo(npcid, movInfo[npcid][movX][movInfo[npcid][movCur]], movInfo[npcid][movY][movInfo[npcid][movCur]], movInfo[npcid][movZ][movInfo[npcid][movCur]], movInfo[npcid][movType], .speed = movInfo[npcid][movSpeed], .stopdelay = 250);
	} else {
	    FCNPC_GoTo(npcid, movInfo[npcid][movX][movInfo[npcid][movCur]], movInfo[npcid][movY][movInfo[npcid][movCur]], movInfo[npcid][movZ][movInfo[npcid][movCur]], movInfo[npcid][movType], .speed = movInfo[npcid][movSpeed], .stopdelay = 0);
	}

	#if defined g_FCNPC_OnReachDestination
	    return g_FCNPC_OnReachDestination(npcid);
	#else
	    return 1;
	#endif
}
#if defined _ALS_FCNPC_OnReachDestination
	#undef FCNPC_OnReachDestination
#else
	#define _ALS_FCNPC_OnReachDestination
#endif
#define FCNPC_OnReachDestination g_FCNPC_OnReachDestination
#if defined g_FCNPC_OnReachDestination
	forward g_FCNPC_OnReachDestination(npcid);
#endif

forward FCNPC_OnMovementEnd(npcid);

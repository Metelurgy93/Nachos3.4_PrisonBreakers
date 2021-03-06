//     Test FCFS scheduling
//
#include "system.h"
#include "list.h"
#include "testcase.h"
#include "math.h"

//extern void TestScheduler( int );

//----------------------------------------------------------------------
// ThreadTest0
//      FCFS algorithm
//      Order of arrival: A, B, C, D, E, F, G, H, I
//      Process  Burst Time  Arrival Time
//        TA         7		  0
//        TB         2		  0
//        TC         5		  0
//        TD        12	       	 70	
//        TE        15		 70
//        TF         1	         70
//        TG         2		400
//        TH         3		400
//        TI         8		400
//----------------------------------------------------------------------

void
ThreadTest0()
{
 
    int  numThreads = 5;
    int  startTime[] = {   0,   4,   2,  7,  5 };
    int  burstTime[] = {   7,   2,   5,  12,  15 };
    int   priority[] = {   0,   0,   0,   0,   0 };
    schedpair * a_pair;

    List<schedpair *> * procList = new List<schedpair *>();

    for( int i = 0; i < numThreads; i++ ) {
       a_pair = new schedpair;
       a_pair->burst = burstTime[i];
       a_pair->prior = priority[i];
       a_pair->arrival = startTime[i];
       procList->SortedInsert( a_pair, startTime[i] );
    }

    scheduler->SetSchedPolicy(SCHED_FCFS);

    printf("Starting at ");
    stats->PrintElapsedTicks();
    printf("Queuing threads.\n");

    TestScheduler( ( int ) procList );


}


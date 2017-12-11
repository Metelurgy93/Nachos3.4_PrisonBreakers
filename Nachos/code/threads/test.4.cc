//     SJF scheduling
//
#include "system.h"
#include "list.h"
#include "testcase.h"

//----------------------------------------------------------------------
// ThreadTest4
//      SJF scheduling algorithm
//      Process  Burst Time   priority  Arrival
//        P1        10          3		0
//        P2        29          1		0
//        P3        18          2		0
//        P4         7          2		0
//        P5        23          1		0
//----------------------------------------------------------------------

void ThreadTest4() {

	int numThreads = 5;
    int  startTime[] = {   0,   4,   2,  7,  5 };
    int  burstTime[] = {   7,   2,   5,  12,  15 };
	int priority[] = { 0, 0, 0, 0, 0 };
	schedpair * a_pair;
	List<schedpair *> * procList = new List<schedpair *>();

	for (int i = 0; i < numThreads; i++) {
		a_pair = new schedpair;
		a_pair->burst = burstTime[i];
		a_pair->prior = priority[i];
		a_pair->arrival = startTime[i];
		procList->SortedInsert(a_pair, burstTime[i]);
	}

	scheduler->SetSchedPolicy(SCHED_SJF);

	printf("Starting at ");
	stats->PrintElapsedTicks();
	printf("Queuing threads.\n");

	TestScheduler((int) procList);
}


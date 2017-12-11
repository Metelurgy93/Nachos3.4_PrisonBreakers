// This switches among the various testcases...
#include <string.h>
#include <stdio.h>
#include "system.h"
#include "list.h"
#include "synch.h"
#include "testcase.h"

int waitingTime[5];
int arrivalTime[5];
int priority[5];
int j = 0;
int policyNum = 0;
float totalWaitingTime = 0.0;
Thread *oldthread;
bool IsChanged = false;
List<schedpair *> * ProcessList;

void ThreadTest(char *name) {
	char *basename = strrchr(name, '/');

	if (basename != NULL) // if there was a path to trim,
		name = basename + 1;  // trim it (lose the '/' too).
	if (!strcmp(name, "nachos")) // from the name, deduce the test to run
		ThreadTest0();            // and run it.
	else if (!strcmp(name, "test0"))
		ThreadTest0();
	else if (!strcmp(name, "test1"))
		ThreadTest1();
	else if (!strcmp(name, "test2"))
		ThreadTest2();
	else if (!strcmp(name, "test3"))
		ThreadTest3();
	else if (!strcmp(name, "test4"))
		ThreadTest4();
	else
		printf("OOPS: I'm called %s ???\n", name);
}

//----------------------------------------------------------------------
// SimulateThreadWork
//      Each thread has a loop whose size reflects the burst time of the
//      job
//----------------------------------------------------------------------

static void SimulateThreadWork(int burst) {
	int turnaroundTime = 0;
	int responseTime = 0;
	int completionTime = 0;
	int burstTime = burst;

	if (!IsChanged && j == 5) {
		j = 0;
		IsChanged = true;
	}

	currentThread->Print();
	printf("Starting Burst of %d ", burstTime);
	stats->PrintElapsedTicks();

	responseTime = stats->totalTicks - arrivalTime[j];

	while (burst--) {
		interrupt->OneTick();
		currentThread->Print();
		printf("Still %d to go ", burst);
		stats->PrintElapsedTicks();
	}

	completionTime = stats->totalTicks;

	turnaroundTime = completionTime - arrivalTime[j];
	waitingTime[j] = turnaroundTime - burstTime;

	currentThread->Print();
	printf("Done with burst ");
	printf("\nArrival Time: %d", arrivalTime[j]);
	printf("\nBurst Time: %d", burstTime);
	printf("\nCompletion Time: %d", completionTime);
	printf("\nTurnAround Time: %d", turnaroundTime);
	printf("\nWaiting Time: %d", waitingTime[j]);
	printf("\nResponse Time: %d\n", responseTime);
	j++;

}

//-------------------------------------------------------------------
// TestScheduler
//
//     Schedules each thread when it is time for it to arrive.
//
//------------------------------------------------------------------

void TestScheduler(int inBound) {
	List<schedpair *> * procList = (List<schedpair *> *) inBound;
	ProcessList = procList;
	static char name[] = "threadA";
	int StartTime;
	int NextStartTime;

	waitingTime[0] = 0;
	// fork any threads that are ready.
	while ((procList->SortedPeek(&StartTime) != NULL)
			&& (stats->totalTicks >= StartTime)) {
		// Schedule it.
		schedpair * alpha = procList->SortedRemove(NULL);
		Thread *newOne = new Thread(name, alpha->prior);
		printf("Queuing thread %s at Time %d, priority %d\n", name,
				stats->totalTicks, alpha->prior);
		arrivalTime[j] = alpha->arrival;

		newOne->Fork(SimulateThreadWork, alpha->burst);

		delete alpha;
		name[6]++;
		j++;

		// more work later so schedule yourself again.
		if ((procList->SortedPeek(&NextStartTime) != NULL)
				&& (stats->totalTicks < NextStartTime))
			interrupt->Schedule(TestScheduler, inBound,
					NextStartTime - stats->totalTicks, TimerInt);

	}
}


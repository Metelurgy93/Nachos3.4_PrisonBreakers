// testcase.h 

#ifndef TESTCASE_H
#define TESTCASE_H

typedef struct { int burst; int prior; int arrival;} schedpair ;

void ThreadTest0();
void ThreadTest1();
void ThreadTest2();
void ThreadTest3();
void ThreadTest4();

void TestScheduler( int );
#endif // TESTCASE_H

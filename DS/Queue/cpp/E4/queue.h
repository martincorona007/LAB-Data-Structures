#ifndef queue_h
#define queue_h

class queue{
	char n;
	char s;
	char *list;

	
	public:
        queue(char);
        ~queue();
		void enqueue(char);
		char dequeue();
		char front();
		char capacity();
		char size();
		void clear();
		bool empty();
		bool full();
		void files();
};

#endif

#include <pthread.h>

class Semaphore
{
    private:
        bool signaled;
        pthread_mutex_t m; 
        pthread_cond_t c;

        void Lock() {pthread_mutex_lock(&m);}
        void Unlock() {pthread_mutex_unlock(&m);}
    public :
        Semaphore(bool s=1)
        {
            signaled = s;
            pthread_cond_init(&c,NULL);
            pthread_mutex_init(&m,NULL);
        }
        void P()
        {
            Lock();
            while(!signaled)
            {
                pthread_cond_wait(&c,&m);
            }
            signaled = false;
            Unlock();
        }
        void V()
        {
            bool previously_signaled;
            Lock();
            previously_signaled = signaled;
            signaled = true;
            Unlock();
            if(!previously_signaled)
                pthread_cond_signal(&c);
        }
};
            
        

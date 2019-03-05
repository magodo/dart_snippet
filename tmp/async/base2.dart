import 'dart:async';

void main() {
    new Future(()=>21)
            /* output 21 first, because this future is put into queue before next future.
             * once this future is handled, its then(s) are handled synchronously. */
    //        .then(print);  
            /* output 'hello' first, although this future is put into queue first,
             * once it is handled, it create anther(3rd) future and put it in queue and return
             * control to event loop. then event loop just pick the second futuer and handle it,
             * which print "hello" */
            .then((v)=>new Future(()=>print(v))); // output 'hello' first
    new Future(()=>print("hello"));
}

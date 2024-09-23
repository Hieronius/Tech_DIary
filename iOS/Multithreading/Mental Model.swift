/**

 `Mental Model of Concurrency and GCD in Swift`

 Ok, let's summarize

 We use a mental model of high tech logistic facility from Tarsonis in Starcraft Universe

 The whole facility is the huge and gigantic area that can be changed accordingly to your specific situations

 `Key Entities`

 1. `Train (Thread)`
 2. `Train's function to carry the Wagons (Sync Task)`
 3. `Train's function to push the Wagons (Async Task)`
 2. `Single Line Electric Railroad (Serial Queue)`
 3. `Multi Line Electric Railroad (Concurrent Queue)
 3. `Emergency Line (MainSerialQueue)
 4. `Emergency Train (MainThread)`
 5. `Supply or Wagon (Body of the Task)`
 6. `Priority of the supply (Task QoS)`
 7. `Priority of the line (Queue QoS)`
 8. `Train Depo (Thread Pool)
 9. `End of Destination (Task has been completed)`
 10. `Energy Fuel (events in RunLoop which are running each quant of the time`
 11. `Particles and details for facility maintenance (UI-related Tasks)`


 `Entities to Add`

 1. `Concurrency Problems`
 2. `GCD tools`
 3. `Operations tools`
 4. `Async @ Await functionality`
 5. `Actors`


 Each Single Line railroad has only 1 train, and Multi Line railroad has a much trains as lines in it
 You can schedule only async tasks on the emergency line but can schedule lot of sync tasks on the other serial queues without deadlock
 When you use sync tasks it's blocks the THREAD not the QUEUE, so if there is a single thread QUEUE (Serial) it will block the queue
 You can pass any amount of tasks to concurrent queue doesn't matter async or sync they will be, there is always enough trains to set for even blocking tasks (sync)
 For Mental Model let's use approximate amount of threads such as 8 for concurrent Queues
 Define rail roads in the scheme by it's priorities
 Seems like if you define 4 sync tasks and 4 async tasks which are sync will block other until they are done. Apple is quite stuped to say that you can utilize multiple threads in concurrent queue but by using sync you actually block ONLY 1 THREAD AND THE WHOLE QUEUE AS WELL




 */

let index = 1

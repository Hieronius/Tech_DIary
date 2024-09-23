import Foundation

/*
 MARK: ViewController LifeCycle

 1. Init()
 2. loadView()
 3. viewDidLoad() - good for constraints but don't use width/heigth
 4. viewWillAppear() - good for loading data from data base/server and to update UI bases on this data
 5. viewDidAppear() - calls AFTER you see your view on the screen
 5. viewWillLayoutSubViews() OPTIONAL - example (change app orientation to trigger it). Won't trigger by itself
 (might be triggered initially after viewDidLoad)
 Can be also used for methods like layoutIfNeeded and setLayoutSubViews
 6. viewDidLayoutSubViews() OPTIONAL - example (change app orientation to trigger it). Won't trigger by itself
 (might be triggered initially after viewDidLoad)
 7. viewWillDisappear() - good place to stop some tasks which are shouldn't run while this View is not on the screen
 8. deinit() - be careful with controllers in NavigationStack - they are not release so easily
 9. didReceiveMemoryWarning() OPTIONAL - if there is not enough memory to hold an app
 */

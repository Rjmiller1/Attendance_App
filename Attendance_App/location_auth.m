/*
   1. Add NSLocationWhenInUseageDescription key and
      NSLocationAlwaysAndWhenInUseUsageDescription key to
      Info.plist file

   2. Add NSLocationAlwaysUsageDescription key to 
      Info.plist

   3. Create and configure CLLocationManager object

   4. Call the requestWhenInUseAuthorization() initially
      to enable app's basic location support

   5. Call the requestAlwaysAuthorization() method only
      when the user enables a feature of your app that requires
      that level of authorization
*/





/*
   NSLocation AlwaysAndWhenInUseDescription key
   Info.plist file
*/


let locationManager = CLLocationManager()   

func enableLocationServices() {

   locationManager.delegate = self
        
   switch CLLocationManager.authorizationStatus() {
      case .notDetermined:
         // Request when-in-use authorization initially
         locationManager.requestWhenInUseAuthorization()
         break
            
      case .restricted, .denied:
         // Disable location features
         disableMyLocationBasedFeatures()
         break
            
      case .authorizedWhenInUse:
         // Enable basic location features
         enableMyWhenInUseFeatures()
         break
            
      case .authorizedAlways:
         // Enable any of your app's location features
         enableMyAlwaysFeatures()
         break
      }
   }      


func escalateLocationServiceAuthorization() {
   if (CLLocationManager.authorizationStatus() == .authorizedWhenInUse) {
      locationManager.requestWhenInUseAuthorization()
   }
}


func locationManager(_ manager: CLLocationManager, 
                     didChangeAuthorization status: CLAuthorizationStatus) {   
   switch status {
      case .restricted, .denied:
         // Disable your app's location features
         disableMyLocationBasedFeatures()
         break
            
      case .authorizedWhenInUse:
         // Enable only your app's when-in-use features.
         enableMyWhenInUseFeatures()
         break
            
      case .authorizedAlways:
         // Enable any of your app's location services.
         enableMyAlwaysFeatures()
         break
            
      case .notDetermined:
         break
   }
}












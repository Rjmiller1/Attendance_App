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
}
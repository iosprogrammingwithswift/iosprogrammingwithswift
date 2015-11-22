// Playground - noun: a place where people can play

import UIKit

var a = NSDate(timeIntervalSince1970: NSTimeInterval(1421509845))
println(a)

enum WeatherIcon:String {
    
    case Rain = "Rainy"
    case Cloud = "Cloudy"
    case Sun = "Sunny"
    case SunnyWithClouds = "SunnyWithClouds"
    var image: UIImage{
        return UIImage(named: self.rawValue)!
    }
    
}


var loc = Location(ID: 121739, name: "Würzburg", lat: 49.79, lon: 9.94, message: "Fehler", country: "Germany", sunrise: 1421478603, sunset: 1421509845)

var weather = Weather(dt: 1421509845,temp: 275.65, humidity: 94, temp_min: 273.15, temp_max: 277.25, pressure: 1019.162, weatherIcon: "rain", sea_level:0, grnd_level:0)




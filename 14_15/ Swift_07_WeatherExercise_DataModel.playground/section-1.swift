// Playground - noun: a place where people can play

import UIKit
import MapKit

enum WeatherMain: String {
    case Rain = "Rainy"
    case Clouds = "Cloudy"
    case Sun = "Sunny"
    case SunnyWithClouds = "SunnyWithClouds"
    var img: UIImage {
        return UIImage(named: self.rawValue)!
    }
}

class Weather {
    let DT: NSDate
    let temp: Double
    let humidity: Int
    let temp_min: Double
    let temp_max : Double
    let pressure: Int
    let seaLevel: Int
    let groundLevel: Int
    let weatherMain: WeatherMain
    
    
    init(DT: Int,
        temp: Double,
        humidity: Int,
        temp_min: Double,
        temp_max: Double,
        pressure: Int,
        seaLevel: Int,
        groundLevel: Int,
        weatherMain: String) {
            
            self.DT = NSDate(timeIntervalSince1970: NSTimeInterval(DT))
            self.temp = temp - 273.15
            self.humidity = humidity
            self.temp_min = temp_min - 273.15
            self.temp_max = temp_max - 273.15
            self.pressure = pressure
            self.seaLevel = seaLevel
            self.groundLevel = groundLevel
            switch weatherMain {
            case "Rain":
                self.weatherMain = .Rain
            case "Clouds":
                self.weatherMain = .Clouds
            case "Sun":
                self.weatherMain = .Sun
            default:
                self.weatherMain = WeatherMain.SunnyWithClouds
            }
    }
    
}

class Location {
    let ID: Int
    let name: String
    let coordinates: CLLocationCoordinate2D
    let message : String
    let country: String
    let sunrise: NSDate
    let sunset: NSDate
    let weather: Weather
    
    init(ID: Int,
        name: String,
        lat: CLLocationDegrees,
        lon: CLLocationDegrees,
        message: String,
        country: String,
        sunrise: Int,
        sunset: Int,
        weather: Weather) {
            
            self.ID = ID
            self.name = name
            //        self.coordinates = CLLocationCoordinate2DMake(lat, lon)
            self.coordinates = CLLocationCoordinate2D(latitude: lat, longitude: lon)
            self.message = message
            self.message = message
            self.country = country
            self.sunrise = NSDate(timeIntervalSince1970: NSTimeInterval(sunrise))
            self.sunset = NSDate(timeIntervalSince1970: NSTimeInterval(sunset))
            self.weather = weather
    }
    
}

var weather = Weather(DT: 1421487086, temp: 275.65, humidity: 94, temp_min: 273.15, temp_max: 277.25, pressure: 1019, seaLevel:1019, groundLevel: 1019, weatherMain: "Rain")

var loc = Location(ID: 121739, name: "Würzburg", lat: 49.79, lon: 9.94, message: "Fehler", country: "Germany", sunrise: 1421478603, sunset: 1421509845, weather: weather)














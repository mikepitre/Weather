//
//  weather.swift
//  Weather
//
//  Created by Mike Pitre on 11/16/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import Foundation
import Alamofire

class Weather
{
    private var _condition: String!
    private var _temp: String!
    private var _humidity: String!
    private var _wind: String!
    
    var condition: String
        {
        return _condition
        }
    
    var temp: String
        {
        return _temp
        }
    
    var humidity: String
        {
        return _humidity
        }
    
    var wind: String
        {
        return _wind
        }

    func getWeather(completed: DownloadComplete)
        {
        let url = "\(OPEN_WEATHER_URL)\(AUSTIN_ID)\(OPEN_WEATHER_KEY)"
        Alamofire.request(.GET, url).responseJSON
            {
            response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, AnyObject>
                {
                if let condition = dict["weather"]![0]["main"] as? String
                    {
                    self._condition = condition.lowercaseString
                    print(self._condition)
                    }
                if let temp = dict["main"]!["temp"] as? Int
                    {
                    self._temp = "\(temp)"
                    print(self._temp)
                    }
                if let humidity = dict["main"]!["humidity"] as? Int
                    {
                    self._humidity = "\(humidity)"
                    print(self._humidity)
                    }
                if let wind = dict["wind"]!["speed"] as? Int
                    {
                    self._wind = "\(wind)"
                    print(self._wind)
                    }
                }
                completed()
            }
        }

}

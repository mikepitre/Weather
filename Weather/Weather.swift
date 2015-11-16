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
        
        }

}

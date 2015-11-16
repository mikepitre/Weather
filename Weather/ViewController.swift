//
//  ViewController.swift
//  Weather
//
//  Created by Mike Pitre on 11/15/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var weather = Weather()
    
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var tempLbl: UILabel!
    @IBOutlet weak var humidityLbl: UILabel!
    @IBOutlet weak var windLbl: UILabel!
    
    override func viewDidAppear(animated: Bool)
        {
        weather.getWeather
            { () -> () in
            self.updateUI()
            }
        }
    
    func updateUI()
        {
        if (weather.condition.rangeOfString("clear") != nil)
            {
            weatherImg.image = UIImage(named: "clear")
            }
        else
        if (weather.condition.rangeOfString("cloud") != nil)
            {
            weatherImg.image = UIImage(named: "cloudy")
            }
        else
        if (weather.condition.rangeOfString("rain") != nil)
            {
            weatherImg.image = UIImage(named: "rain")
            }
        else
        if (weather.condition.rangeOfString("snow") != nil)
            {
            weatherImg.image = UIImage(named: "snow")
            }
        else
        if (weather.condition.rangeOfString("storm") != nil)
            {
            weatherImg.image = UIImage(named: "thunder")
            }
            
        tempLbl.text = "\(weather.temp)°"
        humidityLbl.text = "\(weather.humidity)%"
        windLbl.text = "\(weather.wind) mph"
        }

    override func viewDidLoad()
        {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }

    override func didReceiveMemoryWarning()
        {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }


}


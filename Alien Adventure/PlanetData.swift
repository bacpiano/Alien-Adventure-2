/*
 PlanetData.swift
 Alien Adventure
 Created by Jarrod Parkes on 10/4/15.
 Copyright © 2015 Udacity. All rights reserved.
 */
//I WISH I COULD FIGURE OUT HOW TO FOLD COMMENTS - IT DOES NOT SEEM TO WORK IN X-CODE.
import Foundation

extension Hero {
    //function takes one parameter of String type called dataFile
    //function returns a String
    func planetData(dataFile: String) -> String {
        //open JSON file
        //use the dataFile parameter and the NSBundle.mainBundle().URLForResource() method.
        let fileUrl = NSBundle.mainBundle().URLForResource(dataFile+".json", withExtension: nil)
        let contentsOfFile = NSData(contentsOfURL: fileUrl!)! as NSData
        var  planetName = ""
        
        //do catch statement for exception handling
        do {
            let planetsArry = try NSJSONSerialization.JSONObjectWithData(contentsOfFile, options: NSJSONReadingOptions.AllowFragments) as! [[String:AnyObject]]
            var heighestPoint = 0
            
            //calculate the total points for each planet
            for dict in planetsArry {
                var points = 0
                if let num: NSNumber = dict["LegendaryItemsDetected"] as? NSNumber {
                    let numValue = Int(num.intValue)
                    points = points + (numValue*4)
                }
                if let num: NSNumber = dict["RareItemsDetected"] as? NSNumber {
                    let numValue = Int(num.intValue)
                    points = points + (numValue*3)
                }
                if let num: NSNumber = dict["UncommonItemsDetected"] as? NSNumber {
                    let numValue = Int(num.intValue)
                    points = points + (numValue*2)
                }
                if let num: NSNumber = dict["CommonItemsDetected"] as? NSNumber {
                    let numValue = Int(num.intValue)
                    points = points + numValue
                }
                if points > heighestPoint {
                    heighestPoint = points
                    if let name: String = dict["Name"] as? String {
                        planetName = name
                    }
                }
            }
        }
        //catches the exception and prints error message
        //(error) is a default parameter of catch block
        catch {
            print(error)
        }
        //return the name of the planet with the highest score
        return planetName
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
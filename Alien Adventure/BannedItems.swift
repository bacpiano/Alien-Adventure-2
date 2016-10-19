//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//I WISH I COULD FIGURE OUT HOW TO FOLD COMMENTS - IT DOES NOT SEEM TO WORK IN X-CODE.
import Foundation

extension Hero {
    //function takes a String parameter called dataFile
    //function returns an array of Int
    func bannedItems(dataFile: String) -> [Int] {
        //declaring and initializing empty Int array
        var bannedItems: [Int]
        bannedItems = [Int]()
        //NSBundle.mainBundle() function, asking URL for the resource
        //passing the parameter dataFile is the file name. "plist" is the extension
        let fileUrl = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")
        //store contents into a constant if the value exists as an array of dictionaries
        let contentsOfFile = NSArray(contentsOfURL: fileUrl!) as! [[String:AnyObject]]
        //looking through plist file dictionary
        for dict in contentsOfFile {
            if let name: String = dict["Name"] as? String where name.localizedCaseInsensitiveContainsString("laser"){
                if let historicalData: Dictionary = dict["HistoricalData"] as? [String:AnyObject] {
                    if let carbonAge: NSNumber = historicalData["CarbonAge"] as? NSNumber {
                        let carbonAgeValue: Int = Int(carbonAge.intValue)
                        //adding the items with carbonAge less than 30 to the bannedItems array
                        if carbonAgeValue < 30 {
                            if let itemID: NSNumber = dict["ItemID"] as? NSNumber{
                                let itemIDValue: Int = Int(itemID.intValue)
                                bannedItems.append(itemIDValue)
                            }
                        }
                    }
                }
            }
        }
        return bannedItems
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
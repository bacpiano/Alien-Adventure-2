//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//I WISH I COULD FIGURE OUT HOW TO FOLD COMMENTS - IT DOES NOT SEEM TO WORK IN X-CODE.

//objective C framework - that contains NSNumber and its methods, and many other NS functions
import Foundation
extension Hero {
    // function takes two parameters: a UDItem array called inventory and a String called planet
    // function returns an UDItem optional
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        //making sure the inventory is not empty
        //enter the if block only if we do have items in the inventory
        if inventory.count>0 {
            //assign oldestItem variable to the first index of our array
            var oldestItem = inventory[0]
            //initialize var oldestAge of NSNumber type to 0
            var oldestAge: NSNumber = 0
            //item iterator looks through inventory array
            for item in inventory {
                //store historical data with key "PlanetOfOrigin" and planetName string (from planet parameter of the function) into a constant
                //where keyword allows to check for an additional condition on constants
                /*Use ? if the value can become nil in the future, so that you test for this.
                        Use ! if it really shouldn't become nil in the future, but it needs to be nil initially.*/
                if let planetName = item.historicalData["PlanetOfOrigin"] where  planetName as! String == planet{
                    //store historicalData with the key "CarbonAge" and unwrap the optional value into an NSNumber type - if there is a value
                    if let carbonAge: NSNumber = item.historicalData["CarbonAge"] as? NSNumber{
                        //compare carbonAge to oldestAge and place the result into the comparisonResult constant
                        let comparisonResult = carbonAge.compare(oldestAge)
                        //possible results (from the built in enum) - after comparison is done
                        /*public enum NSComparisonResult: Int {
                                    case OrderedAscending
                                    case OrderedSame
                                    case OrderedDescending
                                    }
                                    */
                        //enter if block if comparison returned OrderDescending
                        if comparisonResult ==  NSComparisonResult.OrderedDescending{
                            //wentered the if block after the comparison revealed that carbonAge is bigger than oldestAge
                            //updating oldestAge with the bigger value from carbonAge
                            oldestAge=carbonAge
                            //updating oldestItem
                            oldestItem = item
                        }
                    }
                }
            }
            return oldestItem
        }
        else{
            return nil
        }
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
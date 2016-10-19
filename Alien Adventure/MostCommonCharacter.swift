//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//I WISH I COULD FIGURE OUT HOW TO FOLD COMMENTS - IT DOES NOT SEEM TO WORK IN X-CODE.
import Foundation

extension Hero {
    //function takes one parameter of UDItem array type called inventory
    //function returns a Character optional
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        //check to make sure we have items in the inventory.
        if inventory.count > 0 {
            //initializing empty Dictionary
            var cnt = [String: Int]()
            //counter
            var i = 0
            
            for item in inventory {
                //make item name lower case
                let itemName = item.name.lowercaseString
                //create new string from characters
                for char in itemName.characters {
                    let c = String(char)
                    //counting characters and storing them in the dictionary against their name
                    if let match = cnt[c] {
                        cnt[c] = match+1
                    }
                    else {
                        cnt[c] = 1
                    }
                    i+=1
                }
            }
            //sorting the dictionary on the basis of values
            let sortedKeys = (cnt as NSDictionary).keysSortedByValueUsingSelector(#selector(NSNumber.compare(_:)))
            //get the last key and convert it to String
            let key = sortedKeys.last! as! String
            //return the first character of that String
            return key.characters.first
        }
        return nil
    }
}
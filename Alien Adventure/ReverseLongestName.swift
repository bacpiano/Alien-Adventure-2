//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    //function takes a parameter of UDItem array type called inventory
    //function returns a String
    func reverseLongestName(inventory: [UDItem]) -> String {
        //variable to store the largest item letter count
        var maxLength: Int = 0
        //variable to store the largest string
        var maxString : String = ""
        //for loop for finding the longest item in inventory
        for item in inventory {
            //name is a property of item object
            //characters is a property/method of String type
            //count is a method of character
            if item.name.characters.count > maxLength {
                //update maxLength and maxString
                maxLength = item.name.characters.count
                maxString = item.name
            }
        }
        //defining the reversed longest string constant before returning it.
        let reverseMaxString = String(maxString.characters.reverse())
        return reverseMaxString
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
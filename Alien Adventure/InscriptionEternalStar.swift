//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    //function takes a UDItem array parameter called inventory
    //function returns an UDItem optional
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        //Look through the inventory for an item with an inscription containing the string “THE ETERNAL STAR”.
        //for loop to search and return that item
        for item in inventory {
            if let notOptionalString = item.inscription {
                //searching for the string "The Eternal Star" in the inscription property of the items
                if notOptionalString.containsString("THE ETERNAL STAR") {
                    return item
                }
            }
        }
        //if there is no such value - return nil
        return nil
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
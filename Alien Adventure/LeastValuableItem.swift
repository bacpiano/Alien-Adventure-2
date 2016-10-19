//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    //function takes a UDItem array parameter
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        //Check the number of items in the inventory.
        let inventoryCount = inventory.count
        //if we have items in the inventory enter the if block
        if inventoryCount > 0 {
            var leastValueItem: UDItem = inventory[0]
            //Otherwise, begin searching for the least valuable item.
            for item in inventory {
                if  item.baseValue < leastValueItem.baseValue {
                    leastValueItem = item
                }
            }
            //Return the item in the inventory with this the smallest baseValue (i.e. “the least valuable”)
            return leastValueItem
        }
            //If the inventory is empty, return nil.
        else{
            return nil
        }
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
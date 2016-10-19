//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//I WISH I COULD FIGURE OUT HOW TO FOLD COMMENTS - IT DOES NOT SEEM TO WORK IN X-CODE.
extension Hero {
    //function takes two parameters (a [UDItem] array called inventory, and a String called planet
    //function returns a [UDItem] array
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        // initializing an empty array variable
        var itemFromPlanet = [UDItem]()
        //But how can you access an item's planet of origin? The answer is through the historicalData property of UDItem.
        //To access the planet of origin value, you will want to use the key “PlanetOfOrigin”, which contains a value that can be converted to a Swift string.
        //search through the inventory (the [UDItem] array
        for item in inventory {
            //search through the historical data property of the item with the key "PlanetOfOrigin"
            //search for the specific planet parameter (where planetName as! String == planet)
            //where keyword allows to check for an additional condition on constants
            if let planetName = item.historicalData["PlanetOfOrigin"] where planetName as! String == planet {
                //add the item to the [UDItem] array
                itemFromPlanet.append(item)
            }
        }
        //returning array
        return itemFromPlanet
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
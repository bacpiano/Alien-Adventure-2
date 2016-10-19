//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//I WISH I COULD FIGURE OUT HOW TO FOLD COMMENTS - IT DOES NOT SEEM TO WORK IN X-CODE.
extension Hero {
    //function takes one parameter of type UDItem array, called inventory
    //function returns a dictionary with key of type UDItemRarity and value of type Int
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var rarityOfItems: [UDItemRarity:Int];
        rarityOfItems=[UDItemRarity:Int]()
        var commonCount = 0
        var unCommonCount = 0
        var rareCount = 0
        var legendaryCount = 0
        //counting items rarity and storing counts in the 4 count variables
        for item in inventory {
            if item.rarity == .Common {
                commonCount+=1
            }
            else if item.rarity == .Uncommon {
                unCommonCount+=1
            }
            else if item.rarity == .Rare {
                rareCount+=1
            }
            else if item.rarity == .Legendary {
                legendaryCount+=1
            }
        }
        //returning the counted items in the form of a dictionary
        rarityOfItems = [ .Common: commonCount, .Uncommon: unCommonCount, .Rare: rareCount, .Legendary: legendaryCount]
        return rarityOfItems
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
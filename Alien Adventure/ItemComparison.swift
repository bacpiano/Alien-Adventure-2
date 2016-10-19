//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//I WISH I COULD FIGURE OUT HOW TO FOLD COMMENTS - IT DOES NOT SEEM TO WORK IN X-CODE.
import Foundation
//operator overloading with two parameters (lefthand side and righthand side)
func <(lhs: UDItem, rhs: UDItem) -> Bool {
    //check for rawValue and compare them to make sure if lhs is smaller
    if lhs.rarity.rawValue < rhs.rarity.rawValue {
        return true
    }
    //check for rawValue and compare them to make sure if lhs is bigger
    else if lhs.rarity.rawValue > rhs.rarity.rawValue{
        return false
    }
    //check for baseValue and compare them to make sure if lhs is smaller
    else{
        if lhs.baseValue < rhs.baseValue {
            return true
        }
        else{
            return false
        }
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
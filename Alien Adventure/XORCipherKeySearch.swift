//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//I WISH I COULD FIGURE OUT HOW TO FOLD COMMENTS - IT DOES NOT SEEM TO WORK IN X-CODE.
import Foundation

extension Hero {
    //function takes a parameter of type UInt8 array (array of characters) called encryptedString
    //function returns an UInt8 type character as the key
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        // NOTE: This code doesn't exactly mimic what is in the Lesson. We've
        // added some print statements so that there are no warnings for
        // unused variables 😀.
        //declaring and initializing the UInt8 variable called key
        var key: UInt8
        key = 0
        //..< denotes a range that omits the upper value. (0-254 instead of 0-255)
        for x in UInt8.min..<UInt8.max {
            //declaring and initializing UInt8 array
            var decrypted: [UInt8]
            decrypted = [UInt8]()
            //loop through encryptedString and perform decryption
            for character in encryptedString {
                // ADD CODE: perform decryption
                decrypted.append(character ^ x)
            }
            //looking through the decrypted encoding for the string "udacity" to return its associated key
            if let decryptedString = String(bytes: decrypted,
                                            encoding: NSUTF8StringEncoding) where decryptedString == "udacity" {
                key = x
            }
        }
        return key
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
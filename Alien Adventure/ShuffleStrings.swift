//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    //This method takes three String parameters and returns a Bool
    //The Bool return value represents whether the third string parameter (the shuffle string) is a valid shuffle of the first and second strings. So if the method returns false, then the shuffle string is invalid. Otherwise, the method should return true.
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        //For the special case where all three parameters passed to the function are empty strings(""), you should return true.
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }
            //Check to see if the shuffle string is a valid length.
        else if shuffle.characters.count == (s1.characters.count + s2.characters.count) {
            //checking for the presence of s1 string within shuffle
            if shuffle.containsString(s1){
                let remainngShuffle = shuffle.stringByReplacingOccurrencesOfString(s1, withString: "")
                if remainngShuffle == s2 {
                    return true
                }
                else{
                    return false
                }
            }
                //checking for the presence of s2 string within shuffle
            else if shuffle.containsString(s2){
                let remainngShuffle = shuffle.stringByReplacingOccurrencesOfString(s2, withString: "")
                if remainngShuffle == s1 {
                    return true
                }
                else{
                    return false
                }
            }
            else{
                //initializing conditions booleans
                var isFirstConditionTrue = false
                var isSecondConditionTrue = false
                
                //making sure s1 string maintained its correct letter order
                if let s1StartIndex = shuffle.characters.indexOf(s1.characters.first!)  {
                    if let s1EndIndex = shuffle.characters.indexOf(s1.characters.last!)  {
                        if s1StartIndex < s1EndIndex {
                            isFirstConditionTrue = true
                        }
                    }
                }
                //making sure s2 string maintained its correct letter order
                if let s2StartIndex = shuffle.characters.indexOf(s2.characters.first!)  {
                    if let s2EndIndex = shuffle.characters.indexOf(s2.characters.last!)  {
                        if s2StartIndex < s2EndIndex {
                            isSecondConditionTrue = true
                        }
                    }
                }
                //if both s1 and s2 maintained their letter ordering return true
                if isFirstConditionTrue && isSecondConditionTrue {
                    return true
                }
            }
        }
        return false
    }
}
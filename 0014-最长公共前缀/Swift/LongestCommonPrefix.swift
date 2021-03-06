//  LongestCommonPrefix.swift
//  Created by 王玉朝 on 2019/5/30.
//  Copyright © 2019 王玉朝. All rights reserved.

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var longestPrefix = [Character](), index = 0
        
        guard let _ = strs.first else {
            return String(longestPrefix)
        }
        
        let strsChars = strs.map { Array($0) }
        
        let firstStrChars = strsChars.first!
        
        while index < firstStrChars.count {
            
            longestPrefix.append(firstStrChars[index])
            
            for str in strsChars {
                if index >= str.count {
                    return String(longestPrefix.dropLast())
                }
                
                if str[index] != longestPrefix[index] {
                    return String(longestPrefix.dropLast())
                }
            }
            
            index += 1
        }
        
        return String(longestPrefix)
    }
}

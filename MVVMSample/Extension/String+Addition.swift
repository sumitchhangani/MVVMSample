//
//  String+Addition.swift
//  MVVMSample
//
//  Created by Sumit on 07/03/22.
//

import Foundation

extension String {
    
    var trimmed: String? {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var isValidEmail: Bool {
        do {
            let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}", options: .caseInsensitive)
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
        } catch {
            return false
        }
    }
    
}

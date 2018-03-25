//
//  Double+Time.swift
//  RealProgrammers
//
//  Created by James Yorke on 25/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

public extension Double {
    
    public var seconds: TimeInterval {
        return self
    }
    
    public var minutes: TimeInterval {
        return seconds * 60
    }
    
    public var hours: TimeInterval {
        return minutes * 60
    }
    
    public var days: TimeInterval {
        return hours * 24
    }
    
    public var weeks: TimeInterval {
        return days * 7
    }
    
    public var years: TimeInterval {
        return days * 365
    }
    
}

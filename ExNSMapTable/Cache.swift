//
//  Cache.swift
//  ExNSMapTable
//
//  Created by 김종권 on 2023/08/20.
//

import Foundation

class CachedObject: NSObject {
    let value: Int
    
    init(value: Int) {
        self.value = value
    }
}

let cache = NSMapTable<NSString, CachedObject>.strongToWeakObjects()
//let cache = NSMapTable<NSString, CachedObject>.strongToStrongObjects()

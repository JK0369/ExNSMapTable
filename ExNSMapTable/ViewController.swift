//
//  ViewController.swift
//  ExNSMapTable
//
//  Created by 김종권 on 2023/08/20.
//

import UIKit

class ViewController: UIViewController {
    
    var objects = [CachedObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...5 {
            let key = "Key\(i)" as NSString
            let object = CachedObject(value: i)
            objects.append(object)
            cache.setObject(object, forKey: key)
        }

        objects.removeAll()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for i in 1...5 {
            let key = "Key\(i)" as NSString
            if let cachedObject = cache.object(forKey: key) {
                print("캐시성공 > \(key): \(cachedObject.value)")
            } else {
                print("캐시실패 > \(key)")
            }
        }
    }
}


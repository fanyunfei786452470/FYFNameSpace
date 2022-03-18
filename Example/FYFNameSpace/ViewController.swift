//
//  ViewController.swift
//  FYFNameSpace
//
//  Created by 786452470@qq.com on 03/18/2022.
//  Copyright (c) 2022 786452470@qq.com. All rights reserved.
//

import UIKit
import FYFNameSpace

extension String: FYFNameSpaceWrappable {}

extension FYFNameSpace where Base == String {
    public var testMethod: String {
        return base + "namespace"
    }
    
    public func method(string: String) -> String {
        return base + string
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let str = "hello"
        print(str.fyf.testMethod)
        print(str.fyf.method(string: "namespace"))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


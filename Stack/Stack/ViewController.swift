//
//  ViewController.swift
//  Stack
//
//  Created by Mac123 on 2020/5/30.
//  Copyright © 2020 K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - 顺序栈
        let arrayStack = ArrayStack.init(size: 4)
        for i in 0 ... 4 {
            print("进栈\(arrayStack.push(data: i))")
        }
        for _ in 0 ... 4 {
            print("出栈\(arrayStack.pop())")
        }
        for i in 4 ... 10 {
            print("进栈\(arrayStack.push(data: i))")
        }
        
        //MARK: - 链式栈
        let listStack = ListStack.init(size: 4)
        for i in 0 ... 4 {
            print("进栈\(listStack.push(data: i))")
        }
        for _ in 0 ... 4 {
            print("出栈\(listStack.pop())")
        }
        for i in 4 ... 10 {
            print("进栈\(listStack.push(data: i))")
        }
        
    }


}


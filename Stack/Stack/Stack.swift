//
//  Stack.swift
//  Stack
//
//  Created by Mac123 on 2020/5/30.
//  Copyright © 2020 K. All rights reserved.
//

import UIKit

class Stack: NSObject {

}

//MARK: - 顺序栈
class ArrayStack: NSObject {
    var stack: Array<Any>?
    //栈的大小
    var size: Int?
    //栈中元素个数
    var count: Int?
    
    
    /// 初始化栈
    /// - Parameter size: 栈的大小
    init(size: Int) {
        self.count = 0
        self.size = size
        self.stack = Array.init()
    }
    
    /// 进栈
    /// - Parameter data: 进栈数据
    /// - Returns: 进栈结果
    func push(data: Any) -> Bool {
        if count == size {
            //栈满了
            return false
        }
        
        if stack!.count > count! {
            stack![count!] = data
        }else {
            stack?.append(data)
        }
        count! += 1
        return true
    }
    
    /// 出栈
    /// - Returns: 出栈数据
    func pop() -> Any? {
        if count == 0 {
            //栈里面没数据
            return nil
        }
        let data = stack![count! - 1]
        count! -= 1
        return data
    }
    
}



//MARK: - 链式栈
class ListStack: NSObject {
    
    /// 单链表
    class List: NSObject {
        var value: Any?
        var next: List?
    }
    
    var listStack: List?
    //栈的当前节点
    var curList: List?
    
    //栈的大小
    var size: Int?
    //栈中元素个数
    var count: Int?
    
    init(size: Int) {
        self.count = 0
        self.size = size
        //初始化带头链表
        self.listStack = List.init()
        self.curList = self.listStack
    }
    
    /// 进栈
    /// - Parameter data: 进栈数据
    /// - Returns: 进栈结果
    func push(data: Any) -> Bool {
        if count == size {
            //栈满了
            return false
        }else {
            let newList = List.init()
            newList.value = data
            curList?.next = newList
            curList = curList?.next
            count! += 1
            return true
        }
    }
    
    /// 出栈
    /// - Returns: 出栈数据
    func pop() -> Any? {
        if count == 0 {
            //栈里面没数据
            return nil
        }else {
            let data = curList?.value
            
            var tempList = listStack
            while tempList?.next?.next != nil {
                //获取倒数第二个节点
                tempList = tempList?.next
            }
            curList = tempList
            //删除最后一个节点
            curList?.next = nil
            count! -= 1
            return data
        }
    }
    
}

//
//  LinkedList.swift
//  LinkedListExercises
//
//  Created by C4Q  on 10/24/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

public class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}

public class LinkedList<T: Equatable> {
    var head: Node<T>?
    
    func printAllKeys() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode?.next
        }
    }

    var count: Int {
        var count = 0
        var currentNode = head
        while currentNode != nil {
            currentNode = currentNode?.next
            count += 1
        }
        return count
    }
    
    func append(element newKey: T) {
        if head == nil {
            head = Node(key: newKey)
            return
        }
        var currentNode = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(key: newKey)
    }

    
    func getNode(at index: Int) -> Node<T>? {
        var counter = 0
        var currentNode = head
        while counter < index {
            currentNode = currentNode?.next
            counter += 1
        }
        return currentNode
    }

    
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
        while currentNode != nil{
            if currentNode?.key == targetKey {return true}
            currentNode = currentNode?.next
        }
        return false
    }
    
    func equals<T>(otherList: LinkedList<T>) -> Bool {
        var test = Bool()
        for i in 0...otherList.count{
        guard let otherNode = getNode(at: i) else {fatalError("Haha")}
            // not done
        }
        return true
        
    }
    
    func toArr<T>() -> [T] {return Array<T>()}
    
    func reversed<T>() -> LinkedList<T> {return LinkedList<T>()}
    
    func delete(at index: Int) {
        guard let nodeBefore = getNode(at: index - 1) else {
            if index == 0 {
                head = head?.next
            }
            return
        }
        nodeBefore.next = nodeBefore.next?.next
    }
    
    func removeAll() {
        
    }
    
    //Challenge Questions
    func removeDuplicatesFromSortedList() {}
    
    static func mergeSortedLists<T>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
        return LinkedList<T>()
    }
}



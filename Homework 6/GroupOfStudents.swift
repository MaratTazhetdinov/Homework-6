//
//  GroupOfStudents.swift
//  Homework 6
//
//  Created by Marat Tazhetdinov on 30.06.2021.
//

import Foundation

class GroupOfStudents{
    let title: String
    var group: [Student]
    
    init (title: String, group: [Student]){
        self.title = title
        self.group = group
    }
    
    func printStudentsInfo (){
        guard !group.isEmpty else {
            print("Error! This group doesn't have students!")
            return}
        print("Group name: \(title)")
        print("--------------------------------")
        for (index, value) in group.enumerated(){
            print("Student \(index+1)")
            print("First name: \(value.firstName)")
            print("Second name: \(value.secondName)")
            print("Year of birth: \(value.yearOfBirth)")
            print("Average mark: \(value.avgMark)")
            print("--------------------------------")
        }
    }
    
    func deleteStudent (mark: Double){
        guard !group.isEmpty else {
            print("Error! This group doesn't have students!")
            return}
        
        print("After removing students with a mark lower than \(mark)")
        print()
        
        var index = group.count - 1
        
        while index >= 0 {
            if group[index].avgMark < mark {
                group.remove(at: index)
            }
            index-=1
        }
        printStudentsInfo()
    }
}

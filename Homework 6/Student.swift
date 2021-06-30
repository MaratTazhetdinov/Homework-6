//
//  Student.swift
//  Homework 6
//
//  Created by Marat Tazhetdinov on 30.06.2021.
//

import Foundation

class Student{
    let firstName: String
    let secondName: String
    let yearOfBirth: Int
    let avgMark: Double
    
    init(firstName: String, secondName: String, yearOfBirth: Int, avgMark: Double) {
        self.firstName = firstName
        self.secondName = secondName
        self.yearOfBirth = yearOfBirth
        self.avgMark = avgMark
    }
}

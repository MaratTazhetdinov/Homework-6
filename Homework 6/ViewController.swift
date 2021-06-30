//
//  ViewController.swift
//  Homework 6
//
//  Created by Marat Tazhetdinov on 30.06.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let student1: Student = Student (firstName: "Ivan",
                                         secondName: "Petrov",
                                         yearOfBirth: 1995,
                                         avgMark: 6.2)
        
        let student2: Student = Student (firstName: "Olga",
                                         secondName: "Kolesova",
                                         yearOfBirth: 1992,
                                         avgMark: 9.1)
        
        let student3: Student = Student (firstName: "Lev",
                                         secondName: "Tsao",
                                         yearOfBirth: 1996,
                                         avgMark: 7)
        
        let student4: Student = Student(firstName: "Marat",
                                        secondName: "Tazhetdinov",
                                        yearOfBirth: 1993,
                                        avgMark: 6.7)
        
        let student5: Student = Student(firstName: "Vadim",
                                        secondName: "Mozgunov",
                                        yearOfBirth: 1973,
                                        avgMark: 5.2)
        
        let group1: [Student] = [student1, student2, student3, student4, student5]
        
        let Group1: GroupOfStudents = GroupOfStudents (title: "TS", group: group1)
        
        Group1.printStudentsInfo()
        print()
        Group1.deleteStudent(mark: 6.5)
        print()
        let Group2: GroupOfStudents = GroupOfStudents (title: "Nil", group: [])
        Group2.printStudentsInfo()
        Group2.deleteStudent(mark: 7.0)
    }


}


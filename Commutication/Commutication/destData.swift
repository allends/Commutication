//
//  destData.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/21/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI


var Data = [Dest(id: 1, name: "Physics", location: "Physics Lecture Hall", time: "8:40"),
            Dest(id: 2, name: "Math", location: "Math Lecture Hall", time: "10:40"),
            Dest(id: 3, name: "Computer Science", location: "CS Lecture Hall", time: "12:40")]

struct Dest: Identifiable{
    
    var id: Int
    var name: String
    var location: String
    var time: String
    
}

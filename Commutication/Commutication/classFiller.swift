//
//  classFiller.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/24/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI

struct classFiller: View {
    
    struct location: Identifiable {
        var id: Int
        var name: String
        var place: String
        var time: String
        
    }
    
    @State var buttonCounter = 1
    @State var name = ""
    @State var place = ""
    @State var time = ""
    @State var locArray = [location(id: 0 , name: "Math", place: "Math Lecture Hall", time: "8:00")]

    
    func addToArray(){
        print(locArray)
        locArray.append(location(id: buttonCounter, name: name, place: place, time: time ))
        buttonCounter += 1
    }
    
    var body: some View {
        Form{
            TextField("Enter name of class here", text: $name)
            TextField("Enter location of class here", text: $place)
            TextField("Enter time of class here", text: $time)
            Button(action: {self.addToArray()}) {
                Text("Add to Class List")
            }
            Section{
                List(locArray){ temp in
                    HStack{
                        Text(temp.name)
                        Spacer()
                        Text(temp.time)
                    }
                }
            }
        }
    }
}

struct classFiller_Previews: PreviewProvider {
    static var previews: some View {
        classFiller()
    }
}

//
//  Destinations.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/20/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI

struct dest: Identifiable {
    var id: Int
    var name: String
    var location: String
}


struct destinationView: View {
    
    
    func createDestination() -> Void{
        Data.append(Dest(id: 4, name: "Politics", location: "Poly Sci Lecture Hall", time: "2:40"))
    }
    
    
    var body: some View {
        
        VStack{
            Text("All the places you have to go!")
                .font(.headline)
            
            Spacer()
            
            List(Data){ instance in
                Text(instance.name)
                Spacer()
                Text(instance.time)
            }
                
            HStack{
                Text("Add Places")
                Button(action: { self.createDestination() }) {
                    Text("GO")
                }
            }.padding()
                
            Spacer()
            
        }
    }
    
    
}

struct destinationView_Previews: PreviewProvider {
    static var previews: some View {
        destinationView()
    }
}

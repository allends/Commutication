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
        print(Data)
    }
    
    var body: some View {
        
        VStack{
                NavigationView{
                List(Data){ instance in
                    Text(instance.name)
                    Spacer()
                    Text(instance.time)
                }.navigationBarTitle("All your places")
            }
            HStack{
                Text("Add Places")
                Button(action: { self.createDestination() }) {
                    Text("Fill out a new form")
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

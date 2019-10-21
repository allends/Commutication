//
//  Destinations.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/20/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI

struct destinationView: View {
    
    struct destination{
        var name: String
        var time: Int
    }
    
    
    var body: some View {
        
        VStack{
            Text("You have places to go!").font(.headline)
            Spacer()
            Text("Sample Destination 1").font(.body)
            
            HStack{
                Text("Enter a destination: ")
                
                TextField("Name Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                
                Button(action: { }) {
                    Text("Enter")
                }
            }
            Spacer()
            
        }
    }
    
    func createDestination() -> Void{
        
    }
    
}

struct destinationView_Previews: PreviewProvider {
    static var previews: some View {
        destinationView()
    }
}

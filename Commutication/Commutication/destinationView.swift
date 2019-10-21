//
//  Destinations.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/20/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI

struct Item: dest {
    var id: Int
    var name: String
    var location: String
}



struct destinationView: View {
    
    var body: some View {
        
        VStack{
            Text("You have places to go!").font(.headline)
            Spacer()
            
            List{
                Text("Destination").font(.headline)
                Text("Placeholder 1")
                Text("Placeholder 2")
            }
                
            HStack{
                Text("Enter another place: ")
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                Button(action: {self.createDestination()}) {
                    Text("Add to list")
                }
                Spacer()
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

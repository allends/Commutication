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
    
    var test : Bool = false
    
    func createDestination() -> Void{
        print("This works")
        //test = true
    }
    
    
    var body: some View {
        
        VStack{
            Text("You have places to go!").font(.headline)
            Spacer()
            
            List{
                Text("Destination").font(.headline)
                Text("Placeholder 1")
                Text("Placeholder 2")
                if(test){
                    Text("You just entered some text")
                }
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

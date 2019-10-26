//
//  detailedView.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/26/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI

struct detailedView: View {
    
    var thisLoc: location
    
    var body: some View {
        
        VStack (alignment: .center) {
            Text(thisLoc.name).font(.largeTitle)
            Text("At the \(thisLoc.place)").font(.subheadline)
            
            Button(action: {}){
                Text("Start commute to \(thisLoc.name)")
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.padding()
            
            
        }
        
    }
}

struct detailedView_Previews: PreviewProvider {
    static var previews: some View {
        detailedView(thisLoc: location(id: 0 , name: "Math", place: "Math Lecture Hall", time: "8:00"))
    }
}

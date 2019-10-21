//
//  mainView.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/20/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI


struct mainView: View {
    var body: some View {
        VStack{
            Text("Today View").font(.title)
            HStack{
                Text("Class")
                Spacer()
                Text("Location")
                Spacer()
                Text("Time")
            }.padding(15)
            
            List {
                
                HStack{
                    Text("Class1")
                    Spacer()
                    Text("Hickman Hall")
                    Spacer()
                    Text("5:00")
                }.font(.body)
                
            }
                
        }
    }
}


struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

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
            
            List(Data){ instance in
                Text(instance.name)
                Spacer()
                Text(instance.time)
            }
            
            MapView().border(Color.green, width: 4)
                
        }
    }
}


struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

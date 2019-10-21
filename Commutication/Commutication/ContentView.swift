//
//  ContentView.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/20/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            VStack{
                Text("Commutication")
                    .font(.title)
                    .bold()
                TabView {
                    mainView()
                        .tabItem {
                            Image(systemName: "1.square.fill")
                            Text("Home")
                        }
                    statsView()
                        .tabItem {
                            Image(systemName: "2.square.fill")
                            Text("Stats")
                        }
                    destinationView()
                        .tabItem {
                            Image(systemName: "3.square.fill")
                            Text("Third")
                        }
                }
                .font(.headline)
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

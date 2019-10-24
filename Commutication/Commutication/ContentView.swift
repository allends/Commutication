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
                Text("Commutication").font(.headline)
                TabView {
                    mainView()
                        .tabItem {
                            Image("home")
                            Text("Home")
                            
                    }
                    statsView()
                        .tabItem {
                            Image("bike")
                            Text("Stats")
                        }
                    classFiller()
                        .tabItem {
                            Image("nav")
                            Text("Destinations")
                        }
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

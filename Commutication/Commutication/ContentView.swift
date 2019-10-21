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
                HStack{
                Text("Commutication")
                    .font(.title)
                    .bold()
                    .foregroundColor(.green)
                Image("logo")
                    
                }
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
                    destinationView()
                        .tabItem {
                            Image("nav")
                            Text("Destinations")
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

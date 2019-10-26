//
//  ContentView.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/25/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI

struct location: Identifiable {
    var id: Int
    var name: String
    var place: String
    var time: String
    
}

struct ContentView: View {
    
    @State var buttonCounter = 1
    @State var name = ""
    @State var place = ""
    @State var time = ""
    @State var locArray = [location(id: 0 , name: "Math", place: "Math Lecture Hall", time: "8:00")]
    @State var statsArray = [10, 15]
    
    func addToArray(){
        print(locArray)
        locArray.append(location(id: buttonCounter, name: name, place: place, time: time ))
        buttonCounter += 1
        statsArray[0] += 20
    }
    
    
    var homePage: some View{
        VStack{
            NavigationView{
                VStack{
                    HStack{
                        Text("Class")
                        Spacer()
                        Text("Location")
                        Spacer()
                        Text("Time")
                        }.padding(15)
                    
                    List(locArray){ temp in
                        
                        NavigationLink(destination: detailedView(thisLoc: temp)) {
                            Text(temp.name)
                            Spacer()
                            Text(temp.place)
                            Spacer()
                            Text(temp.time)
                        }.lineLimit(1)
                        
                    }
                }.navigationBarTitle("Today View")
            }
            MapView()
        }
        
    }
    
    var statsPage: some View{
        NavigationView{
            VStack{
                HStack{
                    Text("Distance Traveled Green")
                    Spacer()
                    Text("Turtles Saved")
                }
                .padding()
                .font(.headline)
                
                HStack (alignment: .center){
                    
                    Text("\(statsArray[0])")
                    Spacer()
                    Text("\(statsArray[1])")
                    
                }.padding().font(.subheadline)
                Spacer()
                
    
            }.navigationBarTitle("Cool Stats")
            
            
        }
    }
    
    var destinationPage: some View{
        NavigationView{
            Form{
                TextField("Enter name of class here", text: $name)
                TextField("Enter location of class here", text: $place)
                TextField("Enter time of class here", text: $time)
                
                Button(action: { self.addToArray() } ) {
                    Text("Add to Class List")
                }
                Section{
                    List(locArray){ temp in
                        HStack{
                            Text(temp.name)
                            Spacer()
                            Text(temp.time)
                        }
                    }
                }
            }.navigationBarTitle("All your places")
        }
    }
    var body: some View {
        VStack{
            TabView {
                self.homePage
                    .tabItem {
                        Image("home")
                        Text("Home")
                }
                self.statsPage
                    .tabItem {
                        Image("bike")
                        Text("Stats")
                }
                self.destinationPage
                    .tabItem {
                        Image("nav")
                        Text("Destinations")
                }
                .font(.headline)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().statsPage
    }
}

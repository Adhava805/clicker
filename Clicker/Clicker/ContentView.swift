//
//  ContentView.swift
//  Clicker
//
//  Created by 90308099 on 4/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var x1 = true
    @State private var x2 = false
    @State private var x3 = false
    @State private var x4 = false
    @State private var x5 = false
    var body: some View {
        ZStack{
        VStack {
            Text("\(counter)")
              .font(.largeTitle)
            Spacer()
            Button("Click Me!") {
                if x2 {
                    counter += 2
                }
                if x3 {
                    counter += 3
                }
                if x4 {
                    counter += 4
                }
                if x5 {
                    counter += 5
                } else if x1 {
                    counter += 1
                }
                
                }
            Spacer()
            HStack {
                if x2 == false {
                Button("x2 100 points") {
                    if counter >= 100{
                        x2 = true
                   x1 = false
                        counter -= 100
                    } else {
                        print("Not enough points")
                    }
                }
                } else {
                
                }
                if x3 == false {
                Button("x3 250 points") {
                    if counter >= 250{
                        x3 = true
                   x1 = false
                        counter -= 250
                    } else {
                        print("Not enough points")
                    }
                }
                } else {
                    
                }
                if x4 == false {
                Button("x4 500 points") {
                    if counter >= 500{
                        x4 = true
                   x1 = false
                        counter -= 500
                    } else {
                        print("Not enough points")
                    }
                }
            }
            if x5 == false {
                Button("x5 700 points") {
                    if counter >= 700{
                        x5 = true
                   x1 = false
                        counter -= 700
                    } else {
                        print("Not enough points")
                    }
                }
            }
            }
            }
            Spacer()
        }
        }
}
        
        
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}

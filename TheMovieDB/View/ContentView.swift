//
//  ContentView.swift
//  TheMovieDB
//
//  Created by Jangkung Ari on 09/02/20.
//  Copyright © 2020 Jangkung Ari. All rights reserved.
//

import SwiftUI
import Lottie

struct ContentView: View {
    let colorbg = UIColor(rgb: 0x081C24)
    let coloracc = UIColor(rgb: 0x01d277)

   
   
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            HomeView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
                .tag(0)
            ModalView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "flame.fill")
                        Text("Popular")
                    }
            }                .tag(1)
            Text("Now Playing")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "play.circle.fill")
                        Text("Now Playing")
                    }
                }
                .tag(2)
            
        }.accentColor(Color.init(coloracc))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        ContentView()
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

//
//  HomeView.swift
//  TheMovieDB
//
//  Created by Jangkung Ari on 09/02/20.
//  Copyright © 2020 Jangkung Ari. All rights reserved.
//

import SwiftUI


struct box {
    var id: Int
    let tittle, imgUrl: String
}

struct BoxView: View {
    var body: some View {
        VStack{
            ZStack {
                LottieView(filename: "PinJump")
            }
                .frame(width: 260, height: 240)
                .cornerRadius(12)
                .shadow(radius: 30)
            Text("Good Movies")
                .font(.subheadline)
                .fontWeight(.bold)
        }
    }
}
struct HomeView: View {
    let coloracc = UIColor(rgb: 0x01d277)
    let Boxes: [box] = [
        box(id: 0, tittle: "Good Movie", imgUrl: "first"),
        box(id: 1, tittle: "Good Movie", imgUrl: "first"),
        box(id: 2, tittle: "Good Movie", imgUrl: "first"),
        box(id: 3, tittle: "Good Movie", imgUrl: "first"),
        box(id: 4, tittle: "Good Movie", imgUrl: "first"),
    ]
    
    var body: some View {
        VStack{
            ImageDB()
            Divider()
            Text("Popular")
                .fontWeight(.bold)
                .font(.headline)
                .foregroundColor(Color.init(coloracc))
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                }
            }
            Divider()
            Text("Now Playing")
                .fontWeight(.bold)
                .font(.headline)
                .foregroundColor(Color.init(coloracc))
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                    BoxView()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
            HomeView()
    }
}

struct ImageDB: View {
    var body: some View {
    VStack{
        Image("themoviedb")
            .scaledToFit()
            .frame(width: 180, height: 80)
        }
    }
}

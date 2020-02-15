//
//  ModalView.swift
//  TheMovieDB
//
//  Created by Jangkung Ari on 09/02/20.
//  Copyright © 2020 Jangkung Ari. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        ZStack {
            LottieView(filename: "PinJump")
        }
        .frame(width: 360, height: 360)
        .cornerRadius(30)
        .shadow(radius: 30)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}

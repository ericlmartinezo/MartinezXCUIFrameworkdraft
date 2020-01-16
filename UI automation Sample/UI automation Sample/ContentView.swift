//
//  ContentView.swift
//  UI automation Sample
//
//  Created by Eric Martinez on 1/12/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var totalClicked: Int = 0
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text("Hello World")
//                NavigationLink(destination: ViewController()) {
//                    Text("Do Something")
//                }
//            }
//        }
//    }
    var body: some View {
        VStack {
            Text("\(totalClicked)").font(.title)
            Spacer()
            Button(action: {self.totalClicked = self.totalClicked + 1}) {
                Text("Increment Total")
            }.padding(.all)
            Button(action: {self.totalClicked = self.totalClicked + 1}) {
                Text("Sign In")
            }.padding(.all)
        }.padding(.all, 40)
    }
//    var body: some View {
//        Text("Hello World")
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

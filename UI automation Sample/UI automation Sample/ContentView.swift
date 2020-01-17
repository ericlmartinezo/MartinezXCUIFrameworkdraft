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
    @State var username: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 80.0){
            Text("Hello World").font(.largeTitle)
            Text("Username").font(.system(size: 25, weight: .bold, design: .default))
                .font(.callout)
                .bold()
            TextField("Username", text: $username).font(.system(size: 25, weight: .bold, design: .default))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.blue)
                .background(Color.blue)
            Text("Your username is: \(username)").font(.system(size: 25, weight: .bold, design: .default))
                .foregroundColor(Color.orange)
            Button(action: {self.totalClicked = self.totalClicked + 1}) {
                Text("Increment Total").font(.system(size: 25, weight: .bold, design: .default))
                .padding(.all, 12)
                .foregroundColor(.white)
                .background(Color.green)
                }.padding(.top, 20)
            Text("\(totalClicked)").font(.title)
            Spacer()
        }.padding(.all, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  SecondView.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/21/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import SwiftUI

struct SecondView: View {
    @ObservedObject var fetcher = MovieFetcher()
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text("This is the second view").font(.largeTitle)
            List(fetcher.movies) { movie in
                VStack (alignment: .leading) {
                    Text(movie.name)
                    Text(movie.released)
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)
                }
            }
            NavigationLink(destination: QuiverView().self) {
                Text("                       Show Quiver View                            ").font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
                .background(Color.blue)
            }.buttonStyle(PlainButtonStyle())
            NavigationLink(destination: CoreDataView().self) {
                Text("                       Show CoreData view                            ").font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
                .background(Color.blue)
            }.buttonStyle(PlainButtonStyle())
            
            NavigationLink(destination: RigEntryView().self) {
                Text("                       Show Rig Entry View                           ").font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
                .background(Color.blue)
            }.buttonStyle(PlainButtonStyle())
        }.padding(.all, 10)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

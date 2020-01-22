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
            
        }.padding(.all, 10)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

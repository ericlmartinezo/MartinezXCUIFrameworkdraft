//
//  QuiverView.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/22/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import SwiftUI

struct QuiverView: View {
    @ObservedObject var fetcher = QuiverFetcher()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text("This is the Quiver view").font(.largeTitle)
            List(fetcher.quiver) { quiv in
                VStack (alignment: .leading) {
                    Text("Brand: \(quiv.sail)").font(.system(size: 20, weight: .bold, design: .default))
                    Text("Model: \(quiv.model)").font(.system(size: 17, weight: .bold, design: .default))
                    Text("Size: \(quiv.size)")
                    Text("Boom Size: \(quiv.boom)")
                    Text("Extension: \(quiv.extSize)")
                    Text("Mast Size: \(quiv.mast)")
                }
            }
        }.padding(.all, 10)
    }
}

struct QuiverView_Previews: PreviewProvider {
    static var previews: some View {
        QuiverView()
    }
}

//
//  RigEntryView.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/23/20.
//  Copyright © 2020 emobile. All rights reserved.
//
import Foundation
import SwiftUI

struct RigEntryView: View {
    
    @State var id: Int = 0
    @State var brand: String = ""
    @State var model: String = ""
    @State var size: String = ""
    @State var boom: String = ""
    @State var extensionSize: String = ""
    @State var mast: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 15.0) {
            Text("                Rig a Sail").font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(Color.orange)
                .padding(4)
//                TextField("id", text: $id)
            TextField("Brand", text: $brand)
            TextField("Model", text: $model)
            TextField("Size", text: $size)
            TextField("Boom", text: $boom)
            TextField("Extension", text: $extensionSize)
            TextField("Mast", text: $mast)
            Text("                      Ready for Sailing!").font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(Color.blue) // This will get submit button
            
            List {
                Text("Brand: \(brand)")
                Text("Model: \(self.model)")
                Text("Size: \(self.size)")
                Text("Boom: \(self.boom)")
                Text("Extension: \(self.extensionSize)")
                Text("Mast: \(self.mast)")
                }
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(Color.orange)
            }.offset(y: -60)
             .font(.system(size: 20, weight: .bold, design: .default))
             .padding(.all, 12)
    }
}

struct RigEntryView_Previews: PreviewProvider {
    static var previews: some View {
        RigEntryView()
    }
}

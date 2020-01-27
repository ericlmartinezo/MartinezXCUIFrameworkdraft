//
//  RigEntryView.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/23/20.
//  Copyright © 2020 emobile. All rights reserved.
//
import Foundation
import SwiftUI
import RealmSwift

struct RigEntryView: View {

    @State var brand = ""
    @State var model = ""
    @State var size = ""
    @State var boom = ""
    @State var extensionSize = ""
    @State var mast = ""

    var body: some View {
        
        VStack(alignment: .leading, spacing: 15.0) {
            
            Text("                Rig a Sail").font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(Color.orange)
                .padding(4)
            TextField("Brand", text: $brand)
            TextField("Model", text: $model)
            TextField("Size", text: $size)
            TextField("Boom", text: $boom)
            TextField("Extension", text: $extensionSize)
            TextField("Mast", text: $mast)
            Text("                      Ready for Sailing!").font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(Color.blue) // This will get submit button
//            Button needs work
            List {
                Button(action: {
                    
                    let config = Realm.Configuration(schemaVersion: 1 )
                    do{
                        let realm = try Realm(configuration: config)
                        let result = realm.objects(datatype.self)
                        print(result)
                    }
                    catch{
                        print(error.localizedDescription)
                    }

                }) {
                    Text("Display")
            }
                Text("Brand: \(brand)")
                Text("Model: \(model)")
                Text("Size: \(size)")
                Text("Boom: \(boom)")
                Text("Extension: \(extensionSize)")
                Text("Mast: \(mast)")
                }
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(Color.orange)
            
//            BEGINNING
            Button(action: {
                
                let config = Realm.Configuration(schemaVersion: 1 )
                do{
                    let realm = try Realm(configuration: config)
                    let newdata = datatype()
                    newdata.brand = self.brand
                    newdata.model = self.model
                    newdata.size = self.brand
                    newdata.boom = self.model
                    newdata.extensionSize = self.extensionSize
                    newdata.mast = self.mast
                    try realm.write({
                        realm.add(newdata)
                        print("success")
                    })
                }
                catch{
                    print(error.localizedDescription)
                }

            }) {
                Text("Save")
            }
//            END
            
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

class datatype: Object {

        @objc dynamic var brand = ""
        @objc dynamic var model = ""
        @objc dynamic var size = ""
        @objc dynamic var boom = ""
        @objc dynamic var extensionSize = ""
        @objc dynamic var mast = ""
}

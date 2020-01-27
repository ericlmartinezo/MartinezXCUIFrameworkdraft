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
                .foregroundColor(Color.blue) // Replace with Save button from realm
//            Button needs work DISPLAY
            List {
                Button(action: {
                    let config = Realm.Configuration(schemaVersion: 1 )
                    do {
                        let realm = try Realm(configuration: config)
                        let result = realm.objects(DataType.self)
                        
                        print(result)
                    }
                    catch {
                        print(error.localizedDescription)
                    }
                })
                {
                    Text("Display").foregroundColor(Color.purple)
            }
            //            EDIT
            Button(action: {
                let config = Realm.Configuration(schemaVersion: 1 )
                do {
                    let realm = try Realm(configuration: config)
                    let result = realm.objects(DataType.self)
                    
                    for i in result{
                        try realm.write({
                            if i.brand == self.brand {
                                i.model = ""
                                i.size = ""
                                i.boom = ""
                                i.extensionSize = ""
                                i.mast = ""
                                realm.add(i)
                            }
                        })
                    }
                }
                catch {
                    print(error.localizedDescription)
                }
            })
            {
                Text("Edit").foregroundColor(Color.red)
            }
        
//                DELETE
            Button(action: {
                let config = Realm.Configuration(schemaVersion: 1 )
                do {
                    let realm = try Realm(configuration: config)
                    let result = realm.objects(DataType.self)
                    
                    for i in result{
                        try realm.write ({
                            if i.brand == self.brand {
                                realm.delete(i)
                            }
                        })
                    }
                }
                catch {
                    print(error.localizedDescription)
                }
            }) {
                Text("Delete").foregroundColor(Color.red)
            }
                
//    UI Display              UI Display    UI Display     UI Display    UI Display   UI Display

                Text("Brand: \(brand)")
                Text("Model: \(model)")
                Text("Size: \(size)")
                Text("Boom: \(boom)")
                Text("Extension: \(extensionSize)")
                Text("Mast: \(mast)")
                }
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(Color.orange)
            
            
//            BEGINNING SAVE ENTRY
            Button(action: {
                
                let config = Realm.Configuration(schemaVersion: 1 )
                do {
                    let realm = try Realm(configuration: config)
                    let newdata = DataType()
                    newdata.brand = self.brand
                    newdata.model = self.model
                    newdata.size = self.size
                    newdata.boom = self.model
                    newdata.extensionSize = self.extensionSize
                    newdata.mast = self.mast
                    try realm.write ({
                        realm.add(newdata)
                        print("saving success")
                    })
                }
                catch {
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

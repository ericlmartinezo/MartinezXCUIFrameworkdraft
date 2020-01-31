//
//  EditView.swift
//  QuiverData
//
//  Created by Eric Martinez on 1/30/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import SwiftUI
import CoreData

struct EditView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @Environment(\.presentationMode) var presentationMode

    var quiverSail: QuiverData
    
    @State var updatedSailBrand: String = ""
    @State var updatedSailModel: String = ""
    @State var updatedSailSize: String = ""
    @State var updatedSailBoom: String = ""
    @State var updatedSailExtension: String = ""
    @State var updatedSailMast: String = ""
    
    var body: some View {
        VStack {
            VStack {
                TextField("Sail's brand", text: $updatedSailBrand)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear {
                        self.updatedSailBrand = self.quiverSail.brand ?? ""
                }
        
                TextField("Sail's model description", text: $updatedSailModel)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear {
                        self.updatedSailModel = self.quiverSail.model ?? ""
                }
                
                TextField("Sail's size", text: $updatedSailSize)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear {
                        self.updatedSailSize = self.quiverSail.size ?? ""
                }
                
                TextField("Sail's boom", text: $updatedSailBoom)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear {
                        self.updatedSailBoom = self.quiverSail.boom ?? ""
                }
                
                TextField("Extension", text: $updatedSailExtension)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear {
                        self.updatedSailExtension = self.quiverSail.extensionSize ?? ""
                }
                
                TextField("Update mast", text: $updatedSailMast)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear {
                        self.updatedSailMast = self.quiverSail.mast ?? ""
                }
            }
            
            VStack {
                Button(action: ({
                    self.quiverSail.brand = self.updatedSailBrand
                    self.quiverSail.model = self.updatedSailModel
                    self.quiverSail.size = self.updatedSailSize
                    self.quiverSail.boom = self.updatedSailBoom
                    self.quiverSail.extensionSize = self.updatedSailExtension
                    self.quiverSail.mast = self.updatedSailMast
                    
                    do {
                        try self.managedObjectContext.save()
                    } catch {
                        print(error)
                    }
                    
                    self.presentationMode.wrappedValue.dismiss()
                })) {
                    Text("Save")
                }
            .padding()
            }
        }
    }
}


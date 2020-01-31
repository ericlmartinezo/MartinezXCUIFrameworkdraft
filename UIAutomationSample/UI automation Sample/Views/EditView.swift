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
    
    var body: some View {
        VStack {
            VStack {
                TextField("Sail title", text: $updatedSailBrand)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear {
                        self.updatedSailBrand = self.quiverSail.brand ?? ""
                }
        
                TextField("Sail Model description", text: $updatedSailModel)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear {
                        self.updatedSailModel = self.quiverSail.model ?? ""
                }
            }
            
            VStack {
                Button(action: ({
                    self.quiverSail.brand = self.updatedSailBrand
                    self.quiverSail.model = self.updatedSailModel
                    
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

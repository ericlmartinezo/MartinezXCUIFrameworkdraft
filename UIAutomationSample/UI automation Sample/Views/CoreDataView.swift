//
//  CoreDataView.swift
//  QuiverData
//
//  Created by Eric Martinez on 1/30/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import SwiftUI
import CoreData

struct CoreDataView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: QuiverData.allIdeasFetchRequest()) var sailQuiver: FetchedResults<QuiverData>
    
    @State private var newSail = ""
    @State private var newModelDescription = ""
    @State private var whatSize = ""
    @State private var whichBoom = ""
    @State private var whichExtension = ""
    @State private var whichMast = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Rig a Sail")) {
                    VStack {
                        VStack {
                            TextField("Brand", text: self.$newSail)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Model", text: self.$newModelDescription)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Size", text: self.$whatSize)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Boom", text: self.$whichBoom)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Extension", text: self.$whichExtension)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Mast", text: self.$whichMast)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                    VStack {
                            Button(action: ({
                                
                                let entry = QuiverData(context: self.managedObjectContext)
                                entry.brand = self.newSail
                                entry.model = self.newModelDescription
                                entry.size = self.whatSize
                                entry.boom = self.whichBoom
                                entry.extensionSize = self.whichExtension
                                entry.mast = self.whichMast

                                    do {
                                        try self.managedObjectContext.save()
                                    } catch {
                                        print(error)
                                    }
                                self.newSail = ""
                                self.newModelDescription = ""
                                self.whatSize = ""
                                self.whichBoom = ""
                                self.whichExtension = ""
                                self.whichMast = ""
                            })) {
                                HStack {
                                    Image(systemName: "plus.circle.fill")
                                        .foregroundColor(.green)
                                        .imageScale(.large)
                                    Text("Add Rig")
                                }
                            }
                            .padding()
                        }
                    }
                }
                .font(.headline)
                
            Section(header: Text("Sail Quiver")) {
   
                ForEach(self.sailQuiver)  { quiverSail in
                    NavigationLink(destination: EditView(quiverSail: quiverSail)) {
                        VStack(alignment: .leading) {
                            Text(quiverSail.brand ?? "")
                                .font(.headline)
                            Text(quiverSail.model ?? "")
                                .font(.subheadline)
                            Text(quiverSail.size ?? "")
                                .font(.headline)
                            Text(quiverSail.boom ?? "")
                                .font(.subheadline)
                            Text(quiverSail.extensionSize ?? "")
                                .font(.headline)
                            Text(quiverSail.mast ?? "")
                                .font(.subheadline)
                        }
                    }
                }
                .onDelete { (indexSet) in
                    let rigEntryDelete = self.sailQuiver[indexSet.first!]
                    self.managedObjectContext.delete(rigEntryDelete)

                    do {
                        try self.managedObjectContext.save()
                    } catch {
                        print(error)
                        }
                    }
                }
                .font(.headline)
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Your Quiver Bag"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct CoreDataView_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataView()
    }
}

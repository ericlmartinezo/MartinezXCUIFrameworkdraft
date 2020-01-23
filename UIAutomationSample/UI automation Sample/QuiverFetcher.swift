//
//  QuiverFetcher.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/22/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation

public class QuiverFetcher: ObservableObject {
    
    @Published var quiver = [Rigs]()
    
    init(){
        load()
    }
    
    var decoder = JSONDecoder()
    
    func load() { do {
        
        let quiverInfo = try! decoder.decode(Rigs.self, from: quiverJson)
        if quiverInfo.id != 1 {
            print("data is not available")
        } else {
            DispatchQueue.main.async {
                self.quiver = [quiverInfo]
            }
            print(quiverInfo.sail)
            print(quiverInfo.size)
            print(quiverInfo.boom)
            print(quiverInfo.extSize)
            print(quiverInfo.mast)
            }
        }
    }
}

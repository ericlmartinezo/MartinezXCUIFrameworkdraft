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
    
    func load() {
        let quiverInfo = try! decoder.decode(Array<Rigs>.self, from: quiverJson)
        
        do {
            if quiverInfo.isEmpty {
                print("data is not available")
        } else {
            DispatchQueue.main.async {
                self.quiver = quiverInfo
            }
            print("Success")
            }
        }
    }
}

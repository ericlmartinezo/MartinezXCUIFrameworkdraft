//
//  QuiverModel.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/22/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation


let quiverJson = """
    {
        "id": 1,
        "sail": "North",
        "model": "Natural",
        "size": "5.8",
        "boom": "185",
        "extSize": "27",
        "mast": "430"
    }

""".data(using: .utf8)!

struct Rigs: Decodable, Identifiable {
    public var id: Int
    public var sail: String
    public var model: String
    public var size: String
    public var boom: String
    public var extSize: String
    public var mast: String
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case sail = "sail"
           case model = "model"
           case size = "size"
           case boom = "boom"
           case extSize = "extSize"
           case mast = "mast"
        }
}

//
//  QuiverModel.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/22/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation

let quiverJson = """
    [{
        "id": 1,
        "brand": "North",
        "model": "Natural",
        "size": "5.8",
        "boom": "185",
        "extSize": "27",
        "mast": "430"
    },
    {
        "id": 2,
        "brand": "Ezzy",
        "model": "Wave",
        "size": "5.0",
        "boom": "140",
        "extSize": "20",
        "mast": "400"
    },{
        "id": 3,
        "brand": "Neil Pryde",
        "model": "Wave",
        "size": "4.2",
        "boom": "140",
        "extSize": "20",
        "mast": "400"
    },{
        "id": 4,
        "brand": "Gaastra",
        "model": "Wave",
        "size": "4.6",
        "boom": "140",
        "extSize": "20",
        "mast": "400"
    },{
        "id": 5,
        "brand": "Gaastra",
        "model": "Freeride",
        "size": "6.3",
        "boom": "140",
        "extSize": "20",
        "mast": "430"
    },{
        "id": 6,
        "brand": "Ezzy",
        "model": "Wave",
        "size": "3.8",
        "boom": "140",
        "extSize": "20",
        "mast": "370"
    }]

""".data(using: .utf8)!

struct Rigs: Decodable, Identifiable, Encodable {
    public var id: Int?
    public var brand: String?
    public var model: String?
    public var size: String?
    public var boom: String?
    public var extSize: String?
    public var mast: String?
    
    enum CodingLlaves: String, CodingKey {
           case id = "id"
           case brand = "sail"
           case model = "model"
           case size = "size"
           case boom = "boom"
           case extSize = "extSize"
           case mast = "mast"
        }
}

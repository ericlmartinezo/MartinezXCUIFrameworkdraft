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
        "sail": "North",
        "model": "Natural",
        "size": "5.8",
        "boom": "185",
        "extSize": "27",
        "mast": "430"
    },
    {
        "id": 2,
        "sail": "Ezzy",
        "model": "Wave",
        "size": "5.0",
        "boom": "140",
        "extSize": "20",
        "mast": "400"
    },{
        "id": 3,
        "sail": "Neil Pryde",
        "model": "Wave",
        "size": "4.2",
        "boom": "140",
        "extSize": "20",
        "mast": "400"
    },{
        "id": 4,
        "sail": "Gaastra",
        "model": "Wave",
        "size": "4.6",
        "boom": "140",
        "extSize": "20",
        "mast": "400"
    },{
        "id": 5,
        "sail": "Gaastra",
        "model": "Freeride",
        "size": "6.3",
        "boom": "140",
        "extSize": "20",
        "mast": "430"
    },{
        "id": 6,
        "sail": "Ezzy",
        "model": "Wave",
        "size": "3.8",
        "boom": "140",
        "extSize": "20",
        "mast": "370"
    }]

""".data(using: .utf8)!

struct Rigs: Decodable, Identifiable, Encodable {
    public var id: Int?
    public var sail: String?
    public var model: String?
    public var size: String?
    public var boom: String?
    public var extSize: String?
    public var mast: String?
    
    enum CodingLlaves: String, CodingKey {
           case id = "id"
           case sail = "sail"
           case model = "model"
           case size = "size"
           case boom = "boom"
           case extSize = "extSize"
           case mast = "mast"
        }
}

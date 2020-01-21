//
//  MovieModel.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/19/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation

struct Movie: Decodable, Identifiable {
    public var id: Int
    public var name: String
    public var released: String
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case name = "title"
           case released = "year"
        }
}

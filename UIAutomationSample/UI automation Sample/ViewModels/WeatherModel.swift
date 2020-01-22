//
//  WeatherModel.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/21/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation

enum NoaaPortlandUrl: String {
    case urlPortlandUrl = "http://forecast.weather.gov/MapClick.php?lat=45.5361588&lon=-122.8328414&FcstType=json"
}
struct Weather: Decodable, Identifiable {
    public var id: String
    public var portlandRegion: String
    public var portlandWFO: String
    public var portlandZone: String
    public var portlandAreaDescription: String
    
    enum PortlandLocationKey: String {
        case id = "id"
        case portlandRegion = "region"
        case portlandWFO = "wfo"
        case portlandZone = "zone"
        case portlandAreaDescription = "areaDescription"
    }

    enum PortlandLocationValue: String {
        case regionValue = "wrh"
        case wfoValue = "PQR"
        case zoneValue = "ORZ006"
        case areaDescription = "3 Miles NNW Cedar Hills OR"
    }
}

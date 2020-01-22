//
//  WeatherVIew.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/21/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import SwiftUI

struct WeatherView: View {
    @ObservedObject var fetch = WeatherFetcher().self
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text(LocalizedStringKey(fetch.weather.first!.portlandRegion).self)
//            Text(LocalizedStringKey(fetch.weather.)
//            Text(LocalizedStringKey(Weather.PortlandLocationValue.regionValue.rawValue).self)
//                tableName: Text("This is the third view").font(.largeTitle))
//            List(fetch.weather) { weather in
//                VStack (alignment: .leading) {
//                    Text(weather.portlandRegion.lowercased())
//                    Text(weather.portlandZone.lowercased())
//                        .font(.system(size: 11))
//                        .foregroundColor(Color.gray)
//                }
//            }
        }.padding(.all, 10)
    }
}
//noaaLoad()
//AccessibilityActionKind
//ViewBuilder
//ObservedObject
//ScrollView
//TabView
struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}

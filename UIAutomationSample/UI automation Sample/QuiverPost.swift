//
//  QuiverPost.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/25/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation

public class QuiverPost: ObservableObject {

    init(){
        writeToFile()
    }
    
    func writeToFile() {
            
            let postData:Dictionary<String, Any> = [
                            "id": 9,
                            "sail": "New",
                            "model": "Wave",
                            "size": "3.8",
                            "boom": "140",
                            "extSize": "20",
                            "mast": "370"
                     ]
            do {
                let data = try JSONSerialization.data(withJSONObject: postData, options: [])
                if let dataString = String(data: data, encoding: .utf8) {
                    print(dataString)
                }
            } catch {
                print(error)
        }
            do {
                let data = try JSONSerialization.data(withJSONObject: postData, options: [])
                if let documentDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                let fileUrl = documentDirectoryUrl.appendingPathComponent("myRigs.json")
                    try data.write(to: fileUrl)

                    print(documentDirectoryUrl)
                    print(fileUrl)
            }
        } catch {
        print(error)
        }
    }
}

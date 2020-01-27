//
//  QuiverWrite.swift
//  UIautomationSample
//
//  Created by Eric Martinez on 1/26/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import RealmSwift

public class DataType: Object, ObservableObject {
    @objc dynamic var brand = ""
    @objc dynamic var model = ""
    @objc dynamic var size = ""
    @objc dynamic var boom = ""
    @objc dynamic var extensionSize = ""
    @objc dynamic var mast = ""
}

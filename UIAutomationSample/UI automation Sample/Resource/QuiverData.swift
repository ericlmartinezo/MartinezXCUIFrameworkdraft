//
//  FullRig+CoreDataClass.swift
//  
//
//  Created by Eric Martinez on 1/28/20.
//
//

import Foundation
import CoreData

@objc(QuiverData)
public class QuiverData: NSManagedObject, Identifiable {
    @NSManaged public var brand: String?
    @NSManaged public var model: String?
}

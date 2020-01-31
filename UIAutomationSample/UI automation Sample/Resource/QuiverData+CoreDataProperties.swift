//
//  FullRig+CoreDataProperties.swift
//  
//
//  Created by Eric Martinez on 1/28/20.
//
//

import Foundation
import CoreData

extension QuiverData {
    static func allIdeasFetchRequest() -> NSFetchRequest<QuiverData> {
        
        let request = NSFetchRequest<QuiverData>(entityName: "QuiverData")

     request.sortDescriptors = [NSSortDescriptor(key: "model", ascending: true)]
        
        return request

    }
}

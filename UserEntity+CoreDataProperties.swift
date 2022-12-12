//
//  UserEntity+CoreDataProperties.swift
//  
//
//  Created by Amaury C. Rivera on 3/9/22.
//
//

import Foundation
import CoreData


extension UserEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserEntity> {
        return NSFetchRequest<UserEntity>(entityName: "UserEntity")
    }

    @NSManaged public var amountPushUps: Int32
    @NSManaged public var weekCompleted: Bool

}

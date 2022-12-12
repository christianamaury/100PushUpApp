//
//  PushUpNSManaged.swift
//  PushUpApp
//
//  Created by Amaury C. Rivera on 7/27/23.
//

import Foundation
import CoreData

@objc(UserEntity)
class userEntity: NSManagedObject
{
    //Testing Purposes
    @NSManaged var testingString: String!
}

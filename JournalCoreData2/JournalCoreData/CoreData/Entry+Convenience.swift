//
//  Entry + Convenience.swift
//  JournalCoreData
//
//  Created by Jaymond Richardson on 4/26/21.
//
import Foundation
import CoreData

extension Entry {
    @discardableResult convenience init (title: String, bodyText: String, timestamp: Date = Date(), context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.title = title
        self.timestamp = timestamp
        self.bodyText = bodyText
    }
}//End of Extension

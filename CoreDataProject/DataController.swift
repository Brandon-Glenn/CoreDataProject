//
//  DataController.swift
//  CoreDataProject
//
//  Created by Brandon Glenn on 1/4/22.
//

import CoreData
import Foundation


class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataProject")
    
    init() {
        print("Initialize DataController")
        container.loadPersistentStores { description, error in
            if let error = error {
                print ("Core data failed to load: \(error.localizedDescription)")
                return
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
    
}

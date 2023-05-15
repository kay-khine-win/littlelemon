//
//  LittleLemonRestaurantCapstoneApp.swift
//  LittleLemonRestaurantCapstone
//
//  Created by Kay Khine win on 11/4/23.
//

import SwiftUI

@main
struct LittleLemonRestaurantCapstoneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Onboarding()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

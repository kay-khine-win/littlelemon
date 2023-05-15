//
//  Home.swift
//  LittleLemonRestaurantCapstone
//
//  Created by Kay Khine win on 15/5/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView{
            // Menu tab item
                Menu()
                    .tabItem {
                        Label("Menu", systemImage: "list.dash")
                    }
                
                // Profile tab item
                UserProfile()
                    .tabItem {
                        Label("Profile", systemImage: "square.and.pencil")
                    }
        }.navigationBarBackButtonHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

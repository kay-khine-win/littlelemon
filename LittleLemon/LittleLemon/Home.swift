//
//  Home.swift
//  LittleLemon
//
//  Created by Kay Khine win on 27/4/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView{
            Menu()
                .tabItem {
                Label("Menu", systemImage: "list.dash")
            }
            UserProfile()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                                        Text("Profile")
                    
                }
        }.navigationBarBackButtonHidden(true)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

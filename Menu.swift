//
//  Menu.swift
//  LittleLemonRestaurantCapstone
//
//  Created by Kay Khine win on 15/5/23.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack {
                   Text("Little Lemon App") // Application title
                       .font(.title)
                       .padding()
                   
                   Text("Chicago") // Restaurant location
                       .font(.headline)
                       .padding()
                   
                   Text("Order delicious food from Little Lemon. Browse our menu, customize your order, and enjoy convenient delivery.")
                       .multilineTextAlignment(.center)
                       .padding()
                   
                   List {
                       // Add menu items here
                   }
               }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

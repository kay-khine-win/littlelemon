//
//  Menu.swift
//  LittleLemon
//
//  Created by Kay Khine win on 27/4/23.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack{
            Text("My Restaurant App")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom)
                        
                        Text("Location: Chicago")
                            .font(.title2)
                            .foregroundColor(.gray)
                        
                        Text("Welcome to My Restaurant App, where you can explore our menu, order online, and more!")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        List {
                            // empty list for now
                        }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

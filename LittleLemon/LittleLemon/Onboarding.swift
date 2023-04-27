//
//  Onboarding.swift
//  LittleLemon
//
//  Created by Kay Khine win on 27/4/23.
//

import SwiftUI
let kFirstName = "first name key"
let kLastName = "last name key"
let kEmail = "email key"

struct Onboarding: View {
    @State private var firstName = ""
        @State private var lastName = ""
        @State private var email = ""
        
        @State private var name = ""
        @State private var password = ""
        @State private var isLoggedIn = false

        
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                                   destination: Home(),
                                   isActive: $isLoggedIn,
                                   label: {
                                       EmptyView()
                                   })
           
                .isDetailLink(false) // disable the default behavior of pushing the destination view onto the navigation stack
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
                TextField("Email", text: $email)
                Button("Register") {
//                    if !firstName.isEmpty && !password.isEmpty {
//                                            isLoggedIn = true
//                                        }
                    if !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty {
                        isLoggedIn = true
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        UserDefaults.standard.set(lastName, forKey: kLastName)
                        UserDefaults.standard.set(email, forKey: kEmail)
                    }
                }
            }
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}

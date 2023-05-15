//
//  Onboarding.swift
//  LittleLemonRestaurantCapstone
//
//  Created by Kay Khine win on 11/4/23.
//
let kFirstName = "first_name"
let kLastName = "last_name"
let kEmail = "email"
// Login constant
let kIsLoggedIn = "kIsLoggedIn"
 let isLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn)
    
import SwiftUI

struct Onboarding: View {
    @State private var firstName = ""
       @State private var lastName = ""
       @State private var email = ""
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
        VStack{
            NavigationLink(destination: Home(), isActive: $isLoggedIn) {}

            Text("First Name *")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            TextField("First Name", text: $firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Text("Last Name *") .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            TextField("Last Name", text: $lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Text("Email *")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Register") {
                if !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty {
                    UserDefaults.standard.set(firstName, forKey: kFirstName)
                    UserDefaults.standard.set(lastName, forKey: kLastName)
                    UserDefaults.standard.set(email, forKey: kEmail)
                    
                    firstName = ""
                    lastName = ""
                    email = ""
                    
                    // Set isLoggedIn to true
                    isLoggedIn = true
                    UserDefaults.standard.set(true, forKey: kIsLoggedIn)
                            
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

//
//  UserProfile.swift
//  LittleLemon
//
//  Created by Kay Khine win on 27/4/23.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        VStack{
            Text("Personal information")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Image("profile-image-placeholder")
                .resizable()
                .frame(width: 120, height: 120)
                .scaledToFit()
            
        }
    }
    
    struct UserProfile_Previews: PreviewProvider {
        static var previews: some View {
            UserProfile()
        }
    }
}

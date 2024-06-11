//
//  RegistrationView.swift
//  MetaThreads
//
//  Created by Rohit Manivel on 6/10/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var fullName = ""
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack{
                    TextField("Enter your full name", text: $fullName)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your user name", text: $username)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your email", text: $email)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                    
                    Button {
                        
                    } label: {
                        Text("Sign up")
                            .modifier(ThreadsAuthenticationButtonModifier())
                            
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    RegistrationView()
}

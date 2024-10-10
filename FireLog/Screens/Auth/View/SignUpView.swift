//
//  SignUpView.swift
//  FireLog
//
//  Created by Ritik Karma on 02/10/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var fullName: String = ""
    @State private var password: String = ""
    @State private var ConfirmPassword: String = ""
    
    var isValidPassword: Bool {
        password == ConfirmPassword
    }

    
    var body: some View {
        NavigationView {
            VStack(spacing:16){
                Text("Please fill all information to create an account")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                
                
                VStack(spacing: 15){
                    
                    TextField(text: $email) {
                        Text("Email")
                    }
                    Divider()
                    
                    TextField(text: $fullName) {
                        Text("Full Name")
                    }
                    Divider()

                    
                    SecureField(text: $password) {
                        Text("Password")
                    }
                    Divider()
                    
                    HStack{
                        SecureField(text: $ConfirmPassword) {
                            Text("Conferm Password")
                        }
                        Spacer()
                        if !password.isEmpty && !ConfirmPassword.isEmpty {
                            Image(systemName: "\(isValidPassword ? "checkmark" : "xmark").circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundStyle(isValidPassword ? .green : .red)
                        }
                           
                                    
                    }
                    Divider()
                        
                }
                
             
                
                
                
                Button{
                    
                } label: {
                    Text("Create Account")
                }
                .buttonStyle(CapsuleButtonStyle())
                Spacer()
            }
            .padding()
            
                             
        }
        .navigationTitle("Set up your account")
        .toolbarRole(.editor)
    }
}

#Preview {
    SignUpView()
}

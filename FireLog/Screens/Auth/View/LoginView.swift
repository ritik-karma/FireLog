//
//  LoginView.swift
//  FireLog
//
//  Created by Ritik Karma on 02/10/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 15) {
                    wellcomeImage
                    
                    wellcomeTitle
                    
                    Spacer().frame(height: 12)
                    
                    //Text Fields
                    VStack(spacing: 15){
                        
                        TextField(text: $email) {
                            Text("Email")
                        }
                        
                        Divider()
                        
                        SecureField(text: $password) {
                            Text("Password")
                        }
                        
                        Divider()

                            forgetButton
                        
                    }
                    
                    loginButton
                    
                    Spacer()
                    
                    orLine
                    
                    appleSignUp
                    
                    googleSignUp
                    
                    footerLine
                    
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
            }
        }
        
        
    }
}

#Preview {
    LoginView()
}

private var wellcomeImage: some View {
    Image("loginImage")
        .resizable()
        .scaledToFit()
        .frame(height: 250)
}

private var wellcomeTitle: some View {
    Text("Let's Connect With US!")
        .fontWeight(.semibold)
        .font(.title2)
        .foregroundStyle(LinearGradient(colors: [.green,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
    
}

private var loginButton: some View {
    Button{
        //Button Logic
    } label: {
        Text("Login")
    }
    .buttonStyle(CapsuleButtonStyle())
}

private var forgetButton: some View {
    HStack{
        Spacer()
        Button{
            //Forgate button login
        } label: {
            Text("Forgot Password?")
                .font(.caption)
                .foregroundColor(Color.gray)
                .fontWeight(.medium)
            
        }
    }
    
}

private var orLine: some View {
    HStack(spacing: 16){
        Rectangle()
            .frame(height: 1)
            .foregroundColor(Color.gray)
        Text("Or")
            .font(.headline)
            .foregroundColor(Color.gray)
        Rectangle()
            .frame(height: 1)
            .foregroundStyle(Color.gray)
    }
    
}

private var appleSignUp: some View {
    Button{
        
    } label: {
        Label("Sign up with Apple", systemImage: "apple.logo")
    }
    .buttonStyle(CapsuleButtonStyle(fontColour: .white, backgroundColour: .black))
    
}

private var googleSignUp: some View {
    Button{} label: {
        HStack{
            Image("google")
                .resizable()
                .scaledToFit()
                .frame(height: 15)
            Text("Sign up with Google")
        }
    }
    .buttonStyle(
        CapsuleButtonStyle(
            fontColour: .black,
            backgroundColour: .clear,
            hasBorder: true
        )
    )
    
}

private var footerLine: some View{
    HStack{
        Text("Don't have an accout?")
        NavigationLink("signUp") {
            SignUpView()
        }
    }
    .fontWeight(.medium)
}





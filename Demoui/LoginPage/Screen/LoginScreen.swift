//
//  LoginScreen.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/18/24.
//

import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    @State private var showAlert = false
    @State private var showRegistrationView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                VStack {
                    TextField(
                        "Login.UsernameField.Title",
                        text: $viewModel.username
                    )
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.top, 20)
                    .accessibilityIdentifier("username")
                    
                    Divider()
                    
                    SecureField(
                        "Login.PasswordField.Title",
                        text: $viewModel.password
                    )
                    .padding(.top, 20)
                    .accessibilityIdentifier("password")
                    
                    Divider()
                    
                    NavigationLink(destination: RegistrationPage(password: "one")) {
                        Text("Registration")
                    }
                }
                .padding(30)
                
                Spacer()
                
                Button(
                    action: {
                        showAlert = true
                    },
                    label: {
                        Text("Login.LoginButton.Title")
                            .font(.system(size: 24, weight: .bold, design: .default))
                            .frame(maxWidth: .infinity, maxHeight: 60)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .accessibilityIdentifier("loginButton")
                    })
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Unable to Save Workout Data"),
                        message: Text("The connection to the server was lost."),
                        primaryButton: .default (
                            Text("Try Again")
                        ),
                        secondaryButton: .destructive(
                            Text("Delete")
                        )
                    )
                }
                .padding(30)
            }
        }
    }
    
    var loginButtonClicked: () {
        print("login Clicked")
    }
}

#Preview {
    LoginScreen()
}


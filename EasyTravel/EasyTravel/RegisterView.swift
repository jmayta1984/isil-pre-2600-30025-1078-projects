//
//  RegisterView.swift
//  EasyTravel
//
//  Created by Jorge Mayta on 4/02/26.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            TextField("First name", text: $firstName)
                .padding()
                .frame(height: 50)
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
            
            TextField("Last name", text: $lastName)
                .padding()
                .frame(height: 50)
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
            
            TextField("Email", text: $email)
                .padding()
                .frame(height: 50)
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
            
            TextField("Password", text: $password)
                .padding()
                .frame(height: 50)
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
            
            TextField("Confirm assword", text: $confirmPassword)
                .padding()
                .frame(height: 50)
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
            
            Button {
                
            } label: {
                Text("Sign up")
                    .padding(.horizontal)
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 55/255, green: 31/255, blue: 104/255))
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal)
                    .padding(.top, 8)
            }
            
        }
    }
}

#Preview {
    RegisterView()
}

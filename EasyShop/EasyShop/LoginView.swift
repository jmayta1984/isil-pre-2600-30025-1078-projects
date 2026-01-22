//
//  LoginView.swift
//  EasyShop
//
//  Created by Jorge Mayta on 21/01/26.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var isVisible: Bool = false
    
    var body: some View {
        VStack {
            
            TextField("Email", text: $email)
                .padding(.horizontal)
                .frame(height: 56)
                .background()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
                .padding(.bottom, 8)
            
            HStack {
                if isVisible {
                    TextField("Password", text: $password)

                } else {
                    SecureField("Password", text: $password)
                }
                Button {
                    isVisible.toggle()
                } label: {
                    Image(systemName: isVisible ? "eye" : "eye.slash")
                        .tint(.gray.opacity(0.7))
                }

            }
            .padding(.horizontal)
            .frame(height: 56)
            .background()
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal)
            .padding(.vertical, 8)
            
            Button {
                
            } label: {
                Text("Login")
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
        .frame(maxHeight: .infinity)
        .background(Color(red: 225/255, green: 222/255, blue: 243/255))
    }
}

#Preview {
    LoginView()
}

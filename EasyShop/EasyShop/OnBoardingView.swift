//
//  OnBoardingView.swift
//  EasyShop
//
//  Created by Jorge Mayta on 21/01/26.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        VStack {
            Image("intro")
            
            Button {
                
            } label: {
                Text("Sign in")
                    .padding(.horizontal)
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 55/255, green: 31/255, blue: 104/255))
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal)
                    .padding(.bottom, 8)
            }
            
            Button {
                
            } label: {
                Text("Sign up")
                    .padding(.horizontal)
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .background()
                    .foregroundColor(Color(red: 55/255, green: 31/255, blue: 104/255))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal)
                    .padding(.top, 8)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(Color(red: 225/255, green: 222/255, blue: 243/255))
    }
}

#Preview {
    OnBoardingView()
}



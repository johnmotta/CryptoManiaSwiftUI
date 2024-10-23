//
//  LoginView.swift
//  CryptoManiaSwiftUI
//
//  Created by John Motta on 23/10/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 250, height: 250)
                .scaledToFit()
            
            Text("Junte-se à comunidade")
                .font(.title2)
                .padding(.horizontal)
            
            Text("Vamos conhecer todas as criptomoedas do mercado e seguir as que mais gostamos! Você não quer perder a oportunidade de comprar uma boa cripto.")
                .padding(.horizontal, 20)

            VStack {
                Button("Faça Login") {}
                    .frame(width: 200, height: 50)
                    .foregroundStyle(.black)
                    .background(Color("bColor"))
                    .cornerRadius(10)
                    .padding()
                
                Button("Register") {}
                    .frame(width: 200, height: 50)
                    .foregroundStyle(.black)
                    .background(Color("bColor"))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}

//
//  LoginView.swift
//  CryptoManiaSwiftUI
//
//  Created by John Motta on 23/10/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 200)
                
                Text("Junte-se à comunidade")
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.bottom)
                
                Text("Vamos conhecer todas as criptomoedas do mercado e seguir as que mais gostamos! Você não quer perder a oportunidade de comprar uma boa cripto.")
                    .padding(.horizontal, 39)
                
                
                NavigationLink(destination: CryptoView()) {
                    Text("Faça Login")
                        .frame(width: 200, height: 50)
                        .foregroundColor(.black)
                        .background(Color("bColor"))
                        .cornerRadius(10)
                        .padding()
                }
                
                NavigationLink(destination: ProgressView()) {
                    Text("Registrar")
                        .frame(width: 200, height: 50)
                        .foregroundStyle(.black)
                        .background(Color("bColor"))
                        .cornerRadius(10)
                }
                    
                
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}

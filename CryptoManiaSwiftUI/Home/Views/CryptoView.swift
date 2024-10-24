//
//  CryptoView.swift
//  CryptoManiaSwiftUI
//
//  Created by John Motta on 23/10/24.
//

import SwiftUI

struct CryptoView: View {
    @StateObject var viewModel = CryptoViewModel()
        
    var body: some View {
        NavigationStack {
            VStack {
                List(Array(viewModel.crypto.enumerated()), id: \.element.id) { index, crypto in
                    HStack {
                        AsyncImage(url: URL(string: "https://s2.coinmarketcap.com/static/img/coins/64x64/\(crypto.id).png")) { image in
                            image
                                .resizable()
                                .scaledToFit()
                            
                        } placeholder: {
                            ProgressView()
                        }
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text(crypto.name)
                                Text("|")
                                Text(crypto.symbol)
                                
                                Spacer()
                                
                                Text(String(format: "$%.2f", crypto.quote.usd.price))
                            }
                            
                            Spacer()
                            
                            HStack(spacing: 16) {
                                Text(String(format: "%.2f%%", crypto.quote.usd.percentChange1h))
                                    .foregroundStyle(crypto.quote.usd.percentChange1h >= 0 ? .green : .red)
                                    .font(.caption).bold()
                                
                                Text(String(format: "%.2f%%", crypto.quote.usd.percentChange24h))
                                    .foregroundStyle(crypto.quote.usd.percentChange24h >= 0 ? .green : .red)
                                    .font(.caption).bold()
                                
                                
                                Text(String(format: "%.2f%%", crypto.quote.usd.percentChange7d))
                                    .foregroundStyle(crypto.quote.usd.percentChange7d >= 0 ? .green : .red)
                                    .font(.caption).bold()
                                
                                Spacer()
                                
                                Button {
                                    if self.viewModel.crypto[index].favorite == nil {
                                        self.viewModel.crypto[index].favorite = false
                                    }
                                    
                                    viewModel.crypto[index].favorite?.toggle()
                                } label: {
                                    Image(systemName: crypto.favorite ?? false ? "heart.fill" :  "heart")
                                        .foregroundStyle(.red)
                                        .font(.title2)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                    .frame(height: 80)
                }
             
            }
            .onAppear(perform: viewModel.fetchData)
        }
    }
}

#Preview {
    CryptoView()
}

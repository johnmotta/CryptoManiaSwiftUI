//
//  CryptoViewModel.swift
//  CryptoManiaSwiftUI
//
//  Created by John Motta on 23/10/24.
//

import Foundation

class CryptoViewModel: ObservableObject {
    @Published var crypto: [Crypto] = []
    
    func fetchData() {
        ServiceManager.shared.fetchCoinMarketCap { result in
            switch result {
            case .success(let crypto):
                self.crypto = crypto
            case .failure(let failure):
                print(failure)
            }
        }
    }
}

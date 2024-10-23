//
//  Crypto.swift
//  CryptoManiaSwiftUI
//
//  Created by John Motta on 23/10/24.
//

import Foundation

struct ResponseData: Codable {
    let data: [Cripto]
}

struct Cripto: Codable {
    let id: Int
    var favorite: Bool?
    let name: String
    let symbol: String
    let quote: Quote

    enum CodingKeys: String, CodingKey {
        case id
        case favorite
        case name
        case symbol
        case quote
    }
}

struct Quote: Codable {
    let usd: Usd

    enum CodingKeys: String, CodingKey {
        case usd = "USD"
    }
}

struct Usd: Codable {
    let price: Double
    let percentChange1h: Double
    let percentChange24h: Double
    let percentChange7d: Double

    enum CodingKeys: String, CodingKey {
        case price
        case percentChange1h = "percent_change_1h"
        case percentChange24h = "percent_change_24h"
        case percentChange7d = "percent_change_7d"
    }
}

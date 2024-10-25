//
//  TabBarView.swift
//  CryptoManiaSwiftUI
//
//  Created by John Motta on 23/10/24.
//

import SwiftUI

struct TabBarView: View {
    
    @StateObject var viewModel = CryptoViewModel()
    @Binding var showTabBarView: Bool
    
    var body: some View {
        NavigationStack {
            TabView {
                CryptoView(viewModel: viewModel)
                    .tabItem {
                        Label("CryptoMania", systemImage: "bitcoinsign.circle.fill")
                    }
                
                FavoriteView(viewModel: viewModel)
                    .tabItem {
                        Label("Favoritos", systemImage: "star.fill")
                    }
            }
            .accentColor(Color("bColor"))
            .navigationBarTitle("CryptoMania", displayMode: .inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Logout") {
                        self.showTabBarView.toggle()
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

#Preview {
    TabBarView(showTabBarView: .constant(false))
}

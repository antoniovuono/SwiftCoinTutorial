//
//  HomeView.swift
//  SwiftCoinTutorial
//
//  Created by Antonio Vuono on 30/11/22.
//

import SwiftUI

struct HomeView: View {
    
    //Criando um estado de objeto configurando com a chamada de dados da api.
    @StateObject var viewModel = HomeViewModel()
        
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
            
                TopMoversView()
               
                Divider()
                
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

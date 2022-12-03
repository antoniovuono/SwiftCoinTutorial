//
//  TopMoversView.swift
//  SwiftCoinTutorial
//
//  Created by Antonio Vuono on 30/11/22.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                 .font(.headline)
                 .fontWeight(.bold)
             
            ScrollView(.horizontal, showsIndicators: false) {
                 HStack(spacing: 16) {
                     ForEach(viewModel.topMovingCoins) { coin in
                         TopMoverItemView(coin: coin)
                     }
                 }
             }
         }
        .padding()
    }
}
 
struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}

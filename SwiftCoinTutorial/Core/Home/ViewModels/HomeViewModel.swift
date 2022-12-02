//
//  HomeViewModel.swift
//  SwiftCoinTutorial
//
//  Created by Antonio Vuono on 01/12/22.
//

import SwiftUI

//Esse view model vai ser responsável por se comunicar com a API.
class HomeViewModel: ObservableObject {
    @Published var coins = [Coin]()
    //Initializer vai toda vez que essa classe for chamada vai fazer renderizar a função de fetchCoinData
    init() {
        fetchCoinData()
    }
   
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        //Transforma a url em um objeto de url.
        guard let url = URL(string: urlString) else { return }
        
        //Framework para fazer as requisições http
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response.statusCode)")
            }
            
            guard let data = data else { return }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                self.coins = coins
            } catch let error {
                print("DEBUG: Failed to decode with error: \(error)")
            }

            }.resume()
        }
    }


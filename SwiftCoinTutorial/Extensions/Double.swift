//
//  Double.swift
//  SwiftCoinTutorial
//
//  Created by Antonio Vuono on 03/12/22.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.locale = Locale(identifier: "en-US")
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        return formatter
    }
    
    private var numberFormatter: NumberFormatter {
       let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    func toPercentage() -> String {
        guard let numberAsString = numberFormatter.string(for: self) else { return ""}
        return numberAsString + "%"
    }
 }


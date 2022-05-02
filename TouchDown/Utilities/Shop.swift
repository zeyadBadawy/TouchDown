//
//  Shop.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 02/05/2022.
//

import Foundation

class Shop:ObservableObject {
    @Published var shouldShowProduct:Bool = false
    @Published var selectedProduct:Product?
}

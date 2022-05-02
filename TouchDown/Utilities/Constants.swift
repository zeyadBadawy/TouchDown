//
//  Constants.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

//Data
let players:[Player] = Bundle.main.decode("player.json")
let categories:[Category] = Bundle.main.decode("category.json")
let products:[Product] = Bundle.main.decode("product.json")
let brands:[Brand] = Bundle.main.decode("brand.json")
let sampleProduct = products[0]
//Color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
//Layout
let rowSpacing:CGFloat = 10
let coulmnsSpacing:CGFloat = 10
@available(iOS 14.0, *)
var gridItems:[GridItem] {
    return Array(repeating: GridItem(.flexible() , spacing: rowSpacing), count: 2)
}
//UX
let feedBack = UIImpactFeedbackGenerator(style: .medium)
//API
//Image
//Font
//String
//MISC


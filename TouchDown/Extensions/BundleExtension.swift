//
//  BundleExtension.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import Foundation

extension Bundle {
    func decode<T:Codable>(_ file:String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Faild to locate \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Faild to get \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode(T.self , from: data) else {
            fatalError("Faild to decode \(file) in bundle")
        }
        return loaded
    }
}

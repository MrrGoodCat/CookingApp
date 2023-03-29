//
//  DataService.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 26.03.2023.
//

import Foundation

class DataService {
    static let shared = DataService()

    private init() {}

    func parseJson<T: Codable>(jsonString: String, type: T.Type) -> T? {
        guard let jsonData = jsonString.data(using: .utf8) else {
            print("Error converting JSON string to data.")
            return nil
        }
        let decoder = JSONDecoder()

        do {
            let objects = try decoder.decode(T.self, from: jsonData)
            return objects
        } catch {
            print("Error decoding JSON: \(error)")
            return nil
        }
    }
}

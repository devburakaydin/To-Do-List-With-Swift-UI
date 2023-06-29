//
//  Extensions.swift
//  ToDoList
//
//  Created by Burak on 29.06.2023.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String:Any] {
        guard let data = try?JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
            return json ?? [:]
        }catch {
            return [:]
        }
    }
}


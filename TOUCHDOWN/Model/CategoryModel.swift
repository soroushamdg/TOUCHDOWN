//
//  CategoryModel.swift
//  TOUCHDOWN
//
//  Created by Soro on 2022-10-09.
//

import Foundation

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}

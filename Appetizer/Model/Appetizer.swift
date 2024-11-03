//
//  Appetizer.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 09/10/2024.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let description: String
    let name: String
    let id: Int
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse : Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        description: "Description",
        name: "Name",
        id: 1,
        price: 9.99,
        imageURL: "",
        calories: 10,
        protein: 20,
        carbs: 100
    )
    static let appetizers = [
        Appetizer(
            description: "Edible plantains",
            name: "Plantain",
            id: 1,
            price: 9.99,
            imageURL: "",
            calories: 10,
            protein: 20,
            carbs: 100
        ),
        Appetizer(
            description: "Delicious meat balls",
            name: "Meat balls",
            id: 2,
            price: 4.50,
            imageURL: "",
            calories: 10,
            protein: 20,
            carbs: 100
        ),
        Appetizer(
            description: "Yummy creamy yoghurt",
            name: "Yoghurt",
            id: 3,
            price: 10.25,
            imageURL: "",
            calories: 10,
            protein: 20,
            carbs: 100
        )]
}

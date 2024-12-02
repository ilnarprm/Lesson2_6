//
//  Model.swift
//  Lesson2_6
//
//  Created by Ilnar on 30.11.2024.
//

import Foundation

struct Card {
    let name: String
    let image: String
    let title: String
    let date: String
    let text: String

    static var allCards: [Card] {
        [
            Card(
                name: "Имя Фамилия",
                image: "img1",
                title: "Заголовок",
                date: "20 ноября 2024",
                text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore"
            ),
            Card(
                name: "Имя Фамилия",
                image: "img2",
                title: "Заголовок",
                date: "19 ноября 2024",
                text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
            ),
        ]
    }
}

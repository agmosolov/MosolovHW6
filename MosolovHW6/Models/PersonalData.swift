//
//  PersonalData.swift
//  MosolovHW6
//
//  Created by Александр Мосолов on 04.04.2023.
//


struct PersonalData {
    let login: String
    let password: String
    let person: Person
}

enum Person: String {
    case firstName = "Ivan"
    case secondName = "Ivanov"
    case birthDay = "4 april 2004"
    case birthPlacement = "Moscow"
    case favoriteHobby = "Football"
    case profession = "Sales Manager"
    case familyStatus = "Married"
    case children = "2 sons"
}

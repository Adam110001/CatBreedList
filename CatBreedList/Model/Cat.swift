//
//  Car.swift
//  CatBreedList
//
//  Created by Adam Dovciak on 06/07/2021.
//

import UIKit

// MARK: - Cat
class Cat: Codable {
    let adaptability, affectionLevel: Int
    let altNames: String?
    let cfaURL: String?
    let childFriendly: Int
    let countryCode, countryCodes, welcomeDescription: String
    let dogFriendly, energyLevel, experimental, grooming: Int
    let hairless, healthIssues, hypoallergenic: Int
    let id: String
    let image: Image?
    let indoor, intelligence: Int
    let lap: Int?
    let lifeSpan, name: String
    let natural: Int
    let origin: String
    let rare: Int
    let referenceImageID: String?
    let rex, sheddingLevel, shortLegs, socialNeeds: Int
    let strangerFriendly, suppressedTail: Int
    let temperament: String
    let vcahospitalsURL: String?
    let vetstreetURL: String?
    let vocalisation: Int
    let weight: Weight
    let wikipediaURL: String?
    let bidability, catFriendly: Int?

    enum CodingKeys: String, CodingKey {
        case adaptability
        case affectionLevel = "affection_level"
        case altNames = "alt_names"
        case cfaURL = "cfa_url"
        case childFriendly = "child_friendly"
        case countryCode = "country_code"
        case countryCodes = "country_codes"
        case welcomeDescription = "description"
        case dogFriendly = "dog_friendly"
        case energyLevel = "energy_level"
        case experimental, grooming, hairless
        case healthIssues = "health_issues"
        case hypoallergenic, id, image, indoor, intelligence, lap
        case lifeSpan = "life_span"
        case name, natural, origin, rare
        case referenceImageID = "reference_image_id"
        case rex
        case sheddingLevel = "shedding_level"
        case shortLegs = "short_legs"
        case socialNeeds = "social_needs"
        case strangerFriendly = "stranger_friendly"
        case suppressedTail = "suppressed_tail"
        case temperament
        case vcahospitalsURL = "vcahospitals_url"
        case vetstreetURL = "vetstreet_url"
        case vocalisation, weight
        case wikipediaURL = "wikipedia_url"
        case bidability
        case catFriendly = "cat_friendly"
    }

    init(adaptability: Int, affectionLevel: Int, altNames: String?, cfaURL: String?, childFriendly: Int, countryCode: String, countryCodes: String, welcomeDescription: String, dogFriendly: Int, energyLevel: Int, experimental: Int, grooming: Int, hairless: Int, healthIssues: Int, hypoallergenic: Int, id: String, image: Image?, indoor: Int, intelligence: Int, lap: Int?, lifeSpan: String, name: String, natural: Int, origin: String, rare: Int, referenceImageID: String?, rex: Int, sheddingLevel: Int, shortLegs: Int, socialNeeds: Int, strangerFriendly: Int, suppressedTail: Int, temperament: String, vcahospitalsURL: String?, vetstreetURL: String?, vocalisation: Int, weight: Weight, wikipediaURL: String?, bidability: Int?, catFriendly: Int?) {
        self.adaptability = adaptability
        self.affectionLevel = affectionLevel
        self.altNames = altNames
        self.cfaURL = cfaURL
        self.childFriendly = childFriendly
        self.countryCode = countryCode
        self.countryCodes = countryCodes
        self.welcomeDescription = welcomeDescription
        self.dogFriendly = dogFriendly
        self.energyLevel = energyLevel
        self.experimental = experimental
        self.grooming = grooming
        self.hairless = hairless
        self.healthIssues = healthIssues
        self.hypoallergenic = hypoallergenic
        self.id = id
        self.image = image
        self.indoor = indoor
        self.intelligence = intelligence
        self.lap = lap
        self.lifeSpan = lifeSpan
        self.name = name
        self.natural = natural
        self.origin = origin
        self.rare = rare
        self.referenceImageID = referenceImageID
        self.rex = rex
        self.sheddingLevel = sheddingLevel
        self.shortLegs = shortLegs
        self.socialNeeds = socialNeeds
        self.strangerFriendly = strangerFriendly
        self.suppressedTail = suppressedTail
        self.temperament = temperament
        self.vcahospitalsURL = vcahospitalsURL
        self.vetstreetURL = vetstreetURL
        self.vocalisation = vocalisation
        self.weight = weight
        self.wikipediaURL = wikipediaURL
        self.bidability = bidability
        self.catFriendly = catFriendly
    }
}

// MARK: - Image
class Image: Codable {
    let height: Int?
    let id: String?
    let url: String?
    let width: Int?

    init(height: Int?, id: String?, url: String?, width: Int?) {
        self.height = height
        self.id = id
        self.url = url
        self.width = width
    }
}

// MARK: - Weight
class Weight: Codable {
    let imperial, metric: String

    init(imperial: String, metric: String) {
        self.imperial = imperial
        self.metric = metric
    }
}

typealias NCat = [Cat]

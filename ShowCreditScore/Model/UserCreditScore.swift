//
//  UserCreditScore.swift
//  ShowCreditScore
//
//  Created by Mani Yechuri on 2023/08/26.
//

struct UserCreditScore : Codable {
    var accountIDVStatus : String
    let creditReportInfo : CreditReport
    let dashboardStatus : String
    let personaType : String
    let coachingSummary : CoachingSummary
    let augmentedCreditScore : Int?
}

struct CreditReport : Codable {
    let score : Int
    let scoreBand : Int
    let clientRef : String
    let status : String
    let maxScoreValue : Int
    let minScoreValue : Int
    let monthsSinceLastDefaulted : Int
    let hasEverDefaulted : Bool
    let monthsSinceLastDelinquent : Int
    let hasEverBeenDelinquent : Bool
    let percentageCreditUsed : Int
    let percentageCreditUsedDirectionFlag : Int
    let changedScore : Int
    let currentShortTermDebt : Int
    let currentShortTermNonPromotionalDebt : Int
    let currentShortTermCreditLimit : Int
    let currentShortTermCreditUtilisation : Int
    let changeInShortTermDebt : Int
    let currentLongTermDebt : Int
    let currentLongTermNonPromotionalDebt : Int
    let currentLongTermCreditLimit : Int?
    let currentLongTermCreditUtilisation : Int?
    let changeInLongTermDebt : Int
    let numPositiveScoreFactors : Int
    let numNegativeScoreFactors : Int
    let equifaxScoreBand : Int
    let equifaxScoreBandDescription : String
    let daysUntilNextReport : Int
}

struct CoachingSummary : Codable {
    let activeTodo : Bool
    let activeChat : Bool
    let numberOfTodoItems : Int
    let numberOfCompletedTodoItems : Int
    let selected : Bool
}

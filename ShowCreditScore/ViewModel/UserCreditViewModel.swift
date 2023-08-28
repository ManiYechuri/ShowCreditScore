//
//  UserCreditViewModel.swift
//  ShowCreditScore
//
//  Created by Mani Yechuri on 2023/08/26.
//

import SwiftUI
import Combine

class UserCreditViewModel : ObservableObject {
    
    @Published var userCreditData : UserCreditScore?
    private let apiManager : APIManager = APIManager()
        
    func fetchData() {
        apiManager.fetchData(urlString: Constant.API.url) { (result : Result<UserCreditScore, DataError>) in
            switch result {
            case .success(let creditScore):
                self.userCreditData = creditScore
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

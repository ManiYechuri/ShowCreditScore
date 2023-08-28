//
//  CreditScoreDetailView.swift
//  ShowCreditScore
//
//  Created by Mani Yechuri on 2023/08/28.
//

import SwiftUI

struct CreditScoreDetailView: View {
    var userDetails : UserCreditScore
    var body: some View {
        CardView()
            
        Text("\(userDetails.creditReportInfo.score)")
    }
}

struct CreditScoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CreditScoreDetailView(userDetails: testCreditReport)
    }
}

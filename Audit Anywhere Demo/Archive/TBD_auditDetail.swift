//
//  auditDetail.swift
//  test_AA1
//
//  Created by Shakeel Vohra on 29/06/2023.
//

import SwiftUI

struct auditDetail: View { 
    var audit: AuditStruct
    var body: some View {
        VStack{
            Text(audit.name)
                .font(.title)
                .padding(.bottom)
            HStack{
                Image(systemName: "calendar.circle")
                Text(audit.date)
            }
            HStack{
                Image(systemName: "gauge.medium")
                Text(audit.rating)
            }
            
            ScrollView{
                Text("Executive Summary")
                    .font(.title2)
                    .padding(.vertical
                    )
                Text(audit.execSummary)
            }
            
        }
    }
}

struct auditDetail_Previews: PreviewProvider {
    static var previews: some View {
        auditDetail(audit: audits[0])
    }
}

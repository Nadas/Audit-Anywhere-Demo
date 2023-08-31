//
//  LandmarkList.swift
//  landmarks
//
//  Created by Shakeel Vohra on 27/06/2023.
//

import SwiftUI

struct AuditList: View {
    var body: some View {
        List (audits) { something in
        AuditRow(audit: something)
        }
    }
}

struct AuditList_Previews: PreviewProvider {
    static var previews: some View {
        AuditList()
    }
}

//
//  MainTabView.swift
//  test_AA1
//
//  Created by Shakeel Vohra on 06/07/2023.
//

import SwiftUI

struct MainTabView: View {
    var audit: AuditStruct
    
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            
            TabView {
                SummaryView(audit: audit)
                    .preferredColorScheme(.light)
                    .tabItem {
                        Label("Summary", systemImage: "doc.append")
                    }
                ObservationSummaryView3(audit: audit)
                    .preferredColorScheme(.light)
                    .tabItem {
                        Label("Obs Summary", systemImage: "doc.text")
                    }
                
                ObservationDetailsView(audit: audit)
                    .preferredColorScheme(.light)
                    .tabItem {
                        Label("Obs Details", systemImage: "doc.text.magnifyingglass")
                    }
                AppendiciesView()
                    .preferredColorScheme(.light)
                    .tabItem {
                        Label("Appendix", systemImage: "bookmark")
                    }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(audit: audits[0])
    }
}

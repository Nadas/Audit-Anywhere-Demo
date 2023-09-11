//
//  LandmarkRow.swift
//  landmarks
//
//  Created by Shakeel Vohra on 27/06/2023.
//

import SwiftUI

struct AuditRow: View {
    
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .font: CustomColor.customFont]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor(CustomColor.pifGold), .font: CustomColor.customFont]
    }
    
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            VStack{
                //NavigationView {
                    List (audits) { audit in
                        NavigationLink {
                            MainTabView(audit: audit)
                        }
                    label: {
                        VStack{
                            HStack{
                                Text(audit.name)
                                    .font(.custom("Sakkal Majalla", size: 22))
                                    .padding(5)
                                Spacer()
                            }
                        }
                    }
                    .listRowBackground(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white.opacity(0.35))
                            .padding(.vertical,2)
                            .padding(.horizontal,1)
                    )
                    }
                    
                    .foregroundColor(.black)
                    .scrollContentBackground(.hidden)
                    .navigationTitle("Audits")
                    .navigationBarTitleDisplayMode(.inline)
                    
                    .background{CustomColor.pifCream
                            .scaledToFill()
                            .edgesIgnoringSafeArea(.all)}
                //}
            }
            Spacer()
        }
    }
}

struct AuditRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            AuditRow()
        }
    }
}


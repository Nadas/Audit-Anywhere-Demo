//
//  LandingView.swift
//  Audit Anywhere Demo
//
//  Created by Nada Alghofaili on 01/09/2023.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationView {
            ZStack{
                CustomColor.pifCream
                    .ignoresSafeArea()
                
                VStack {
                    Image("PIF Logo")
                        .resizable() // Make the image resizable
                        .frame(width: 120, height: 120)
                        .padding(.top, 100)
                        .padding(.bottom, 30)
                    //Spacer()
                    
                    NavigationLink(destination: AuditRow()) {
                        HStack{
                            Image(systemName: "doc.on.doc")
                                .font(.system(size: 50, weight: .ultraLight))
                            VStack(alignment: .leading){
                                Text("Internal Audit Reports")
                                    .font(.custom("Sakkal Majalla", size: 24))
                            }
                            Spacer()
                        }
                        .padding(25)
                        .frame(width: 300, height: 120)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 1, x: 0, y: 1)
                        
                    }
                    
                    
                    HStack{
                        Image(systemName: "chart.xyaxis.line")
                            .font(.system(size: 50, weight: .ultraLight))
                            .foregroundColor(CustomColor.pifGold)
                        
                        VStack(alignment: .leading){
                            Text("Management Information")
                                .font(.custom("Sakkal Majalla", size: 24))
                                .foregroundColor(CustomColor.pifGold)
                            
                            Text("Coming Soon")
                                .font(.custom("Sakkal Majalla", size: 22))
                                .foregroundColor(.gray)
                        }
                    }
                    .frame(width: 300, height: 120)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 1, x: 0, y: 1)
                    
                    Spacer()
                }
                
            }
            
        }
        
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}

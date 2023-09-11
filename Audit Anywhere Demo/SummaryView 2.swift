//
//  SummaryView.swift
//  Audit Anywhere Demo
//
//  Created by Nada Alghofaili on 28/01/1445 AH.
//

import SwiftUI

struct SummaryView: View {
    var audit: AuditStruct
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            VStack{
                
                Text("INTERNAL AUDIT REPORT")
                    .font(.custom("Sakkal Majalla Bold", size: 28))
                    .foregroundColor(CustomColor.pifGold)
                    .padding(.top, 10.0)
                
                Text(audit.name)
                    .font(.custom("Sakkal Majalla Bold", size: 28))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 5)
                    //.padding([.leading,.trailing], 2)
                
                ScrollView{
                    HStack {
                        ReportRatingView(rating: "\(audit.rating)")
                    }
                    VStack(spacing: 1){
                        ObSumHeadView()
                        HStack(spacing: 2){
                            ObservationRatingView(value: audit.highRating, rating: "High", fontColor: .white, backgroundColor: CustomColor.pifRed)
                            ObservationRatingView(value: audit.mediumRating, rating: "Medium", fontColor: .white, backgroundColor: CustomColor.pifOrange)
                            ObservationRatingView(value: audit.lowRating, rating: "Low", fontColor: .white, backgroundColor: CustomColor.pifGreen)
                        }
                    }
                    
                    VStack (spacing: 2){
                        NavigationLink(destination: ReportPdfView(audit: audit)){
                            Text("PDF Report")
                                .padding(5)
                                .frame(width:340)
                                .font(.custom("Sakkal Majalla Bold", size: 22))
                                .border(.gray, width: 1)
                                .foregroundColor(.gray)
                        }
                    }.padding(.vertical, 15)
                    
                    HStack{
                        Text("\(audit.date)")
                            .font(.custom("Sakkal Majalla", size: 20))
                            .foregroundColor(CustomColor.pifGold)
                        Spacer()
                        Text("\(audit.code)")
                            .font(.custom("Sakkal Majalla", size: 20))
                            .foregroundColor(CustomColor.pifGold)
                    }
                    .padding(.horizontal, 20)
                    Divider()
                    
                    ExecSummaryView(audit: audit)
                }
                .padding(.bottom, 0.1)
                
            }
        }
    }
}

struct ExecSummaryView: View {
    private var attributedString: AttributedString {
        var string = AttributedString(audit.execSummary)
        
        if let someText = string.range(of: "BACKGROUND") {
            string[someText].font = .custom("Sakkal Majalla Bold", size: 24)
            string[someText].foregroundColor = .brown
        }
        
        if let someText = string.range(of: "SCOPE AND APPROACH") {
            string[someText].font = .custom("Sakkal Majalla Bold", size: 24)
            string[someText].foregroundColor = .brown
            
        }
        if let someText = string.range(of: "CONCLUSION") {
            string[someText].font = .custom("Sakkal Majalla Bold", size: 24)
            string[someText].foregroundColor = .brown
        }
        
        if let someText = string.range(of: "MANAGEMENT RESPONSE") {
            string[someText].font = .custom("Sakkal Majalla Bold", size: 24)
            string[someText].foregroundColor = .brown
        }
        return string
    }
    
    var audit: AuditStruct
    var body: some View {
        VStack{
            Text("Executive Summary")
                .frame(alignment: .top)
                .font(.custom("Sakkal Majalla Bold", size: 32))
            ScrollView {
                Text(attributedString)
                    .font(.custom("Sakkal Majalla", size: 22))
                    .padding()
            }
            .background(Color.white.opacity(0.35)) // background color with opacity
            .cornerRadius(10) // corner radius for the rectangle
            .padding(.vertical)
            .padding(.horizontal,15) // padding for the rectangle inside the VStack
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        //ScrollReportView(audit: audits[0])
        SummaryView(audit: audits[0])
    }
}

//
//  ReportLevelView.swift
//  test_AA1
//
//  Created by Shakeel Vohra on 06/07/2023.
//

import SwiftUI

struct ReportLevelView: View {
    var audit: AuditStruct 
    var body: some View {
        
        
        //NavigationStack{
        ZStack {
            Image("Kafd-PIF4")
                .opacity(0.15)
            NavigationView{
                ScrollView{
                    VStack{
                        Text("Internal Audit Report")
                            .font(.title2)
                        Text(audit.name)
                        
                            .font(.title3)
                            .minimumScaleFactor(0.5)
                        //.lineLimit(nil) // allow text to wrap to multiple lines
                            .padding(.vertical,20)
                        HStack{
                            //Image(systemName: "calendar.circle")
                            Text(audit.date)
                        }
                        HStack {
                            //Image(systemName: "gauge.medium")
                            Text("Report Rating:  \(audit.rating)")
                                .font(.subheadline)
                                .frame(width: 304)
                                .padding(.vertical,6)
                                .background(.orange)
                        }
                        HStack(spacing: 2){
                            ObservationRatingView(value: audit.highRating, rating: "High", fontColor: .white, backgroundColor: .red)
                            ObservationRatingView(value: audit.mediumRating, rating: "Medium", fontColor: .white, backgroundColor: .yellow)
                            ObservationRatingView(value: audit.lowRating, rating: "Low", fontColor: .white, backgroundColor: .green)
                        }
                        
//                        Image(audit.imageName)
//                            .resizable()
//                            .offset(x:-60)
//                            .aspectRatio(contentMode: .fill)
//                        // .scaledToFit()
//                            .frame(width: 1, height: 340)
//                        //Spacer()
                    }
                    VStack{
                        Text("Executive Summary")
                            .padding()
                            .font(.title)
                            .fontWeight(.medium)
                            .frame(alignment: .top)
                        ScrollView {
                                Text(audit.execSummary)
                                    .font(.body)
                                    .padding()
                                    //.frame(maxWidth: .infinity, alignment: .leading)
                            }
                                
                        }
                            //Spacer()
                        
                    
                }
                //    .navigationTitle("Report Summary")
                //  .navigationBarTitleDisplayMode(.inline)
                //}
            }
        }
    }
}

struct ReportLevelView_Previews: PreviewProvider {
    static var previews: some View {
        ReportLevelView(audit: audits[0])
    }
}

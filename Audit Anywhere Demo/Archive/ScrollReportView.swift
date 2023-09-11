////
////  ExecSummaryView.swift
////  test_AA1
////
////  Created by Shakeel Vohra on 07/07/2023.
////
//
//import SwiftUI
//
//func switchObservationRatingColor(_ rating: String) -> Color {
//    switch rating {
//    case "High":
//        return CustomColor.pifRed
//    case "Medium":
//        return CustomColor.pifOrange
//    case "Low":
//        return CustomColor.pifGreen
//    default:
//        return .gray // Fallback color
//    }
//}
//
//struct ScrollReportView: View {
//
//    var audit: AuditStruct
//    var body: some View {
//
//
//        ZStack{
//            Image("Kafd-PIF4")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(minWidth: 0, maxWidth: .infinity)
//                .edgesIgnoringSafeArea(.all)
//                .opacity(0.15)
//                .overlay(Color.black.opacity(0.05))
//            VStack{
//                ScrollView{
//                    RepSummaryView(audit: audit)
//                    ExSummaryView(audit: audit)
//                    ObsSummaryView(audit: audit)
//                    ObsDetailsView(audit: audit)
//
//                }
//                .padding([.top,.bottom],1)
//
//            }
//        }
//
//    }
//
//}
//
//
//
//struct ScrollReportView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollReportView(audit: audits[0])
//    }
//}
//
//struct RepSummaryView: View {
//    var audit: AuditStruct
//    var body: some View {
//        VStack{
//            Text(audit.name)
//                .font(.custom("Sakkal Majalla Bold", size: 28))
//            //.minimumScaleFactor(0.5)
//                .padding([.leading,.trailing], 2)
//            //.padding(.vertical, 10)
//            HStack{
//                Text("Issue Date: \(audit.date)")
//                    .font(.custom("Sakkal Majalla", size: 20))
//            }
//            HStack {
//                ReportRatingView(rating: "\(audit.rating)", fontColor: .white)
//            }
//            HStack(spacing: 2){
//                ObservationRatingView(value: audit.highRating, rating: "High", fontColor: .white, backgroundColor: CustomColor.pifRed)
//                ObservationRatingView(value: audit.mediumRating, rating: "Medium", fontColor: .white, backgroundColor: CustomColor.pifOrange)
//                ObservationRatingView(value: audit.lowRating, rating: "Low", fontColor: .white, backgroundColor: CustomColor.pifGreen)
//            }
//
//            Image(audit.imageName)
//                .resizable()
//                .offset(x:-60)
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 1, height: 340)
//        }
//    }
//}
//
//struct ExSummaryView: View {
//    private var attributedString: AttributedString {
//        var string = AttributedString(audit.execSummary)
//
//        if let someText = string.range(of: "BACKGROUND") {
//            string[someText].font = .custom("Sakkal Majalla Bold", size: 24)
//            string[someText].foregroundColor = .brown
//        }
//
//        if let someText = string.range(of: "SCOPE AND APPROACH") {
//            string[someText].font = .custom("Sakkal Majalla Bold", size: 24)
//            string[someText].foregroundColor = .brown
//
//        }
//        if let someText = string.range(of: "CONCLUSION") {
//            string[someText].font = .custom("Sakkal Majalla Bold", size: 24)
//            string[someText].foregroundColor = .brown
//        }
//
//        if let someText = string.range(of: "MANAGEMENT RESPONSE") {
//            string[someText].font = .custom("Sakkal Majalla Bold", size: 24)
//            string[someText].foregroundColor = .brown
//        }
//        return string
//    }
//
//    var audit: AuditStruct
//    var body: some View {
//        VStack{
//            Text("Executive Summary")
//                .frame(alignment: .top)
//                .font(.custom("Sakkal Majalla Bold", size: 32))
//            ScrollView {
//                Text(attributedString)
//                    .font(.custom("Sakkal Majalla", size: 22))
//                    .padding()
//            }
//        }
//    }
//}
//
//struct ObsSummaryView: View {
//    var audit: AuditStruct
//    var body: some View {
//        VStack{
//            ScrollView{
//                VStack{
//                    Text("Observation Summary")
//                        .font(.custom("Sakkal Majalla Bold", size: 32))
//                        .padding([.bottom], 2)
//                        .frame(alignment: .top)
//                }
//                ScrollView  (.horizontal, showsIndicators: false){
//                    VStack{
//                        HStack{
//                            Text("Title").frame(width: 200, alignment: .leading)
//                            Text("Rating").frame(width: 60, alignment: .leading)
//                            Text("Target Date").frame(width: 100, alignment: .leading)
//                        }
//                        .font(.custom("Sakkal Majalla Bold", size: 22))
//                        .padding([.leading])
//                        .background(Color.gray.opacity(0.35))
//
//                        ForEach(audit.observations.indices, id: \.self) { index in
//                            VStack {
//                                HStack (alignment: .top){
//                                    Text( "\(index + 1). \(audit.observations[index].observationName)")
//                                        .font(.custom("Sakkal Majalla Bold", size: 20))
//                                        //.font(.subheadline)
//                                        .frame(width: 200, alignment: .leading)
//
//                                    Spacer()
//
//                                    Text(audit.observations[index].observationRating)
//                                        .font(.custom("Sakkal Majalla Bold", size: 20))
//                                        .foregroundColor(.white)
//                                        .frame(width:60, height: 30)
//                                        .background(switchObservationRatingColor(audit.observations[index].observationRating))
//                                    Spacer()
//
//                                    Text(audit.observations[index].observationTargetDate)
//                                    .font(.custom("Sakkal Majalla", size: 20))
//                                    .frame(width: 100, alignment: .center)
//                                }
//                            }
//                        }
//                    }
//                    .background(Color.white.opacity(0.35)) // background color with opacity
//                    .cornerRadius(10) // corner radius for the rectangle
//                    .padding(.vertical)
//                    .padding(.horizontal,15) // padding for the rectangle inside the VStack
//                }
//            }
//
//        }
//    }
//}
//
//struct ObsDetailsView: View {
//    var audit: AuditStruct
//    var body: some View {
//        VStack{
//            ScrollView{
//                VStack{
//                    Text("Observation Details")
//                        .font(.custom("Sakkal Majalla Bold", size: 32))
//                        .padding([.bottom], 2)
//                        .frame(alignment: .top)
//
//                    ForEach(audit.observations.indices, id: \.self) { index in
//                        VStack (alignment: .leading){
//
//                            HStack {
//
//                                Spacer()
//                                Text(audit.observations[index].observationRating)
//                                    .font(.custom("Sakkal Majalla Bold", size: 24))
//                                    .font(.caption)
//                                    .frame(width:80, height: 30)
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(.white)
//                                    .background(switchObservationRatingColor(audit.observations[index].observationRating))
//
//                            }
//
//                            HStack (alignment: .top){
//                                Text("\(index + 1). \(audit.observations[index].observationName)")
//                                    .font(.custom("Sakkal Majalla Bold", size: 24))
//                                    .padding(.leading, 12)
//                                Spacer()
//                            }
//                            .fontWeight(.bold)
//
//                            Text("Observation:")
//                                .font(.custom("Sakkal Majalla Bold", size: 24))
//                                .foregroundColor(.brown)
//                                .fontWeight(.bold)
//                                .padding(.horizontal,12)
//                                .padding(.vertical, 1)
//                            Text(audit.observations[index].observationDetail)
//                                .font(.custom("Sakkal Majalla", size: 22))
//                                .font(.footnote)
//                                .padding(.horizontal,12)
//                                .padding(.bottom, 1)
//
//                            Text("Impact:")
//                                .font(.custom("Sakkal Majalla Bold", size: 24))
//                                .foregroundColor(.brown)
//                                .fontWeight(.bold)
//                                .padding(.horizontal,12)
//                                .padding(.bottom, 1)
//                            Text(audit.observations[index].observationImpact)
//                                .font(.custom("Sakkal Majalla", size: 22))
//                                .font(.footnote)
//                                .padding(.horizontal,12)
//                                .padding(.bottom, 2)
//
//                            Text("Agreed Management Actions:")
//                                .font(.custom("Sakkal Majalla Bold", size: 24))
//                                .foregroundColor(.brown)
//                                .fontWeight(.bold)
//                                .padding(.horizontal,12)
//                                .padding(.bottom, 1)
//                            Text(audit.observations[index].observationMaps)
//                                .font(.custom("Sakkal Majalla", size: 22))
//                                .font(.footnote)
//                                .padding(.horizontal,12)
//                                .padding(.bottom, 20)
//                        }
//                        .background(Color.white.opacity(0.35)) // background color with opacity
//                        .cornerRadius(10) // corner radius for the rectangle
//                        .padding(.vertical)
//                        .padding(.horizontal,15) // padding for the rectangle inside the VStack
//                    }
//                }
//            }
//        }
//    }
//}

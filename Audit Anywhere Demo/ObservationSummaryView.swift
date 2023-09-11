//
//  ObservationSummaryView.swift
//  Audit Anywhere Demo
//
//  Created by Nada Alghofaili on 28/01/1445 AH.
//

import SwiftUI

<<<<<<< HEAD
=======
struct ObservationSummaryView: View {
    var audit: AuditStruct
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            
            VStack{
                Text("Observation Summary")
                    .font(.custom("Sakkal Majalla Bold", size: 32))
                    .padding([.bottom], 2)
                    .frame(alignment: .top)
                
                List(audit.observations) { observation in
                    
                    NavigationLink(destination: SingleObsDetailsView(observation: observation)) {
                        VStack(alignment: .leading, spacing: 4) {
                            
                            Text("\(observation.id). \(observation.observationName)")
                                .font(.custom("Sakkal Majalla", size: 22))
                                .lineLimit(2)
                    
                            HStack {
                                Text(observation.observationTargetDate)
                                    .font(.custom("Sakkal Majalla Bold", size: 20))
                                Spacer()
                                Text(observation.observationRating)
                                    .frame(width:60, height: 30)
                                    .background(switchObservationRatingColor(observation.observationRating))
                                
                            }
                            .font(.custom("Sakkal Majalla", size: 20))
                            .lineLimit(2)
                        }
                    }
                    .listRowBackground(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white.opacity(0.35))
                            .padding(.vertical,5)
                            .padding(.horizontal,1)
                    )
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
}

>>>>>>> main
struct ObservationSummaryView3: View {
    var audit: AuditStruct
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            
            VStack{
                Text("Observations Summary")
                    .font(.custom("Sakkal Majalla Bold", size: 32))
                    .padding([.bottom], 2)
                    .frame(alignment: .top)
                
                List(audit.observations) { observation in
                    
                    NavigationLink(destination: SingleObsDetailsView(observation: observation)) {
                        VStack (alignment: .leading){
                            HStack(spacing: 1) {
                                Text("\(observation.id). \(observation.observationName)")
                                    .font(.custom("Sakkal Majalla Bold", size: 20))
                                    .lineLimit(2)
                                
                                Spacer()
                                
                                Text(String(observation.observationRating.prefix(1)))
                                    .frame(width:30, height: 30)
                                    .background(switchObservationRatingColor(observation.observationRating))
                                    .foregroundColor(.white)
                                    .font(.custom("Sakkal Majalla Bold", size: 19))
                            }.padding(.bottom, 0)
                            
                            Text(observation.observationSummary)
                                .font(.custom("Sakkal Majalla", size: 18))
                                .padding(.bottom, 1)
                            
                            VStack (alignment: .leading){
                                Text(observation.observationOwner)
                                    .font(.custom("Sakkal Majalla Bold", size: 18))
                                
                                HStack(spacing: 0){
                                    Text("Target Date: ")
                                        .font(.custom("Sakkal Majalla Bold", size: 18))
                                    Text(observation.observationTargetDate)
                                        .font(.custom("Sakkal Majalla Bold", size: 18))
                                }
                            }
                        }
                    }.listRowBackground(Color.white.opacity(0.35))
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
    
}



struct ObservationSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        ObservationSummaryView3(audit: audits[0])
    }
}
<<<<<<< HEAD
=======


struct ObservationSummaryView2: View {
    var audit: AuditStruct
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            
            VStack{
                ScrollView{
                    VStack{
                        Text("Observation Summary")
                            .font(.custom("Sakkal Majalla Bold", size: 32))
                            .padding([.bottom], 2)
                            .frame(alignment: .top)
                    }
                    ScrollView  (.horizontal, showsIndicators: false){
                        VStack{
                            HStack{
                                Text("Title").frame(width: 200, alignment: .leading)
                                Text("Rating").frame(width: 60, alignment: .leading)
                                Text("Target Date").frame(width: 100, alignment: .leading)
                            }
                            .font(.custom("Sakkal Majalla Bold", size: 22))
                            .padding([.leading])
                            .background(Color.gray.opacity(0.35))
                            
                            ForEach(audit.observations.indices, id: \.self) { index in
                                VStack {
                                    HStack (alignment: .top){
                                        
                                        Text( "\(index + 1). \(audit.observations[index].observationName)")
                                            .font(.custom("Sakkal Majalla Bold", size: 20))
                                            .frame(width: 200, alignment: .leading)
                                        
                                        Spacer()
                                        
                                        Text(audit.observations[index].observationRating)
                                            .font(.custom("Sakkal Majalla Bold", size: 20))
                                            .foregroundColor(.white)
                                            .frame(width:60, height: 30)
                                            .background(switchObservationRatingColor(audit.observations[index].observationRating))
                                        Spacer()
                                        
                                        Text(audit.observations[index].observationTargetDate)
                                            .font(.custom("Sakkal Majalla", size: 20))
                                            .frame(width: 100, alignment: .center)
                                    }
                                }
                            }
                        }
                        .background(Color.white.opacity(0.35)) // background color with opacity
                        .cornerRadius(10) // corner radius for the rectangle
                        .padding(.vertical)
                        .padding(.horizontal,15) // padding for the rectangle inside the VStack
                    }
                }
                
            }
        }
    }
}
>>>>>>> main

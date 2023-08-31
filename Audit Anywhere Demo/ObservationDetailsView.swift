//
//  ObservationDetailsView.swift
//  Audit Anywhere Demo
//
//  Created by Nada Alghofaili on 28/01/1445 AH.
//

import SwiftUI

struct ObservationDetailsView: View {
    var audit: AuditStruct
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            VStack{
                Text("Observation Details")
                    .font(.custom("Sakkal Majalla Bold", size: 32))
                    .padding([.bottom], 2)
                    .frame(alignment: .top)
                
                ScrollView{
                    VStack{
                        ForEach(audit.observations.indices, id: \.self) { index in
                            VStack (alignment: .leading){
                                
                                HStack {
                                    Spacer()
                                    Text(audit.observations[index].observationRating)
                                        .font(.custom("Sakkal Majalla Bold", size: 24))
                                        .font(.caption)
                                        .frame(width:80, height: 30)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .background(switchObservationRatingColor(audit.observations[index].observationRating))
                                }
                                
                                HStack (alignment: .top){
                                    Text("\(index + 1). \(audit.observations[index].observationName)")
                                        .font(.custom("Sakkal Majalla Bold", size: 24))
                                        .padding(.leading, 12)
                                    Spacer()
                                }
                                .fontWeight(.bold)
                                
                                Text("Observation:")
                                    .font(.custom("Sakkal Majalla Bold", size: 24))
                                    .foregroundColor(.brown)
                                    .fontWeight(.bold)
                                    .padding(.horizontal,12)
                                    .padding(.vertical, 1)
                                Text(audit.observations[index].observationDetail)
                                    .font(.custom("Sakkal Majalla", size: 22))
                                    .font(.footnote)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 1)
                                
                                Text("Impact:")
                                    .font(.custom("Sakkal Majalla Bold", size: 24))
                                    .foregroundColor(.brown)
                                    .fontWeight(.bold)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 1)
                                Text(audit.observations[index].observationImpact)
                                    .font(.custom("Sakkal Majalla", size: 22))
                                    .font(.footnote)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 2)
                                
                                Text("Agreed Management Actions:")
                                    .font(.custom("Sakkal Majalla Bold", size: 24))
                                    .foregroundColor(.brown)
                                    .fontWeight(.bold)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 1)
                                Text(audit.observations[index].observationMaps)
                                    .font(.custom("Sakkal Majalla", size: 22))
                                    .font(.footnote)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 20)
                                
                            
                                Text(audit.observations[index].observationOwner)
                                    .padding(.horizontal,15)
                                .font(.custom("Sakkal Majalla Bold", size: 20))
                                
                                HStack(spacing: 0){
                                    Text("Target Date: ")
                                    Text(audit.observations[index].observationTargetDate)
                                        
                                }.padding(.horizontal,15)
                                    .font(.custom("Sakkal Majalla Bold", size: 20))
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
}

struct SingleObsDetailsView: View {
    var observation: Observation
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            VStack{
                ScrollView{
                    VStack{
                        Text("Observation Details")
                            .font(.custom("Sakkal Majalla Bold", size: 32))
                            .padding([.bottom], 2)
                            .frame(alignment: .top)
                        
                        
                            VStack (alignment: .leading){
                                
                                HStack {
                                    
                                    Spacer()
                                    Text(observation.observationRating)
                                        .font(.custom("Sakkal Majalla Bold", size: 24))
                                        .font(.caption)
                                        .frame(width:80, height: 30)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .background(switchObservationRatingColor(observation.observationRating))
                                    
                                }
                                
                                HStack (alignment: .top){
                                    Text("\(observation.observationName)")
                                        .font(.custom("Sakkal Majalla Bold", size: 24))
                                        .padding(.leading, 12)
                                    Spacer()
                                }
                                .fontWeight(.bold)
                                
                                Text("Observation:")
                                    .font(.custom("Sakkal Majalla Bold", size: 24))
                                    .foregroundColor(.brown)
                                    .fontWeight(.bold)
                                    .padding(.horizontal,12)
                                    .padding(.vertical, 1)
                                Text(observation.observationDetail)
                                    .font(.custom("Sakkal Majalla", size: 22))
                                    .font(.footnote)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 1)
                                
                                Text("Impact:")
                                    .font(.custom("Sakkal Majalla Bold", size: 24))
                                    .foregroundColor(.brown)
                                    .fontWeight(.bold)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 1)
                                Text(observation.observationImpact)
                                    .font(.custom("Sakkal Majalla", size: 22))
                                    .font(.footnote)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 2)
                                
                                Text("Agreed Management Actions:")
                                    .font(.custom("Sakkal Majalla Bold", size: 24))
                                    .foregroundColor(.brown)
                                    .fontWeight(.bold)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 1)
                                
                                Text(observation.observationMaps)
                                    .font(.custom("Sakkal Majalla", size: 22))
                                    .font(.footnote)
                                    .padding(.horizontal,12)
                                    .padding(.bottom, 20)
                                
                                HStack (spacing: 0){
                                    Text("(\(observation.observationOwner), ")
                                        .font(.custom("Sakkal Majalla", size: 22))
                                    Text("\(observation.observationTargetDate)")
                                        .font(.custom("Sakkal Majalla Bold", size: 22))
                                    Text(")")
                                        .font(.custom("Sakkal Majalla", size: 22))
                                }.padding(.horizontal,15)
                            }
                            .background(Color.white.opacity(0.35))
                            .cornerRadius(10)
                            .padding(.vertical)
                            .padding(.horizontal,15)
                        }
                    }
                }
            }
        }
}

struct ObservationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ObservationDetailsView(audit: audits[0])
        //SingleObsDetailsView(observation: audits[0].observations[0])
    }
}

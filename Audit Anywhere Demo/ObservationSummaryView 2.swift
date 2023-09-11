//
//  ObservationSummaryView.swift
//  Audit Anywhere Demo
//
//  Created by Nada Alghofaili on 28/01/1445 AH.
//

import SwiftUI

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

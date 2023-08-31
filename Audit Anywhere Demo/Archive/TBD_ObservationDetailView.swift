//
//  ObservationDetailView.swift
//  test_AA1
//
//  Created by Shakeel Vohra on 08/07/2023.
//

import SwiftUI
private func switchColor(_ rating: String) -> UIColor {
    switch rating { 
    case "High":
        return UIColor.red
    case "Medium":
        return UIColor.orange
    case "Low":
        return UIColor.green
    default:
        return UIColor.gray // Fallback color
    }
}

struct ObservationDetailView: View {
    var audit: AuditStruct
    var body: some View {
        
        
        ZStack {
            
            VStack{
                
                NavigationView {
                    
                    List(audit.observations.indices, id: \.self) { index in
                       
                        VStack (alignment: .leading){
                            HStack{
                                Text("\(index + 1).")
                                Spacer()
                                Text(audit.observations[index].observationName)
                                    .font(.subheadline)
                                Spacer()
                                Text(audit.observations[index].observationRating)
                                    .padding()
                                    .font(.caption)
                                    .frame(width:80, height: 30)
                                // .padding(.vertical,1)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .background(
                                        Color(
                                            uiColor: switchColor(audit.observations[index].observationRating)
                                        )
                                    )
                            }
                            .fontWeight(.bold)
                            .padding()
                            Text("Observation:")
                                .foregroundColor(.brown)
                                .fontWeight(.bold)
                                .padding(.bottom, 1)
                            Text(audit.observations[index].observationDetail)
                                .font(.footnote)
                                .padding(.bottom, 2)
                            Text("Impact:")
                                .foregroundColor(.brown)
                                .fontWeight(.bold)
                                .padding(.bottom, 1)
                            Text(audit.observations[index].observationImpact)
                                .font(.footnote)
                                .padding(.bottom, 2)
                            Text("Agreed Management Actions:")
                                .foregroundColor(.brown)
                                .fontWeight(.bold)
                                .padding(.bottom, 1)
                            Text(audit.observations[index].observationMaps)
                                .font(.footnote)
                                .padding(.bottom, 20)
                        }
                        .listRowBackground(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(white: 1, opacity: 0.35))
                                .padding(.vertical)
                                .padding(.horizontal,1)
                        )

                    }
                    
                    .navigationTitle("Observations Detail")
                    .navigationBarTitleDisplayMode(.inline)
                      //  .listStyle(.grouped)
        
                        .foregroundColor(.black)
                        .scrollContentBackground(.hidden)
                        .background{
                            Image("Kafd-PIF4")
                                .resizable()
                                .scaledToFill()
                                .offset(x:0, y:0)
                                .blur(radius: 0)
                                .opacity(0.15)
                                .overlay(Color.black.opacity(0.15))
                                .edgesIgnoringSafeArea(.all)
                        }
                }

                
            }
           
        }
    }
}
            
            
            

struct ObservationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ObservationDetailView(audit: audits[0])
    }
}

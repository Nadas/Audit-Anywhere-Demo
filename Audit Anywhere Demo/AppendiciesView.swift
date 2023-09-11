//
//  AppendiciesView.swift
//  Audit Anywhere Demo
//
//  Created by Nada Alghofaili on 28/01/1445 AH.
//

import SwiftUI

struct AppendiciesView: View {
    var body: some View {
        ZStack{
            CustomColor.pifCream
                .ignoresSafeArea()
            VStack{
                Text("Appendices")
                    .font(.custom("Sakkal Majalla Bold", size: 32))
                    .padding([.bottom], 2)
                    .frame(alignment: .top)
                ScrollView{
<<<<<<< HEAD
                    //ReportRatingDefintionView()
                    HStack{
                        Text("Rating Definitions:")
                            .padding(10)
                            .font(.custom("Sakkal Majalla Bold", size: 22))
                        Spacer()
                    }
                    
                    Image("RATINGS DEFINITIONS")
                        .resizable()
                        .scaledToFit()
                        .pinchToZoom()
                    // Divider()
                    //   .padding(20)
                    //ObsRatingDefintionView()
                }.padding(.bottom, 0.1)
=======
                    ReportRatingDefintionView()
                    Divider()
                        .padding(20)
                    ObsRatingDefintionView()
                }
>>>>>>> main
            }
        }
    }
}

struct ObsRatingDefintionView: View {
    
    var body: some View {
        VStack (spacing: 0){
            HStack{
                Text("Audit Observation Rating Defintition - Rated at the XXX-level, by considiring the impact of the risk on PIF's strategic objectives.")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                Spacer()
            }
            
            HStack (spacing: 0){
                Text("High")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                    .frame(width: 75,height: 130.0)
                    .background(CustomColor.pifRed)
                    .foregroundColor(.white)
                
                Text("The observation has a high probability impacting XXX's ability to meet key strategic, financial, operational, technological, regulatory and/ or compliance objectives. Management should address the actions as a matter of priority.")
                    .font(.custom("Sakkal Majalla", size: 18))
                    .frame(width: 340, height: 130.0)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 5)
            }
            HStack (spacing: 0){
                Text("Medium")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                    .frame(width: 75, height: 130.0)
                    .background(CustomColor.pifOrange)
                    .foregroundColor(.black)
                
                Text("The observation has a high probability impacting XXX's ability to meet key strategic, financial, operational, technological, regulatory and/ or compliance objectives. Management should address the actions as a matter of priority.")
                    .font(.custom("Sakkal Majalla", size: 18))
                    .frame(width: 340, height: 130.0)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 5)
            }
            
            HStack (spacing: 0){
                Text("Low")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                    .frame(width: 75, height: 130.0)
                    .background(CustomColor.pifGreen)
                    .foregroundColor(.white)
                
                Text("The observation has a high probability impacting XXX's ability to meet key strategic, financial, operational, technological, regulatory and/ or compliance objectives. Management should address the actions as a matter of priority.")
                    .font(.custom("Sakkal Majalla", size: 18))
                    .frame(width: 340, height: 130.0)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 5)
            }
            
        }
    }
}

struct ReportRatingDefintionView: View {
    
    var body: some View {
        VStack (spacing: 0){
            HStack{
                Text("Audit Report Rating Defintition - Control based Opinion - Rated at the scope-level, considiring the risk to the objectives of the relevant area or process ubder review.")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                Spacer()
            }
            
            HStack (spacing: 0){
                Text("Unsatsif-actory")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                    .frame(width: 75,height: 130.0)
                    .background(CustomColor.pifRed)
                    .foregroundColor(.white)
                
                Text("The control environemnt supporting the area unser review is unsatisfactory. All (or almost all) jey controls are not designed and/ or operating effectibely, which may materiallu ompact the area's ability to achieve its objectives, and effectively contribure towards XXX's strategic objectives.")
                    .font(.custom("Sakkal Majalla", size: 18))
                    .frame(width: 340, height: 130.0)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 5)
            }
            HStack (spacing: 0){
                Text("Significant Improvements Needed")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                    .frame(width: 75, height: 130.0)
                    .background(CustomColor.pifOrange)
                    .foregroundColor(.black)
                
                Text("The control environemnt supporting the area unser review is unsatisfactory. All (or almost all) jey controls are not designed and/ or operating effectibely, which may materiallu ompact the area's ability to achieve its objectives, and effectively contribure towards XXX's strategic objectives.")
                    .font(.custom("Sakkal Majalla", size: 18))
                    .frame(width: 340, height: 130.0)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 5)
            }
<<<<<<< HEAD
            
=======
         
>>>>>>> main
            HStack (spacing: 0){
                Text("Some Improvements Needed")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                    .frame(width: 75, height: 130.0)
                    .background(CustomColor.pifYellow)
                    .foregroundColor(.black)
                
                Text("The control environemnt supporting the area unser review is unsatisfactory. All (or almost all) jey controls are not designed and/ or operating effectibely, which may materiallu ompact the area's ability to achieve its objectives, and effectively contribure towards XXX's strategic objectives.")
                    .font(.custom("Sakkal Majalla", size: 18))
                    .frame(width: 340, height: 130.0)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 5)
            }
            
            HStack (spacing: 0){
                Text("Some Improvements Needed")
                    .padding(.horizontal, 5)
                    .font(.custom("Sakkal Majalla Bold", size: 18))
                    .frame(width: 75, height: 130.0)
                    .background(CustomColor.pifGreen)
                    .foregroundColor(.white)
                
                Text("The control environemnt supporting the area unser review is unsatisfactory. All (or almost all) jey controls are not designed and/ or operating effectibely, which may materiallu ompact the area's ability to achieve its objectives, and effectively contribure towards XXX's strategic objectives.")
                    .font(.custom("Sakkal Majalla", size: 18))
                    .frame(width: 340, height: 130.0)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 5)
            }
            
        }
    }
}

struct AppendiciesView_Previews: PreviewProvider {
    static var previews: some View {
        AppendiciesView()
    }
}

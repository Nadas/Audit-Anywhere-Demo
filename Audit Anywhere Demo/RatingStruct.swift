//
//  RatingView.swift
//  test_AA1
//
//  Created by Shakeel Vohra on 06/07/2023.
//

import SwiftUI

struct ObservationRatingView: View {
    let value: Int
    let rating: String
    let fontColor: Color
    let backgroundColor: Color
    
    var body: some View {
        VStack (spacing: 2){ 
            Text(rating)
<<<<<<< HEAD
                .frame(width:112)
=======
                .frame(width:100)
>>>>>>> main
                .padding(.vertical,4)
                .font(.custom("Sakkal Majalla Bold", size: 22))
                .background(backgroundColor)
                .foregroundColor(fontColor)
            Text("\(value)")
<<<<<<< HEAD
                .frame(width:112)
=======
                .frame(width:100)
>>>>>>> main
                .padding(.vertical,4)
                .font(.custom("Sakkal Majalla", size: 22))
                .border(backgroundColor)
        }
    }
}

struct ObSumHeadView: View {
    
    var body: some View {
        
        VStack (spacing: 2){
            Text("Observations Summary")
                .padding(5)
<<<<<<< HEAD
                .frame(width:340)
=======
                .frame(width:304)
>>>>>>> main
                .font(.custom("Sakkal Majalla Bold", size: 22))
                .background(CustomColor.pifGold)
                .foregroundColor(.white)
        }
    }
}


struct ReportRatingView: View {
    let rating: String
    //let fontColor: Color
    
    var body: some View {
        
        let (ratingColor, fontColor) = switchReportRatingColor(rating)

        HStack (spacing: 2){
            Text("Report Rating")
                .font(.custom("Sakkal Majalla", size: 20))
<<<<<<< HEAD
                .frame(width:93)
=======
                .frame(width:92)
>>>>>>> main
                .padding(.vertical,4)
                .border(Color.black, width: 1)
            
            Text(rating)
<<<<<<< HEAD
                .frame(width:245)
=======
                .frame(width:244)
>>>>>>> main
                .padding(.vertical,4)
                .padding(.horizontal,0)
                .font(.custom("Sakkal Majalla Bold", size: 20))
                .background(ratingColor)
                .foregroundColor(fontColor)
        }
    }
    
    private func switchReportRatingColor(_ rating: String) -> (Color, Color) {
        switch rating {
        case "Unsatisfactory":
            return (CustomColor.pifRed, .white)
        case "Significant Improvement Required":
            return (CustomColor.pifOrange, .black)
        case "Some Improvement Required":
            return (CustomColor.pifYellow, .black)
        case "Satisfactory":
            return (CustomColor.pifGreen, .white)
        default:
            return (Color.gray, .white) // Fallback color
        }
    }
}

func switchObservationRatingColor(_ rating: String) -> Color {
    switch rating {
    case "High":
        return CustomColor.pifRed
    case "Medium":
        return CustomColor.pifOrange
    case "Low":
        return CustomColor.pifGreen
    default:
        return .gray // Fallback color
    }
}

struct RatingViews_Previews: PreviewProvider {
    static var previews: some View {
        ReportRatingView(rating: "Unsatisfactory")
        //ObservationRatingView(value: 1, rating: "High", fontColor: .white, backgroundColor: Color.red)
    }
}

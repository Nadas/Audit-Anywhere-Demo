/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A representation of a single landmark.
*/

import Foundation
import SwiftUI
 
struct AuditStruct: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var rating: String
    var code: String
    var date: String
    var highRating: Int
    var mediumRating: Int
    var lowRating: Int
    var pdfName: String
    var execSummary: String
 //   var observationSummary: String
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    var observations: [Observation]

    
}

struct Observation: Hashable, Codable, Identifiable  {
    let id: Int
    let observationName: String
    let observationRating: String
    let observationSummary: String
    let observationOwner: String
    let observationTargetDate: String
    let observationDetail: String
    let observationImpact: String
    let observationMaps: String
}

//
//  ExpandTest.swift
//  test_AA
//
//  Created by Shakeel Vohra on 12/01/1445 AH.
//

import SwiftUI

struct ExpandTest: View {
    
    @State var isExpanded = false
        @State var subviewHeight : CGFloat = 0
        
        var body: some View {
            VStack {
                Text("Headline")
                VStack {
                    Text("More Info")
                    Text("And more")
                    Text("And more")
                    Text("And more")
                    Text("And more")
                    Text("And more")
                }
            }
            .background(GeometryReader {
                Color.clear.preference(key: ViewHeightKey.self,
                                       value: $0.frame(in: .local).size.height)
            })
            .onPreferenceChange(ViewHeightKey.self) { subviewHeight = $0 }
            .frame(height: isExpanded ? subviewHeight : 50, alignment: .top)
            .padding()
            .clipped()
            .frame(maxWidth: .infinity)
            .transition(.move(edge: .bottom))
            .background(Color.gray.cornerRadius(10.0))
            .onTapGesture {
                withAnimation(.easeIn(duration: 1.0)) {
                    isExpanded.toggle()
                }
            }
        }
}

struct ViewHeightKey: PreferenceKey {
    static var defaultValue: CGFloat { 0 }
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = value + nextValue()
    }
}

struct ExpandTest_Previews: PreviewProvider {
    static var previews: some View {
        ExpandTest()
    }
}

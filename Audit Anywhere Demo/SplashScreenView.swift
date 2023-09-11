//
//  SplashScreenView.swift
//  test_AA1
//
//  Created by Shakeel Vohra on 08/07/2023.
//

import SwiftUI

struct SplashScreenView: View {
     
    @State private var isActive = false
    @State private var size = 4.0
    @State private var opacity = 0.2
    var body: some View {
        
        if isActive {
<<<<<<< HEAD
            LandingView()
=======
            AuditRow()
>>>>>>> main
                .preferredColorScheme(.light)
        } else {
            VStack  {
                VStack{
                    Image("pifLogoGold")
                    
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear() {
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.size = 0.8
                        self.opacity = 1.0
                        
                        
                    }
                }
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation{
                        self.isActive = true
                    }
                   
                }
            }
        }
        
       
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

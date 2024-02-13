//
//  LaunchScreen.swift
//  TalkWithSwift
//
//  Created by changgyo seo on 2/11/24.
//

import SwiftUI

struct LaunchScreen: View {
    
    @State private var isPresented: Bool = true
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Image(systemName: "swift")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.orange)
                .offset(y: -170)
            HStack {
                Text("Talk with SWIFT")
                    .foregroundStyle(.white)
                    .font(.system(size: 80))
                    .fontWeight(.bold)
                
                Rectangle()
                    .frame(width: 10, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .opacity(isPresented ? 1 : 0)
            }
            VStack {
                Spacer()
                Text("Text(\"Touch anywhere to start\")")
                    .foregroundStyle(.orange)
                    .opacity(isPresented ? 1 : 0)
            }
            .padding(.bottom, 50)
        }
        .onAppear {
            withAnimation(.easeIn(duration: 1).repeatForever()) {
                isPresented.toggle()
            }
        }
    }
}

#Preview {
    LaunchScreen()
        .previewInterfaceOrientation(.landscapeRight)
}

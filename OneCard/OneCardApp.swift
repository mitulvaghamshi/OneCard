//
//  OneCardApp.swift
//  OneCard
//
//  Created by Mitul Vaghamshi on 2022-11-20.
//

import SwiftUI

@main
struct OneCardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            BackgroundView()
            ForegroundView()
        }
        .frame(width: 320)
        .background(.white)
        .cornerRadius(12)
        .drawingGroup()
        .shadow(color: .primary, radius: 10)
        .padding()
    }
}

struct BackgroundView: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 200)
                .foregroundColor(.black)
            Rectangle()
                .frame(height: 5)
                .foregroundColor(Color("Color3"))
            Rectangle()
                .frame(height: 5)
                .foregroundColor(Color("Color2"))
            Rectangle()
                .frame(height: 5)
                .foregroundColor(Color("Color1"))
        }
    }
}

struct ForegroundView: View {
    var body: some View {
        VStack(spacing: 0) {
            Image("Mohawk")
                .padding(20)
            Image("Mitul")
                .resizable()
                .frame(width: 200, height: 250)
                .border(Color("Color1"), width: 5)
                .background(.gray)
            HStack {
                VStack {
                    HStack(spacing: 0) {
                        Text("O").foregroundColor(Color("Color1"))
                        Text("N").foregroundColor(Color("Color2"))
                        Text("E").foregroundColor(Color("Color3"))
                    }
                    .font(.system(size: 36, weight: .bold))
                    Text("CARD")
                        .font(.system(size: 20, design: .monospaced))
                }
                Image(systemName: "wave.3.forward")
                    .font(.system(size: 36, weight: .semibold))
            }
            Text("Mitul Vaghamshi")
                .font(.system(size: 36, weight: .semibold, design: .rounded))
            Text("000821600")
                .font(.system(size: 30, weight: .regular, design: .rounded))
            Image("Bottom")
                .resizable()
                .frame(height: 100)
        }
        .foregroundColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

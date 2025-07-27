//
//  ContentView.swift
//  Praticando exercicios do curso TIC EM TRILHAS
//
//  Created by Eric on 27/07/25.
//

import SwiftUI

struct TelaFormas: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .frame(width: 200, height: 200)
                
            HStack(spacing: 30) {
                VStack(spacing: 20) {
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 70, height: 70)
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 70, height: 70)
                    
                }
                Capsule()
                    .fill(Color.green)
                    .frame(width: 60, height: 150)
            }
        }
    }
}

struct TelaContador: View {
    @State var contador: Int = 0
    
    var body: some View {
        VStack(spacing: 70) {
            Text("\(contador)")
                .bold()
                .font(.largeTitle)
                .foregroundStyle(.pink)
            Button {
                contador += 1
            } label: {
                Text("Incrementa")
                    .font(.headline)
                    .bold()
                    .padding()
                    .frame(width: 150, height: 50)
                    .background(Color.pink)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                
                
            }
        }
    }
}

struct TelaPersonagem: View {
    var TextoSobreRick: String = "Protagonista da série Rick And Morty, velho bêbado e engracado, homem mais inteligente do universo."
    var body: some View {
        VStack {
            Image("Rick")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 4))
            
            Text("Rick")
                .font(.largeTitle)
                .padding(.top, 10)
                .bold()
            
            Text(TextoSobreRick)
                .font(.body)
                .padding()
                .multilineTextAlignment(.center)
            
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            TelaFormas()
                .tabItem {
                    Label("Shapes", systemImage: "square.fill.on.square.fill")
                }
            TelaContador()
                .tabItem {
                    Label("Counter", systemImage: "plus.circle.fill")
                }
            TelaPersonagem()
                .tabItem {
                    Label("Character", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}

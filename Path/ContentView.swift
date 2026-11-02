//
//  ContentView.swift
//  Path
//
//  Created by Dmitrii Pogonia on 05.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MajorView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct MajorView: View {
    
    var body: some View {
        NavigationView {
            List(0..<3) { img in
                NavigationLink(destination: ExtractedView()
                ) {
                    HStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                        .foregroundStyle(.tint)
                    }
                    Text("Hello, world!")
                        .font(.largeTitle.bold())
                }
            }
            Text("New")
        }
    }
}

struct ExtractedView: View {
    @State private var zoomed: Bool = false
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(systemName: "globe")
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation(.smooth) {
                        zoomed.toggle()
                    }
                    
                }
                .transition(.move(edge: .leading))
                .navigationTitle("Study iOS")
            .edgesIgnoringSafeArea(.bottom)
            Spacer(minLength: 0)
            HStack {
                Spacer()
                Label("Spicy", systemImage: "flame.fill")
                Spacer()
            }
            .padding(.all, 20)
            .bold()
            .font(Font.headline.smallCaps())
        .background(Color.red)
        .foregroundColor(.yellow)
        }
    }
}

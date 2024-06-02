// MoviesShimmerView.swift
// Copyright © RoadMap. All rights reserved.

import SwiftUI

/// Shimmer view
struct MoviesShimmerView: View {
    let items = Array(1 ... 6)

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        backgroundStackView(color: gradientColor) {
            VStack {
                VStack(alignment: .leading) {
                    Spacer()
                        .frame(height: 140)
                    VStack {
                        Text("Смотри исторические\nфильмы на ")
                            +
                            Text("CINEMA STAR")
                            .fontWeight(.heavy)
                    }
                    .frame(width: 300, height: 50, alignment: .leading)
                    .padding(.horizontal)
                    Spacer()
                        .frame(height: 14)
                    VStack {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(items, id: \.self) { _ in
                                VStack {
                                    ShimmerBoxView()
                                        .frame(width: 170, height: 220)
                                        .cornerRadius(8)
                                    Spacer()
                                    VStack(alignment: .leading) {
                                        ShimmerBoxView()
                                            .cornerRadius(8)
                                        ShimmerBoxView()
                                            .cornerRadius(8)
                                    }
                                    .frame(width: 170, height: 40, alignment: .leading)
                                }
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }

    private var gradientColor: LinearGradient {
        LinearGradient(colors: [.gradientFirst, .gradientSecond], startPoint: .top, endPoint: .bottom)
    }
}

#Preview {
    MoviesShimmerView()
}

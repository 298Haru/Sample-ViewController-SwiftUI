//
//  SwiftUIViewSample.swift
//  Sample-ViewController-SwiftUI
//
//  Created by haruman on 2023/05/15.
//

import SwiftUI

struct SwiftUIViewSample: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {

        ZStack {
            Rectangle()
                .fill(.yellow)
                .ignoresSafeArea()

            VStack(spacing: 16) {
                Text("SwiftUI View")

                Button {
                    dismiss()
                } label: {
                    Text("画面を閉じる")
                }
            }
        }
    }
}

struct SwiftUIViewSample_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewSample()
    }
}

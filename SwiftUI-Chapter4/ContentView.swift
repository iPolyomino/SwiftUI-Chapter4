//
//  ContentView.swift
//  SwiftUI-Chapter4
//
//  Created by 萩倉丈 on 2021/06/19.
//

import SwiftUI

struct ContentView: View {
    @State var memoTitle: [String] = ["Swift", "Java", "Python", "Ruby"]
    var body: some View {
        NavigationView {
            List(0 ..< memoTitle.count) { i in
                NavigationLink(
                    destination: NoteView(),
                    label: {
                        Text(memoTitle[i])
                    })
            }
            .navigationTitle("まいんどまっぷ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

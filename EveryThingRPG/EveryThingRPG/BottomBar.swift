//  BottomBarView.swift
//  BottomBarView
//  EveryThingRPG
//  Created by Narciso Meza on 19/08/21.

import SwiftUI

struct BottomBarView: View {
    
    @ObservedObject var model = SwiftUIViewCModel.shared
    
    var body: some View {
        HStack{
            Text("Hellow")
                .padding(.leading, 4)
            Spacer()
            Button(action:{
                model.state = .mainView
            }){
                Text("Home")
            }
            .padding(.trailing, 4)
        }
    }
}

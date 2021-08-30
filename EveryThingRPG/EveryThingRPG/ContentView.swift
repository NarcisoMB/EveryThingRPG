//  ContentView.swift
//  EveryThingRPG
//  Created by Narciso Meza on 19/08/21.
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = SwiftUIViewCModel.shared
    
    var body: some View {
        if model.state == .mainView{
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        model.state = .miningView
                    }){
                        Image("Mining")
                            .resizable()
                            .rotationEffect(Angle(degrees: 42.5))
                            .frame(width: Constants.screenSize.width*0.3, height: Constants.screenSize.height*0.15)
                    }
                    .background(Color.gray)
                    Spacer()
                    Button(action: {
                        
                    }){
                        Image("Fishing")
                            .resizable()
                            .frame(width: Constants.screenSize.width*0.3, height: Constants.screenSize.height*0.15)
                    }
                    .background(Color.gray)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }){
                        Image("Forest")
                            .resizable()
                            .frame(width: Constants.screenSize.width*0.3, height: Constants.screenSize.height*0.15)
                    }
                    .background(Color.gray)
                    Spacer()
                    Button(action: {
                        
                    }){
                        Image("Agriculture")
                            .resizable()
                            .frame(width: Constants.screenSize.width*0.3, height: Constants.screenSize.height*0.15)
                    }
                    .background(Color.gray)
                    Spacer()
                }
            }
        }else if model.state == .miningView {
            MiningView()
            BottomBarView()
        }
    }
}

//  MiningView.swift
//  EveryThingRPG
//  Created by Narciso Meza on 19/08/21.
import SwiftUI
import ToastUI

struct MiningView: View {
    
    let defaults = UserDefaults.standard
    
    @State private var brokenValue: Int = 0
    @State private var mineLevel: Double = 0
    @State private var nextLevel: Bool = true
    @State private var sliderValue: Double = 0
    @State private var miningBlock: [String] = [""]
    @State private var presentingToast: Bool = false
    @State private var inventory: Inventory = Inventory(minedResources: [], cropsHarvested: [])
    
    var body: some View {
        VStack{
            ProgressBar(value: $sliderValue.wrappedValue, maxValue: (pow(2, self.mineLevel)), foregroundColor: .blue)
                .frame(height: 4)
            ZStack{
                Image("cobblestone")
                    .resizable(resizingMode: .tile)
                    .frame(width: UIScreen.main.bounds.width*0.75, height: 300, alignment: .center)
                Image("destroy_stage_" + String(brokenValue))
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width*0.75, height: 300, alignment: .center)
            }
            .padding(.top, 32)
            HStack{
                Text("Inventory")
                    .padding([.horizontal, .top], 32)
                Spacer()
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(inventory.minedResources){minedResourses in
                        Image(minedResourses.name)
                        Text("\(minedResourses.quantity) \(minedResourses.name)")
                    }
                }
            }
            .padding(.horizontal, 16)
            Spacer()
            Button(action: {
                brokenValue += 1
                sliderValue += 1
                if brokenValue == 11 {
                    brokenValue = 0
                    presentingToast = true
                    if inventory.minedResources.isEmpty {
                        inventory.minedResources.append(Resource(name: "cobblestone", quantity: 1, levelRequired: 0))
                    }else{
                        for minedResource in inventory.minedResources {
                            let index = inventory.minedResources.firstIndex(where: {$0.name == minedResource.name})
                            if minedResource.name == "cobblestone"{
                                inventory.minedResources[index!].quantity += 1
                            }else{
                                inventory.minedResources.append(Resource(name: "cobblestone", quantity: 1, levelRequired: 0))
                            }
                        }
                    }
                    let json = try? JSONEncoder().encode(inventory)
                    defaults.set(json, forKey:"inventory")
                    let jsonRecived = defaults.data(forKey:"inventory")
                    inventory = try! JSONDecoder().decode(Inventory.self, from: jsonRecived!)
                }
//                if
            }, label: {
                Text("Mine")
            })
            .toast(isPresented: $presentingToast, dismissAfter: 0.5) {
                ToastView("Avanzaste al siguiente nivel")
            }
        }
        .onAppear(){
            if let jsonRecived : Data = defaults.data(forKey:"inventory"){
                inventory = try! JSONDecoder().decode(Inventory.self, from: jsonRecived)
            }
        }
    }
}

//
//  ContentView.swift
//  OmikujiApp
//
//  Created by FX on 2021/06/04.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = "何が出るかな？"
    @State private var OmikujiBox: [String] = ["大吉", "中吉", "小吉", "吉", "凶"]
    @State private var flag = false
    
    let value: Int = Int.random(in: 0 ..< 4)
    private let title: String = "おみくじを引いてみよう"
    private let Imagetext: String = "omikuji"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.red)
                .padding(.bottom, 20)
            
            Image(Imagetext)
                .resizable()
                .frame(width: 230, height: 300)
                .padding(.bottom, 30)
            
            Text(text)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.green)
                .padding()
            
            Button(action: {
                if(self.flag){
                    self.flag = false
                }else{
                    
                    self.text = self.OmikujiBox[value]
                    
                    self.flag = true
                }
            }){
                ButtonPressed(title: "おみくじを引いてみよう")
            }
        }.padding(.bottom, 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

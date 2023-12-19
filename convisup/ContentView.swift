//
//  ContentView.swift
//  convisup
//
//  Created by 최명연 on 12/19/23.
//

import SwiftUI

extension View {
    func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView: View {
    @State private var value_50000 = ""
    @State private var value_10000 = ""
    @State private var value_5000 = ""
    @State private var value_1000 = ""
    @State private var value_500 = ""
    @State private var value_100 = ""
    @State private var value_50 = ""
    @State private var value_10 = ""
    @State private var result = ""
    var body: some View {

        VStack {
            Text("시재 점검")
                .font(.title)
                .padding(.bottom)
            Spacer()
            HStack{
                Text("5만원권: ")
                TextField("여기에 입력", text: $value_50000)
                    .keyboardType(.decimalPad)
            }
                .padding(.horizontal)
                .padding(.vertical,5)
            Divider()
            HStack{
                Text("1만원권: ")
                TextField("여기에 입력", text: $value_10000)
                    .keyboardType(.decimalPad)
            }.padding(.horizontal)
                .padding(.vertical,5)
            Divider()
            HStack{
                Text("5천원권: ")
                TextField("여기에 입력", text: $value_5000)
                    .keyboardType(.decimalPad)
            }.padding(.horizontal)
                .padding(.vertical,5)
            Divider()
            HStack{
                Text("1천원권: ")
                TextField("여기에 입력", text: $value_1000)
                    .keyboardType(.decimalPad)
            }.padding(.horizontal)
                .padding(.vertical,5)
            Divider()
            HStack{
                Text("500원: ")
                TextField("여기에 입력", text: $value_500)
                    .keyboardType(.decimalPad)
            }.padding(.horizontal)
                .padding(.vertical,5)
            Divider()
            HStack{
                Text("100원: ")
                TextField("여기에 입력", text: $value_100)
                    .keyboardType(.decimalPad)
            }.padding(.horizontal)
                .padding(.vertical,5)
            Divider()
            HStack{
                Text("50원: ")
                TextField("여기에 입력", text: $value_50)
                    .keyboardType(.decimalPad)
            }.padding(.horizontal)
                .padding(.vertical,5)
            Divider()
            HStack{
                Text("10원: ")
                TextField("여기에 입력", text: $value_10)
                    .keyboardType(.decimalPad)
            }.padding(.horizontal)
                .padding(.vertical,5)
                
            Spacer()
            HStack{
                Spacer()
                Button(action: {
                    let value50000 = Int(self.value_50000) ?? 0
                    let value10000 = Int(self.value_10000) ?? 0
                    let value5000 = Int(self.value_5000) ?? 0
                    let value1000 = Int(self.value_1000) ?? 0
                    let value500 = Int(self.value_500) ?? 0
                    let value100 = Int(self.value_100) ?? 0
                    let value50 = Int(self.value_50) ?? 0
                    let value10 = Int(self.value_10) ?? 0
                        
                    let total50000 = value50000 * 50000
                    let total10000 = value10000 * 10000
                    let total5000 = value5000 * 5000
                    let total1000 = value1000 * 1000
                    let total500 = value500 * 500
                    let total100 = value100 * 100
                    let total50 = value50 * 50
                    let total10 = value10 * 10
                        
                    let total = total50000 + total10000 + total5000 + total1000 + total500 + total100 + total50 + total10
                    
                    let formatter = NumberFormatter()
                        formatter.numberStyle = .decimal
                        self.result = formatter.string(from: NSNumber(value:total)) ?? "\(total)"
                    self.endEditing()
                }, label: {
                    Text("더하기")
                })
                .padding(.horizontal, 20)
                .padding(.vertical, 8)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                
                Spacer()
                Button(action: {
                        self.value_50000 = ""
                        self.value_10000 = ""
                        self.value_5000 = ""
                        self.value_1000 = ""
                        self.value_500 = ""
                        self.value_100 = ""
                        self.value_50 = ""
                        self.value_10 = ""
                        self.result = ""
                    self.endEditing()
                    }, label: {
                        Text("초기화")
                    })
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10)
                    
                    Spacer()
            }.padding()
            Spacer()
            Text("결과: \(result)원")
                .padding(.horizontal, 20)
            Spacer()
        }
        .padding()
        .onTapGesture {
                    self.endEditing()
                }
    }
}

#Preview {
    ContentView()
}

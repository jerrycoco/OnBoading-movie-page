//
//  ContentView.swift
//  OnBoadingPageDribbleChallenge
//
//  Created by jerry nkongolo on 2023-05-10.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    let myGrandient = LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
   
    var body: some View {
        
        
        ZStack{
            
           
            

            
            ZStack {
                Color.black.ignoresSafeArea(.all)
                RedBlur()
                BlueBlur()
                VStack {
                    TabView(selection: $selectedTab){
                        


                            VStack {
                                VStack {
                                    myImageView()
                                }
                                Spacer()
                              
                                

                                VStack (spacing:28){
                                    BodyTitlePage()
                                    MyButton()
                                }
                                Spacer()
                                    

       
                                
                                    
                                       
//                                        RoundedBlurOnButton()
                                   
                                Spacer()
                                
         


                            }

                        .tag(0)
                        
                        Text("Page 2 View".uppercased())
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .tag(1)
                        
                        
                       
                                            
                    }
                    .tabViewStyle(PageTabViewStyle())
                    
                }
               
            }
            
            
        }
            }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RedBlur: View {
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: 250)
            .blur(radius: 100)
            .offset(x: -160, y: -350)
    }
}

struct BlueBlur: View {
    var body: some View {
        Circle()
            .fill(LinearGradient(colors: [Color.blue, Color.purple], startPoint: .leading, endPoint: .trailing))
            .frame(width: 300)
            .blur(radius: 100)
            .offset(x: 150, y: -100)
    }
}

struct myImageView: View {
    var body: some View {
        Image("joker")
            .resizable()
            .scaledToFill()
            .frame(width: 340, height: 340)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(LinearGradient(colors: [Color.red, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 5))
            .padding()
    }
}

struct RoundedBlurOnButton: View {
    let myGrandient = LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
    var body: some View {
        Capsule()
            .fill(myGrandient.opacity(0.3))
            .frame(maxWidth: 200, minHeight: 40)
        
            .blur(radius: 20)
    }
}

struct BodyTitlePage: View {
    var body: some View {
        Text("Watch your \n Favorite Movies")
            .font(.largeTitle)
            .fontWeight(.bold)
            .fontDesign(.default)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.white.opacity(0.8))
        
        Text ("Download and watch online \n & offline at anytime")
            .font(.subheadline)
            .multilineTextAlignment(.center)
        .foregroundColor(Color.white.opacity(0.7))
    }
}

struct MyButton: View {
    let myGrandient = LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
    var body: some View {
        Button(action: {
            // action to perform when button is tapped
        }, label: {
            Text("Get Started")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
        })
        .frame(maxWidth: 150, minHeight: 40)
        .background(Color.clear)
        .cornerRadius(20)
        
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(myGrandient, lineWidth: 3))
    }
}

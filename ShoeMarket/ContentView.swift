//
//  ContentView.swift
//  ShoeMarket
//
//  Created by Александр Тарасевич on 12.02.2022.
//

import SwiftUI

struct MenuContent: View {
    var body: some View {
        List {
            Text("My Profile").onTapGesture {
                print("My Profile")
                
            }
        }
    }
}


struct SideMenu: View {
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
            .opacity(self.isOpen ? 1.0 : 0.0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.menuClose()
            }
            
            HStack {
                MenuContent()
                    .frame(width: self.width)
                    .background(Color.white)
                    .offset(x: self.isOpen ? 0 : -self.width)
                    .animation(.default)
                
                Spacer()
            }
        }
    }
}












struct ContentView: View {
    @State var menuOpen: Bool = false
    @State private var showsDetailViewController = false
    
    var body: some View {
        ZStack {
            
            
            
            if !self.menuOpen {
                Button(action: {
                    self.openMenu()
                }, label: {
                    Image("menu")
                        .resizable()
                        .frame(width: 30, height: 30)
                }).offset(x: -150, y: -380)
            }
            
            Button(action: {
                self.showsDetailViewController = true
            }){
                Image("glass")
                    .resizable()
                    .frame(width: 30, height: 30)
            }.offset(x: 98, y: -380)
                
            
            Spacer()
            
            
            Button(action: {}){
                Image("settings")
                    .resizable()
                    .frame(width: 30, height: 30)
            }.offset(x: 165, y: -380)
            
            
            //Puma x-RAY
            
            
            VStack{
                
                
                
                Image("Puma")
                    .resizable()
                    .frame(width: 310, height: 360)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .offset(y: 80)
                Text("Puma x-RAY")
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .offset(y:-260)
                
                Text("200$")
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .offset(y:-260)
                
                
                
                
                
                
                VStack{
                    
                    Image("Adidas")
                        .resizable()
                        .frame(width: 310, height: 360)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .offset(y: 50)
                    
                    
                    Text("Adidas OZWEEGO")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .offset(y:-290)
                    
                    Text("299$")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .offset(y:-290)
                    
                    
                    
                    
                    
                    
                }
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            SideMenu(width: 270,
                     isOpen: self.menuOpen,
                     menuClose: self.openMenu)
            
            
        }
    }
    
    func openMenu() {
        self.menuOpen.toggle()
    }
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        MenuContent()
        
        
        
    }
}


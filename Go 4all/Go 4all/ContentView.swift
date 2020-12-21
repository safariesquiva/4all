//
//  ContentView.swift
//  Go 4all
//
//  Created by Isabella Zaffari on 18/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeBackground = false
    

    
    var body: some View {
    
        ZStack {
           
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
            }

            changeBackground ?
                Color.yellow
                :
                Color.blue
                
            Button(action: {
                    print("Botão apertado")
                self.changeBackground = !self.changeBackground
            })
                {
                Image("4all")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
          }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            }
    }





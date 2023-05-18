//
//  ContentView.swift
//  War card game
//
//  Created by Bryson Karanja on 16/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                
            
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.headline)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                        VStack{
                            Text("CPU")
                                .padding(.bottom, 10.0)
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                            
                            Text(String(cpuScore))
                                .font(.headline)
                                .foregroundColor(Color.white)
                                
                        }
                    Spacer()
                
                }
                Spacer()
                
                
            }
            

        }
        
        
        
        
    }
    
    func deal(){
        //Randomize player cards
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        //Randomize CPU cards
        var cpuScoreValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuScoreValue)
        //update scores
        if playerCardValue > cpuScoreValue {
            // add 1 to player score
            playerScore += 1
        }
        
        else if cpuScoreValue > playerCardValue {
            // add 1 to cpu score
            cpuScore += 1
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

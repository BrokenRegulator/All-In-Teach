//
//  WarGame.swift
//  All In Teach
//
//  Created by Kevin Bronzert on 12/3/24.
//

import SwiftUI

var cardLvls = ["Joker", "Ace","King","Queen","Jack","10","9","8","7","6","5","4","3","2"]
				



struct WarGame: View {
    var body: some View {
		VStack{
			Text("Welcome To WAR!")
				.frame(width: 240, alignment: .center)
				.padding()
				.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
				.bold()
				.foregroundStyle(Color("Main_Color"))
				.background(Color(.darkGray))
				.cornerRadius(25)
			Text("Shuffle the deck and give out all the cards evenly. Each player take the top card of their deck (facing down), and show their cards at the same time. The Leaderboard of card value is below. When a high value card goes up against a lower-tier card, you take the other player's card and your card back and add them to the bottom of their deck. When two same-value cards go head to head, and their are no other higher value cards; each player that played the duplicates place three cards face down and a fourth face up, whoever has the highest fourth card takes all the cards played! If the 4th cards are the same value keep all cards in play, and do it again. The game ends when one player has all the cards.")
				.padding()
				.font(.system(size: 12))
			HStack {
				VStack {
					ForEach(cardLvls, id: \.self) { string in
						Text(string)
					}
					.frame(width: 52, height: 20 , alignment: .leading)
					.background(.gray)
				}
				NavigationLink(destination: WarVideo()){
					Text("Video Demonstration (Click)")
						.foregroundStyle(Color(.black))
						.frame(width: 150, height: 100, alignment: .center)
						.background(Color(.gray))
						.clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
						
				}.padding()
					
				
			}
		}
    }
}

#Preview {
    WarGame()
}

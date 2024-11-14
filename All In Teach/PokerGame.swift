//
//  PokerGame.swift
//  All In Teach
//
//  Created by Kevin Bronzert on 12/6/24.
//

import SwiftUI

var values = 
["Straight Flush: Straight all same suit.",
"Four of a kind: Four of one number/face card.",
"Full House: Three and two of a kind (three of a kind decide value).",
"Flush: Five of one suit.",
"Straight: Five in order by number/face value.",
"Three of a kind: Three of same number/face card.",
"Two pair: Two pairs of number/face cards.",
"One pair: Two same number/face card.",
"High card: Highest card out of the hand."]


struct PokerGame: View {
    var body: some View {
		VStack {
			Text("Welcome To Poker!")
				.frame(width: 240, height: 200)
				.padding()
				.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
				.bold()
				.foregroundStyle(Color("Main_Color"))
				.background(Color(.darkGray))
				.cornerRadius(25)
			HStack {
				NavigationLink(destination: PokerVideo()) {
					Text("Video")
						.bold()
						.foregroundStyle(Color("Main_Color"))
						.frame(width: 50)
						.background(Color.blue)
				}
			}
			HStack (alignment: .top) {
				List(){
					ForEach(values, id: \.self) { string in
						Text(string)
							.listRowBackground(Color(.black))
							.bold()
					}
					.listRowBackground(Color.black)
					.frame(width:150)
					
				}
				.scrollContentBackground(.hidden)
				.font(.system(size: 11.25))
				.listRowInsets(.init(top: 1, leading: 5, bottom: 5, trailing: 0))
				.frame(height: 475)
				.foregroundStyle(Color("Main_Color"))
			Text("Play out five cards to each player. Then each player uses Tokens, or Coins to bet in the middle based on how s/he feels about their hand against all the other peoples' hands. Each player (start from the left of the dealer) puts in tokens, and the rest of the table must follow suit. If a player does not feel they will beat other hands, they can 'fold' (or opt out). Though they cannot take back their Tokens from the middle. A person can 'raise' the bid (not lower) to 'up the ante.' When someone 'call' it, the bids stop. After, everyone reveals their hand to the rest of the table.")
				.foregroundStyle(Color("Main_Color"))
				.frame(width: 150,height: 443)
				.font(.system(size: 11.5))
				.lineSpacing(4.5)
				.bold()
				.padding()
			}
		}
		.background(Color(.black))
    }
}

#Preview {
    PokerGame()
}

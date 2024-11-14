//
//  GameSelectButton.swift
//  All In Teach
//
//  Created by Kevin Bronzert on 11/18/24.
//

import SwiftUI

struct GameSelectButton: View {
	var body: some View {
		VStack (alignment: .leading){
			NavigationStack{
				VStack {
					List {
						NavigationLink(destination: WarGame()) {
							Text("War")
						}
						NavigationLink(destination: PokerGame()){
							Text("Poker")
						}
					}
				}
			}
		}
		.padding()
	}
}


#Preview {
	GameSelectButton()
}

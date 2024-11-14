//
//  WarVideo.swift
//  All In Teach
//
//  Created by Kevin Bronzert on 12/16/24.
//

import SwiftUI
import AVKit

struct WarVideo: View {
	var videoURL: URL? {
		Bundle.main.url(forResource: "Big_Buck_Bunny_360_10s_1MB", withExtension: "mp4")
	}
	var body: some View {
		if let videoURL{
			VideoPlayer(player: AVPlayer(url: videoURL))
		} else {
			Text("Could not load test video.")
		}
	}
	
	struct videoView: PreviewProvider {
		static var previews: some View {
			WarVideo()
		}
	}
}

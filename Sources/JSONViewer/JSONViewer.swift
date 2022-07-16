import SwiftUI

@available(macOS 10.15, iOS 13.0, *)
public struct JSONView: View {
	let json: Data
	
	public init(json: Data) {
		self.json = json
	}
	
	public var body: some View {
		ScrollView() {
			Text(String(data: json, encoding: .utf8) ?? "Unable to display")
		}
	}
}

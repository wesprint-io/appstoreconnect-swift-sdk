// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaTesters.WithID {
	public var betaGroups: BetaGroups {
		BetaGroups(path: path + "/betaGroups")
	}

	public struct BetaGroups {
		/// Path: `/v1/betaTesters/{id}/betaGroups`
		public let path: String

		public func get(fieldsBetaGroups: [FieldsBetaGroups]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaGroupsWithoutIncludesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaGroups, limit), id: "betaTesters_betaGroups_getToManyRelated")
		}

		private func makeGetQuery(_ fieldsBetaGroups: [FieldsBetaGroups]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsBetaGroups: String, Codable, CaseIterable {
			case name
			case createdDate
			case isInternalGroup
			case hasAccessToAllBuilds
			case publicLinkEnabled
			case publicLinkID = "publicLinkId"
			case publicLinkLimitEnabled
			case publicLinkLimit
			case publicLink
			case feedbackEnabled
			case iosBuildsAvailableForAppleSiliconMac
			case iosBuildsAvailableForAppleVision
			case app
			case builds
			case betaTesters
			case betaRecruitmentCriteria
			case betaRecruitmentCriterionCompatibleBuildCheck
		}
	}
}


import Foundation

struct MockDraftPreviewService {

    static var prospect: Prospect = {
        return Prospect(firstName: "Zion",
                        lastName:  "Williamson",
                        position:  "POWER FORWARD",
                              ht: 79,
                              wt: 285,
                           image:  "zion-williamson",
                           experience: "Freshman",
                           birthPlace: "SC",
                           analysis: "Analysis goes here",
                           round: 1,
                           draftPosition: 1,
                           school: "Duke",
                           team: Team(name: "Pelicans", market: "New Orleans"),
                           stats: [Stat(value: "99.9", name: "pts"), Stat(value: "99.9", name: "reb"), Stat(value: "99.9", name: "ast"), Stat(value: "99.9", name: "efg")])
    }()

    static var draftRound: DraftRound = {
        return DraftRound(headline: "Round",
                          subheadline: "1",
                          round: "Round 1",
                          picks: [Pick(prospect: prospect), Pick(prospect: prospect), Pick(prospect: prospect), Pick(prospect: prospect)])
    }()

    static func currentPick() -> Pick {
        return Pick(prospect: prospect)
    }

    static func currentProspect() -> Prospect {
        return prospect
    }

    static func picks() -> [Pick] {
        return draftRound.picks
    }
}

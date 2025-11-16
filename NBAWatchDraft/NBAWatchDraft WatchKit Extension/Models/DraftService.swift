
import Foundation

protocol DraftService {
    func fetchPicks() -> [Pick]
    func fetchPicks(by team: String) -> [Pick]
}

protocol DraftPreviewService {
    func currentPick() -> Pick
    func currentProspect() -> Prospect
}

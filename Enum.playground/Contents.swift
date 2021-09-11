//Newbie
//Believer
//Average
//Epic
//Megastar
enum ExperienceLevel{
    case Newbie
    case Believer
    case Average
    case Epic
    case Megastar
}
let player1ExperienceLevel = ExperienceLevel.Average
switch player1ExperienceLevel {
case .Newbie: "You're so new! Welcome!"
case .Believer: "Keep trainnig you need it!"
case .Average: "You didn't came here to be average"
case .Epic: "Yeah, You are getting "
case .Megastar: "All eyes are on you"
}

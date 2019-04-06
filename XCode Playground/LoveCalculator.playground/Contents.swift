import UIKit

func loveCalculator(yourName: String, theirName:String) -> String{
    
    let loveScore = arc4random_uniform(101)
    
    if(loveScore > 80){
        return "Your lovescore is \(loveScore). You love eachother like Kanye loves Kanye"
    }else if loveScore>40 && loveScore<=80 {
        return "Your lovescore is \(loveScore). You go together like coke and mentos."
    }else{
        return "Your lovescore is \(loveScore). No love possible, you'll be alone forever"
    }
}

loveCalculator(yourName: "Arya Kulkarni", theirName: "Tom Holland")


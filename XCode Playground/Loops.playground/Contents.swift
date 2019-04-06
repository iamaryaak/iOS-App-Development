import UIKit

func printBeer(withThisManyBottles totalNumber: Int)-> String{
    var lyrics: String = ""
    
    for number in (1...totalNumber).reversed(){
        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down pass it around, \(number-1) bottles of beer on the wall.\n"
        
        lyrics += newLine
        //print(newLine)
    }
    
    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, \(totalNumber) bottles of beer on the wall.\n"
    
    return lyrics
}

print(printBeer(withThisManyBottles: 10))


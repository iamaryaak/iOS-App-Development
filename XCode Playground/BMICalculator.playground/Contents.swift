import UIKit

func BMICalc(mass : Double, height : Double) -> String{
    
    //var mass = 20;
    //var height = 5;
    
    let BMI = mass / height;
    
    if BMI > 25{
        return "you are overweight, your BMI = \(BMI)"
    }else if BMI >= 18.5 && BMI <= 25 {
        return "you are of normal weight, your BMI = \(BMI)"
    }else {
        return "you are underweight, your BMI = \(BMI)"
    }
    
    
}

BMICalc(mass: 125, height: 5)

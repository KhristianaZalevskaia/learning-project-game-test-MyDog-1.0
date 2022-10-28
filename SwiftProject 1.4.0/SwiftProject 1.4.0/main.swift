//
//  main.swift
//  SwiftProject 1.4.0
//
//  Created by Khristiana Zalevskaia on 05.05.2022.
//
import Foundation

struct MyData {

    var Question: String
    var param1: Int
    var param2: Int

}

let myArray: [MyData] = [MyData.init(Question: "How long do dogs live? ", param1: 10,                           param2: 15),
                         MyData.init(Question: "At what time in morning should take a dog for a walk? ", param1: 6, param2: 8),
                         MyData.init(Question: "How many minutes need to walk with a dog in total per day? ", param1: 90, param2: 360),
                         MyData.init(Question: "Up to how many months of age does the dog grow? ", param1: 30, param2: 36),
                         MyData.init(Question: "From how old acceptable take a dog for a child? ", param1: 12, param2: 16)]

var totalScore = [0]

for Answer in myArray {

    print(Answer.Question)
    guard let input = readLine(),
          let myinput = Int(input) else {

        print("Invalid input ")
        exit(1)
    }

    var score: Int = 0
    let wrong = "You are wrong! "
    let right = "You are right! "
    let result = "Your score + "

    if myinput < Answer.param1 || myinput > Answer.param2 {

        print(result, score)
        print(wrong)
        totalScore += [score]

    } else if myinput != 0 {

        score += 1
        print(result, score)
        print(right)
        totalScore += [score]

    } else {

        print("Invalid input")

        exit(2)
    }
}

var Final = totalScore[1] +
            totalScore[2] +
            totalScore[3] +
            totalScore[4] +
            totalScore[5]

switch Final {

    case 0...2:

    print("Your result is not too good. \(Final). Before you get a dog, you should learn a lot. ")

    case 3...4:

    print("Your result is pretty good. \(Final). A little more knowledge, and you will become a great owner for a dog! ")

    case 5:

    print("Your result is excellent! \(Final). You know a lot about dogs and are ready to become a responsible owner! ")

    default:

    print("Error. Take the test again")
}



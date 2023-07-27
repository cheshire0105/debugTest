//
//  main.swift
//  debugeTest
//
//  Created by cheshire on 2023/07/27.
//

import Foundation

// MARK: - for문으로 계속 더하는 함수
func calculateSum(n: Int) -> Int {
    var sum = 0
    for i in 1...n {
        sum += i
        
    }
    return sum
}

let number = 10
let result = calculateSum(n: number)
print("The sum of numbers from 1 to \(number) is \(result)")

// MARK: 함수의 실행 순서
/*
 1. number 상수가 calculateSum 함수에 파라미터로 들어간다.
 2. sum은 0으로 시작 하고 n은 number이므로 for문을 통해 10번 반복 한다.
 3. i가 1일 때 0 += 1을 한다 그러면 sum은 1이 된다.
 4. n이 10이 될 때 까지 계속 반복 해야 함으로 i가 2가 될 때 1 += 2를 한다.
 5. 그럼 그럼 1이였던 sum 변수는 3이 된다. 그렇게 계속 반복 한다.
 */

// MARK: breakPoint 확인 방법
/*
 1. breakPoint를 사용 하면 그 부분에서 중지 된다.
 2. 그리고 디버그 창에서 그 부분의 상태를 확인 할 수 있다.
 3. 예를 들어 for문이 끝나는 부분의 }에서 걸면 for문이 동작하는 걸 디버그에서 확인 할 수 있다.
 4. breakPoint를 없에려면 그냥 드래그를 하거나 우클릭으로 deleteBreakPoint를 하면 된다.
 */

// MARK: - 소수 판별 함수
func isPrime(n: Int) -> Bool {

    
    if n <= 1 {
        return false
    }
    
    if n <= 3 {
        return true
    }
    

    var i = 2
    while i*i <= n {
        if n % i == 0 {
            return false
        }
        i = i + 1
    }
    return true
}

let numberTwo = 17
let resultTwo = isPrime(n: numberTwo)
print("\(numberTwo) is prime: \(resultTwo)")

// MARK: 함수의 실행 순서
/*
 1. 입력값 확인: 함수는 먼저 입력받은 숫자 n이 1 이하인지, 또는 3 이하인지를 확인합니다. n이 1 이하인 경우, 이는 소수가 아니므로 함수는 false를 반환합니다. n이 3 이하인 경우, 이는 소수이므로 함수는 true를 반환합니다.
 2. 소수 판별: n이 4 이상인 경우, 함수는 2부터 시작하여 i*i가 n보다 작거나 같을 때까지 모든 i에 대해 n을 i로 나누어 봅니다. 이때 n % i가 0인 경우가 있으면, n은 i와 n/i라는 두 개의 약수를 가지므로 소수가 아닙니다. 따라서 이 경우 함수는 false를 반환합니다.
 3. 소수 확인: i*i가 n보다 커질 때까지 n을 i로 나눈 나머지가 모두 0이 아니었다면, n은 소수입니다. 따라서 함수는 true를 반환합니다.
 */


// MARK: breakPoint 두개 사용 예시
/*
 while i*i <= n {
 
 print("\(numberTwo) is prime: \(resultTwo)")

 이 두개의 줄에 breakPoint를 넣고 실행 하면 디버그 창에서 내부에서 어떻게 흘러가는지 알 수 있습니다.

 */

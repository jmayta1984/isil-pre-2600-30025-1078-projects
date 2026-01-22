
// Declaración implícita
var greeting = "Hello, playground"

// Declaración explícita
let myName: String = "Jorge"

greeting = "Hi"

let oranges = 10

let orangeSummary = "I have " + String(oranges) + " oranges."

let apples = 15

// Interpolación
let appleSummary = "I have \(apples) apples."

let fruitsSummay = "I have \(apples + oranges) fruits."

var grades = [15, 17, 13, 19]

grades.append(20)

for grade in grades {
    print(grade)
}


let person: [String: Any]

person = [
    "firstName": "Jorge",
    "age": 40
]



func sayHello(name: String) -> String {
    "Hello, \(name)!"
}

sayHello(name: "Marcos")

let sayHi: (String) -> String  = { name in
    "Hi, \(name)!"
}

sayHi("Juan")


let addOperation: (Int, Int) -> Int = { a, b in
    a + b
}

let multiplyOperation: (Int, Int) -> Int = { a, b in
    a * b
}

func doOperation(a: Int, b: Int, operation:  (Int, Int) -> Int ) -> Int {
    operation(a, b)
}

doOperation(a: 10, b: 7) { x, y  in
        x - y
}

doOperation(a: 15, b: 10, operation: addOperation)

doOperation(a: 7, b: 4, operation: multiplyOperation)

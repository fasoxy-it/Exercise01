class Person {
    var name: String
    var surname: String
    var age: Int
    var nickname: String?
    
    init(name: String, surname: String, age: Int, nickname: String? = nil) {
        self.name = name
        self.surname = surname
        self.age = age
        self.nickname = nickname
    }
}

let person = Person(name: "Mattia", surname: "Fasoli", age: 23)

// Exercise 06

var listPerson = [
    Person(name: "Andrea", surname: "Andrei", age: 20, nickname: "Andre"),
    Person(name: "Bruna", surname: "Bruni", age: 50, nickname: "Brubru"),
    Person(name: "Carlo", surname: "Carli", age: 30),
    Person(name: "Daniela", surname: "Danieli", age: 40, nickname: "Dan")
]

// Exercise 07

func printPerson(listPersonArray: [Person]) {
    for element in listPersonArray {
        if element.nickname == nil {
            print("\(element.name) \(element.surname) ha \(element.age) anni")
        } else {
            print("\(element.name) \(element.surname) ha \(element.age) anni e il suo nickname è \(element.nickname!)")
        }
    }
}

printPerson(listPersonArray: listPerson)

// Exercise 08

func printAll(list: [Person]) {
    for person in list {
        print(person)
    }
}

func printAgeUnder30Person(listPersonArray: [Person]) -> [Person] {
    var listPersonArrayUnder30: [Person] = []
    for element in listPersonArray {
        if element.age <= 30 {
            listPersonArrayUnder30.append(element)
        }
    }
    return listPersonArrayUnder30
}

printAgeUnder30Person(listPersonArray: listPerson)

func printAgeUnder40Person(listPersonArray: [Person]) -> [Person] {
    var listPersonArrayUnder40: [Person] = []
    for element in listPersonArray {
        if element.age <= 40 {
            listPersonArrayUnder40.append(element)
        }
    }
    return listPersonArrayUnder40
}

printAgeUnder40Person(listPersonArray: listPerson)

func printNicknamePerson(listPersonArray: [Person]) -> [Person] {
    var listPersonArrayNickname: [Person] = []
    for element in listPersonArray {
        if element.nickname != nil {
            listPersonArrayNickname.append(element)
        }
    }
    return listPersonArrayNickname
}

printNicknamePerson(listPersonArray: listPerson)

typealias ArrayInOut = ([Person]) -> [Person]

func operation(operation: ArrayInOut, listPersonArray: [Person]) -> [Person] {
    return operation(listPersonArray)
}

func filter(string: String, listPersonArray: [Person]) -> [Person] {
    switch string {
    case "under30":
        return printAgeUnder30Person(listPersonArray: listPersonArray)
    case "under40":
        return printAgeUnder40Person(listPersonArray: listPersonArray)
    default:
        return printNicknamePerson(listPersonArray: listPersonArray)
    }
}

filter(string: "under30", listPersonArray: listPerson)
filter(string: "under40", listPersonArray: listPerson)
filter(string: "nickname", listPersonArray: listPerson)


// Exercise 8 (parte c)

// Exercise 9

var persons: String = ""

for element in listPerson {
    persons = persons + "\(element.name) \(element.surname) "
}

print(persons)

print(listPerson.map{$0.name + " " + $0.surname})
print(listPerson.map{$0.name + " " + $0.surname}.reduce("", {$0 + $1 + " "}))


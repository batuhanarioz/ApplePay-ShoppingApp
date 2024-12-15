import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Kobe Forma", image: "jersey1", price: 100),
                   Product(name: "Lebron Forma", image: "jersey2", price: 200),
                   Product(name: "Jordan Forma", image: "jersey3", price: 300),
                   Product(name: "Rose Forma", image: "jersey4", price: 400),
                   Product(name: "Doncic Forma", image: "jersey5", price: 500),
                   Product(name: "Arsenal Forma", image: "jersey6", price: 600),
                   Product(name: "Zlatan Forma", image: "jersey7", price: 700),
                   Product(name: "Messi Forma", image: "jersey8", price: 800)
                ]

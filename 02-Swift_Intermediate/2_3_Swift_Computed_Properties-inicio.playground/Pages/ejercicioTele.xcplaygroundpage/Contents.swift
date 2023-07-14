import Foundation

class TVSet {
    var id: String
    var inches: Int
    var channel: Int?
    
    init(inches: Int,
         channel: Int,
         id: String
    ) {
        self.id = id
        self.inches = inches
    }
    
    init(inches: Int,
         id: String
    ) {
        self.id = id
        self.inches = inches
    }
    
    func start() {
        print("Starting the TV Set \(id)")
    }
    
    func stop() {
        print("Stopping the TV Set \(id)")
    }
    
    func changeChannel(_ channel: Int) {
        print("Changing the TV Set \(id) to channel \(channel)")
        self.channel = channel
    }
    
}

class TVSetShop: TVSet {
    static var channelShop: Int = 21
    
    init(id: String, inches: Int) {
        super.init(inches: inches, id: id)
    }
    
    override func changeChannel(_ channelShop: Int) {
        print("Changing the TV shop Set to channel \(channelShop)")
    }
}


let myTV = TVSet(inches: 32, channel: 1, id: "id11")
myTV.start()
myTV.changeChannel(2)
print("I'm watching my TVSet \(myTV.id) channel \(myTV.channel ?? 0)")

let shopTV1 = TVSetShop(id: "id21", inches: 48)
let shopTV2 = TVSetShop(id: "id22", inches: 30)
TVSetShop.channelShop = 21
shopTV1.start()
shopTV2.start()

print("\n\nI'm watching TVSet shop \(shopTV1.id) channel \(TVSetShop.channelShop)")
print("\n\nI'm watching TVSet shop \(shopTV2.id) channel \(TVSetShop.channelShop)")

TVSetShop.channelShop = 41
print("\n\nI'm watching TVSet shop \(shopTV1.id) channel \(TVSetShop.channelShop)")
print("\n\nI'm watching TVSet shop \(shopTV2.id) channel \(TVSetShop.channelShop)")
print("\n\n\n\nI'm watching TVSet shop \(TVSetShop.channelShop) channel \(TVSetShop.channelShop)")
//Comentario


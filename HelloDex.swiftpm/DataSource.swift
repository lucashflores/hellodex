import SwiftUI

class DataSource {
    public static func getCard(id: String) -> CardModel {
        return DataSource.self.data.first(where: {$0.id == id})!
    }
    
    private static var data: [CardModel] = [
        CardModel(imageName: "pikachu", backgroundImageName: "electric", title: "Pikachu", text: "Pikachu, the Mouse Pokémon. It can generate electric attacks from the electric pouches located in both of its cheeks.", id: "pikachu", color: Color.yellow),
        CardModel(imageName: "squirtle", backgroundImageName: "water", title: "Squirtle", text: "Squirtle's English name is a portmanteau of the words squirt and turtle. Squirtle, known as the Tiny Turtle Pokémon, are turtle Pokémon with large eyes and chubby cheeks, capable of moving either on two feet or on all fours. Their skin is a light blue, and they possess a long, curled tail.", id: "squirtle", color: Color.blue),
        CardModel(imageName: "charmander", backgroundImageName: "fire", title: "Charmander", text: "Charmander is a small, bipedal, dinosaur like Pokémon. Most of its body is colored orange, while its underbelly is a light yellow color.", id: "charmander", color: Color.orange),
        CardModel(imageName: "bulbasaur", backgroundImageName: "grass", title: "Bulbasaur", text: "In the Pokémon franchise, Bulbasaur are small, squat amphibian and plant Pokémon that move on all four legs, and have blue-green bodies with darker blue-green spots.", id: "bulbasaur", color: Color.green),
        CardModel(imageName: "nidoran", backgroundImageName: "poison", title: "Nidoran", text: "The horn on a male Nidoran’s forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.", id: "nidoran", color: Color.purple),
        CardModel(imageName: "kingler", backgroundImageName: "water", title: "Kingler", text: "The horn on a male Nidoran’s forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.", id: "kingler", color: Color.blue),
        CardModel(imageName: "electabuzz", backgroundImageName: "electric", title: "Electabuzz", text: "Many power plants keep Ground-type Pokémon around as a defense against Electabuzz that come seeking electricity.", id: "electabuzz", color: Color.yellow),
        CardModel(imageName: "tangela", backgroundImageName: "grass", title: "Tangela", text: "Hidden beneath a tangle of vines that grows nonstop even if the vines are torn off, this Pokémon’s true appearance remains a mystery.", id: "tangela", color: Color.green),
        CardModel(imageName: "magmar", backgroundImageName: "fire", title: "Magmar", text: "Magmar dispatches its prey with fire. But it regrets this habit once it realizes that it has burned its intended prey to a charred crisp.", id: "magmar", color: Color.orange),
        CardModel(imageName: "vaporeon", backgroundImageName: "water", title: "Vaporeon", text: "It lives close to water. Its long tail is ridged with a fin, which is often mistaken for a mermaid’s.", id: "vaporeon", color: Color.blue),
        CardModel(imageName: "machamp", backgroundImageName: "fighting", title: "Machamp", text: "It quickly swings its four arms to rock its opponents with ceaseless punches and chops from all angles.", id: "machamp", color: Color.red.opacity(0.7)),
        CardModel(imageName: "alakazam", backgroundImageName: "psychic", title: "Alakazam", text: "It has an incredibly high level of intelligence. Some say that Alakazam remembers everything that ever happens to it, from birth till death.", id: "alakazam", color: Color.pink),
        CardModel(imageName: "pinsir",backgroundImageName: "insect", title: "Pinsir", text: "These Pokémon judge one another based on pincers. Thicker, more impressive pincers make for more popularity with the opposite gender.", id: "pinsir", color: Color.green.opacity(0.4))

    ]
}

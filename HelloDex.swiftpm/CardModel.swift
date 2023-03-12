import SwiftUI


// Esse é um modelo de dados, que é usado para popular os cards do app. Ou seja, as telas do app tem imagens que são acessadas por seus nomes, títulos e textos. O id é usado para garantir que os modelos são únicos.
struct CardModel: Identifiable {
    let imageName: String
    let backgroundImageName: String
    let title: String
    let text: String
    let id: String
    let color: Color;
}

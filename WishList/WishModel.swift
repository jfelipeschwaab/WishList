//
//  WishModel.swift
//  WishList
//
//  Created by João Felipe Schwaab on 10/06/25.
//
//
//  Model.swift
//  WishList
//
//  Created by João Felipe Schwaab on 10/06/25.
//

//Model: A tabela/Tipo de dados que queremos guardar, é aqui que definimos nosso Schema

//Model Container: é o responsável por criar e manusear o arquivo atual que é utilizado para todo o armazenamento, ele roda o conteúdo da Model e o armazena, ele é criado in the app startup

/*
Model Configuration: Determina como e onde os dados são guardados.

Pode utilizar o armazenamento permanente do dispositivo, mas os dados podem ser guardados apenas em memória ou guardados em algum CloudKit Container.

Podemos também configurar quando dados devem ser salvos automaticamente ou não.
 */

/*
Model Context: Trackeia todo os objetos que foram criados, modificados e deletados em memória, para que eles possam ser permanentemente salvos no modelContainer posteriormente.
 
Também nos oferece ferramentas para desfazer, ou commitar mudanças para o armazenamento persistente.
 
*/

/*
View: Utiliza queries para pegar dados do modelContext que foram adicionados para o ambiente
 
*/



import Foundation
import SwiftData

@Model //Fala para o Swift que quero armazenar objetos Wish
class Wish {
    var title : String
    var descriptionWish: String
    
    init(title: String, descriptionWish : String) {
        self.title = title
        self.descriptionWish = descriptionWish
    }
}

# WishList App

Um aplicativo iOS simples e elegante para criar e organizar suas listas de desejos pessoais. Construído utilizando o framework **SwiftUI** para a interface de usuário e o **SwiftData** para persistência de dados, o WishList App oferece uma experiência nativa e fluida para que você nunca mais esqueça de um desejo.

Este projeto serve como um exemplo prático da implementação de um aplicativo básico com as tecnologias mais recentes da Apple, sendo ideal para quem busca um ponto de partida para aprender sobre o desenvolvimento iOS moderno.

## ✨ Funcionalidades

* **Adicionar Desejos:** Crie novos itens na sua lista de desejos com um título e uma descrição.
* **Visualização Clara:** Veja todos os seus desejos organizados em uma lista intuitiva.
* **Excluir Desejos:** Deslize para a esquerda em qualquer desejo para removê-lo da lista.
* **Contador de Desejos:** Acompanhe quantos desejos você tem na sua lista.
* **Estado Vazio:** Mensagem amigável quando a lista de desejos está vazia.

## 🚀 Tecnologias Utilizadas

* **SwiftUI:** Framework declarativo da Apple para construir interfaces de usuário em todas as plataformas Apple.
* **SwiftData:** Framework de persistência de dados moderno e otimizado da Apple, construído sobre o Core Data.
* **Swift:** Linguagem de programação robusta e intuitiva da Apple.
* **Xcode:** Ambiente de Desenvolvimento Integrado (IDE) da Apple.

## 🛠️ Como Rodar o Projeto

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/jfelipeschwaab/WishList.git
    ```
2.  **Abra no Xcode:** Navegue até a pasta do projeto clonado e abra o arquivo `WishList.xcodeproj`.

3.  **Selecione um Simulador ou Dispositivo:** Certifique-se de que um simulador iOS (ou seu dispositivo físico) esteja selecionado como alvo de execução.

4.  **Execute o Aplicativo:** Clique no botão "Run" (o ícone de play) no Xcode ou use `Cmd + R` para compilar e executar o aplicativo.

## 📖 Estrutura do Código (Visão Geral)

* `ContentView.swift`: A visão principal que exibe a lista de desejos, gerencia a adição e exclusão de itens e lida com a interface do usuário.
* `Wish.swift`: O modelo de dados para um desejo, definido com `@Model` para persistência via SwiftData.
* `WishListApp.swift`: O ponto de entrada do aplicativo, onde o `modelContainer` é configurado para o SwiftData.

## 🤝 Contribuição

Contribuições são bem-vindas! Se você tiver alguma ideia para melhorar o aplicativo ou encontrar algum bug, sinta-se à vontade para abrir uma *issue* ou enviar um *pull request*.

## 👨‍💻 Autor

**João Felipe Schwaab**
* [GitHub](https://github.com/jfelipeschwaab)
* [LinkedIn](https://www.linkedin.com/in/jo%C3%A3o-felipe-schwaab/) 

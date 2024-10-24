# CryptoManiaSwiftUI

**CryptoMania** é um aplicativo iOS desenvolvido em **SwiftUI** que permite acompanhar suas criptomoedas favoritas de forma simples e eficiente. Com ele, você pode visualizar as principais informações, como preço, variação e volume de negociação, tudo em **tempo real**!

## 📱 Demonstração

Aqui está uma prévia do aplicativo:

 <img src="https://i.imgur.com/uRms1CD.png" alt="CryptoMania Preview" width="300"/>  <img src="https://i.imgur.com/qG7X2nb.png" alt="CryptoMania Preview" width="300"/> 

## 🚀 Funcionalidades

- **Lista de Criptomoedas**: Veja uma lista com as principais criptomoedas do mercado.
- **Dados em Tempo Real**: Acompanhe o preço, variação, volume e market cap das criptomoedas com dados atualizados da **CoinMarketCap API**.
- **Gráficos Interativos** *(em desenvolvimento)*: Visualize a variação de preço das criptomoedas ao longo do tempo.
- **Favoritos** *(em desenvolvimento)*: Salve suas criptomoedas favoritas para acesso rápido.

## 🛠 Tecnologias Utilizadas

- **Swift**: Linguagem de programação principal.
- **SwiftUI**: Framework utilizado para construção da interface do usuário de forma declarativa.
- **URLSession**: Framework para realizar requisições de rede.
- **AsyncImage**: Utilizado para carregamento assíncrono de imagens.
- **CoinMarketCap API**: API usada para obter dados das criptomoedas.
- **Charts** *(em desenvolvimento)*: Framework nativo para plotagem de gráficos.

## 🏗 Arquitetura

O projeto utiliza o padrão **MVVM (Model-View-ViewModel)** para organização do código:

- **Model**: Representa os dados das criptomoedas.
- **View**: Interface do usuário construída com SwiftUI.
- **ViewModel**: Faz a busca e processa os dados da API, fornecendo as informações para a View.

## 💾 Cache

O aplicativo utiliza **URLCache** para armazenar as respostas da API em cache, reduzindo requisições desnecessárias e melhorando a performance.

## 📈 Próximos Passos

- Implementar a funcionalidade de favoritos.
- Adicionar gráficos interativos com variação de preço.
- Melhorar a interface do usuário com mais animações e transições fluidas em SwiftUI.
- Adicionar testes unitários.

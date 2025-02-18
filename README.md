# 🏰 Castelo Mágico - Aprendendo Gerência de Estado com BLoC no Flutter

Bem-vindo ao **Castelo Mágico**! Este é um projeto Flutter criado para ensinar, de forma lúdica, como funciona a **gerência de estado com o BLoC**. Ele é ideal para crianças ou iniciantes que querem aprender conceitos de programação enquanto se divertem.

---

## 🌟 A História do Castelo Mágico

Era uma vez, em um reino distante, um **castelo mágico** onde as luzes podiam ser acesas ou apagadas com um simples toque. O segredo do castelo estava em um **mago poderoso** chamado **BLoC**.  

O BLoC era responsável por interpretar as ordens enviadas pelos habitantes do castelo (os eventos) e transformar essas ordens em ações mágicas (os estados). Assim, o castelo sempre sabia como deveria estar configurado — com luzes acesas, apagadas ou até com diferentes cores.

---

## 🎓 A Teoria por Trás da História

No mundo real, o **BLoC** (Business Logic Component) é um padrão de arquitetura usado em Flutter para gerenciar estados de forma eficiente. Ele segue o princípio de:

1. **Eventos**: São os comandos enviados pelo usuário ou pelo sistema, representando ações como "acender a luz" ou "apagar a luz".
2. **Estados**: São os resultados visíveis das ações. Por exemplo, a luz do castelo pode estar "acesa" ou "apagada".
3. **BLoC**: Atua como o **mago**, recebendo os eventos, processando a lógica, e emitindo novos estados para atualizar a interface.

No **Castelo Mágico**, usamos essa ideia para explicar como transformar interações do usuário em mudanças no aplicativo.

---

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework para criação de interfaces.
- **flutter_bloc**: Pacote para implementar o padrão BLoC de gerência de estado.
- **Dart**: Linguagem de programação utilizada pelo Flutter.

---

## 🚀 Funcionalidades do Castelo

- Acender ou apagar a luz mágica do castelo.
- Mostrar o estado atual da luz (acesa ou apagada).
- Fácil expansão para novas funcionalidades, como mudar a cor da luz!

---

## 📂 Estrutura do Código

```plaintext
lib/
├── luz_bloc.dart          # O mago BLoC que controla a lógica do castelo.
├── luz_state.dart         # Define os estados da luz (acesa, apagada).
├── luz_event.dart         # Define os eventos (acender, apagar).
└── main.dart              # Conecta tudo e exibe o castelo na tela.

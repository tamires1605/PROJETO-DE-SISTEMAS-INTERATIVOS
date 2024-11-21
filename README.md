<div align="center">
  
![Tela Inicial](https://github.com/tamires1605/PROJETO-DE-SISTEMAS-INTERATIVOS/blob/main/RecycleTam/icon1.png)
  
# Recicle Game
</div>

Recicle Game é um jogo educativo desenvolvido com o **Godot Engine**. O objetivo é incentivar a conscientização ambiental por meio da reciclagem de resíduos. O jogador deve classificar corretamente diferentes tipos de resíduos em esteiras que se movem pelo cenário, acumulando pontos ao realizar as ações corretamente.

## 📝 Funcionalidades

- Esteiras dinâmicas que movimentam os resíduos.
- Classificação de resíduos em seis categorias: lixo, metal, orgânico, papel, plástico e vidro.
- Sistema de pontuação que recompensa acertos e penaliza erros.
- Sons personalizados para cada tipo de resíduo.
- Interface que exibe o tempo restante e a pontuação do jogador.
- Tela de fim de jogo exibindo o total de pontos acumulados.

## 🚀 Como Jogar

1. Observe os resíduos que aparecem na esteira.
2. Clique no botão correspondente à categoria correta do resíduo.
3. Evite erros para não perder pontos.
4. Acumule o máximo de pontos antes que o tempo acabe!

## 📂 Estrutura do Projeto

```
res://
├── scenes/
│   ├── Abertura.tscn           # Tela inicial do jogo
│   ├── Recicle.tscn            # Cena principal do jogo
│   ├── Esteira.tscn            # Esteira dinâmica
│   └── Residuos.tscn           # Resíduos recicláveis
├── audio/
│   ├── cardShove3.ogg          # Som para papel
│   ├── chipLay2.ogg            # Som para plástico
│   ├── confirmation_004.ogg    # Som de acerto
│   ├── error_008.ogg           # Som de erro
│   ├── impactGlass_medium_000.ogg # Som para vidro
│   ├── impactMetal_light_003.ogg  # Som para metal
│   ├── impactPlank_medium_002.ogg # Som para lixo
│   └── slime_001b.ogg          # Som para resíduos orgânicos
└── scripts/
    ├── Abertura.gd             # Script da tela inicial
    ├── Recicle.gd              # Script principal do jogo
    ├── Esteira.gd              # Script de movimentação da esteira
    └── Residuos.gd             # Script de comportamento dos resíduos
```

## ⚙️ Scripts Principais

### Recicle.gd
Gerencia a lógica principal do jogo:
- Adiciona esteiras e resíduos ao cenário.
- Atualiza o cronômetro e os pontos.
- Exibe a tela de fim de jogo.

### Esteira.gd
Controla o movimento da esteira no cenário:
- Alterna entre movimentos para frente e para trás.
- Remove a esteira da cena quando sai do campo de visão.

### Residuos.gd
Define o comportamento dos resíduos:
- Gera resíduos aleatórios com cores específicas para cada categoria.
- Detecta interações e atualiza a pontuação.
- Toca sons ao classificar corretamente ou errar.

## 🛠️ Como Configurar

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/tamires1605/PROJETO-DE-SISTEMAS-INTERATIVOS.git
   ```
2. **Abra o projeto no Godot Engine**.
3. **Execute o jogo** pressionando o botão "Play Scene".

## 🖼️ Capturas de Tela

<div>

<img src="https://github.com/tamires1605/PROJETO-DE-SISTEMAS-INTERATIVOS/blob/main/images/tela%20inicial.png" width="200" />
<img src="https://github.com/tamires1605/PROJETO-DE-SISTEMAS-INTERATIVOS/blob/main/images/tela%20inicial%20jogo%20esteira.png" width="200" />
<img src="https://github.com/tamires1605/PROJETO-DE-SISTEMAS-INTERATIVOS/blob/main/images/gamer%20over.png" width="200" />

</div>

# 1ª etapa para criação do player
# para criar um personagem jogável em um jogo 2D usando o Godot Engine, você pode seguir os seguintes passos:
# 1. Na area de cena do Godot, clique com o botão direito e selecione 
# "Adicionar Nó" para criar um novo nó do tipo CharacterBody2D. Este nó representará o personagem jogável. 
characterbody2d 

# 2ª etapa.
# 1. Com o nó CharacterBody2D selecionado, clique com o botão direito e selecione "Adicionar Nó Filho" 
#para adicionar um nó do tipo CollisionShape2D. Este nó será usado para definir a forma de colisão do personagem, 
#permitindo que ele interaja com o ambiente e outros objetos.

# 2. No nó CollisionShape2D, defina a forma de colisão na area de inspeção na opção shape de acordo com a 
#forma do seu personagem, como um retângulo ou um círculo, para garantir que as colisões sejam detectadas corretamente.
CollisionShape2D 

# 3ª etapa.
# Com o nó CharacterBody2D ainda selecionado, clique com o botão direito e selecione "Adicionar Nó Filho" 
#para adicionar um nó do tipo Sprite2D.
Sprite2D 

# 4ª etapa para criação do player
# Adicione um nó filho do tipo AnimatedSprite2D para permitir animações do personagem.
AnimatedSprite2D
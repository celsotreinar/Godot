'''Este script é para um personagem que pode andar para a esquerda e 
direita usando as teclas de seta ou as teclas A e D.'''

extends CharacterBody2D 


var velocidade: float = 150.0 # Velocidade de movimento do personagem

var direcao = vector.ZERO # Vetor de direção para o movimento do personagem

# É chamado uma vez quando o 
# nó é adicionado à cena. Aqui, você pode inicializar variáveis ou configurar o estado inicial do personagem.
func _ready(): # Comentário em cima da função _ready
    pass


# Este método é chamado a 
# cada frame. Aqui, você pode verificar as entradas do jogador e atualizar a direção do movimento.
func _process(delta): # Comentário em cima da função _process]

    # Serve para calcular a direção horizontal com base nas entradas do jogador. Se o jogador pressionar 
    #a tecla de direita, a direção será positiva; se pressionar a tecla de esquerda, a direção será negativa.
    direcao.x = Input.get_action_strength("para_direita") - Input.get_action_strength("para_esquerda") 
    
    # Normaliza o vetor de direção para garantir que a velocidade seja consistente, 
    #independentemente da direção.
    direcao = direcao.normalized() 


# Este método é chamado a cada frame de física. Aqui, você pode aplicar a velocidade ao personagem para movê-lo.
func _physics_process(delta): # Comentário em cima da função _physics_process 

    # Calcula a velocidade do personagem multiplicando a direção pelo valor da velocidade.
    velocity = direcao * velocidade 

    # Move o personagem usando a função move_and_slide, que lida com colisões e deslizamento.
    move_and_slide() 


# Este método é chamado quando o personagem colide com outro corpo. Aqui, você pode lidar com colisões, como parar o movimento ou reagir a obstáculos.
func _on_body_entered(body): # Comentário em cima da função _on_body_entered
    pass
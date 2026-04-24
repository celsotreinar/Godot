'''Este script é para um personagem que pode andar para a esquerda e 
direita usando as teclas de seta ou as teclas A e D.'''

extends CharacterBody2D 

# Velocidade de movimento do personagem com a anotação @export para permitir a configuração no editor do Godot.
@export var velocidade: float = 150.0 

# vector2.ZERO é um vetor 2D com ambos os componentes (x e y) definidos como zero.
#Ele é usado para inicializar a variável direcao, que armazenará a direção do movimento do personagem.
var direcao = vector2.ZERO 

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

# Este script é um exemplo básico de como implementar o movimento horizontal para um personagem em um jogo 2D usando o Godot Engine. 
# Ele permite que o personagem se mova para a esquerda e direita com uma velocidade constante, respondendo às entradas do jogador.

# /// ------------------------------------------------------------------///
# Embaixo esta o código sem os comentários para facilitar a leitura:

extends CharacterBody2D

@export var velocidade: float = 150.0

var direcao = Vector2.ZERO

func _ready():
	pass
	
func _process(_delta):
	direcao.x = Input.get_action_strength("para_direita") - Input.get_action_strength("para_esquerda")
	direcao = direcao.normalized()
	
func _physics_process(_delta):
	velocity = direcao * velocidade
	
	move_and_slide()


# /// ------------------------------------------------------------------///
'''2º Etapa: Nesse será adicionado a animação do personagem andando para a esquerda e direita, 
usando o AnimatedSprite2D.'''

extends CharacterBody2D

@export var velocidade: float = 150.0

var direcao = Vector2.ZERO

@onready var animacao: AnimatedSprite2D = $anima_AnimatedSprite2D # entrou isso

func _ready():
	pass
	
func _process(_delta):
	direcao.x = Input.get_action_strength("para_direita") - Input.get_action_strength("para_esquerda")
	direcao = direcao.normalized()
	
func _physics_process(_delta):
	velocity = direcao * velocidade
	
	move_and_slide()
	atualizacao_animacao() # Entrou isso
	
func atualizacao_animacao(): # Entrou isso
	if direcao != Vector2.ZERO: # Entrou isso
		animacao.play("andar_walk") # Entrou isso
	# Vira o sprite dependendo da direção # Entrou isso
		if direcao.x != 0: # Entrou isso
			animacao.flip_h = direcao.x < 0 # Entrou isso
	else: # Entrou isso
		animacao.play("parado_idle") # Entrou isso
		
	
	

# Resumo Teórico

A análise no domínio da frequência é uma das ferramentas mais importantes da engenharia e do processamento de sinais. Em vez de observar um sinal apenas 
como uma sequência de valores variando no tempo, essa análise permite entender quais frequências compõem esse sinal. É semelhante ao que acontece 
quando um prisma separa a luz branca em várias cores: cada cor representa uma frequência diferente presente na luz original.

## Transformada de Fourier em Tempo Discreto (DTFT)

A Transformada de Fourier em Tempo Discreto (DTFT) é utilizada para estudar sinais discretos que possuem duração infinita e não são periódicos.

Seu principal objetivo é converter um sinal representado no tempo em uma representação no domínio da frequência. 
Como o sinal é discreto — ou seja, formado por amostras — o espectro obtido se torna periódico.

Fisicamente, a DTFT mostra como a energia do sinal está distribuída entre diferentes frequências. A frequência é representada por uma variável contínua, 
normalmente indicada por $\omega$, variando de $-\pi$ até $\pi$ radianos. O ponto $\pi$ corresponde à Frequência de Nyquist, que representa metade 
da taxa de amostragem e define a maior frequência que pode ser representada corretamente em um sistema discreto.


## Transformada Discreta de Fourier (DFT)

Na prática, computadores não conseguem processar sinais infinitos nem funções contínuas. Por isso, utiliza-se a Transformada Discreta de Fourier (DFT).

A DFT trabalha com um conjunto finito de amostras, geralmente representado por $N$, e calcula o espectro do sinal também em $N$ pontos discretos de frequência.

Do ponto de vista físico, ao aplicar a DFT estamos assumindo que o trecho analisado do sinal se repete periodicamente no tempo. O resultado obtido 
pode ser entendido como uma amostragem da DTFT contínua. Cada ponto calculado pela DFT — chamado de bin — indica a amplitude e a fase de uma 
frequência específica presente no sinal.


## O Algoritmo FFT e sua Importância Computacional

A Transformada Rápida de Fourier (FFT) não é uma nova transformada, mas sim um método extremamente eficiente para calcular a DFT.

Se a DFT fosse calculada diretamente pela definição matemática, o número de operações cresceria proporcionalmente a $N^2$, o que exigiria um enorme esforço computacional. Para um sinal com 10 mil amostras, por exemplo, seriam necessários cerca de 100 milhões de cálculos.

A FFT, especialmente no algoritmo de Cooley–Tukey, aproveita propriedades de simetria e periodicidade das funções senoidais para reduzir drasticamente essa quantidade de operações. Com isso, a complexidade passa a ser proporcional a $N \log_2 N$.

Na prática, para as mesmas 10 mil amostras, a FFT realiza aproximadamente 133 mil operações, tornando o processamento quase mil vezes mais rápido. 
Essa eficiência é essencial em aplicações modernas como processamento de áudio em tempo real, sistemas de comunicação sem fio, Wi-Fi, 5G e 
compressão de imagens e vídeos.


## Transformada-Z e a Estabilidade de Sistemas

Enquanto a Transformada de Fourier analisa apenas componentes senoidais, a Transformada-Z amplia esse conceito ao incluir exponenciais crescentes e decrescentes. Ela pode ser considerada a versão discreta da Transformada de Laplace.

A Transformada-Z é muito importante na análise de estabilidade de sistemas lineares invariantes no tempo (LTI). Nessa abordagem, o comportamento do sistema é estudado no plano complexo $z$ por meio da localização dos polos da função de transferência.

Para que um sistema seja estável no critério BIBO (Bounded-Input, Bounded-Output), todos os polos devem estar dentro do círculo unitário, isto é:

$∣z∣<1$

Fisicamente, isso significa que a resposta do sistema tende a diminuir ao longo do tempo. Quando um polo está fora do círculo unitário, a resposta cresce exponencialmente, tornando o sistema instável. Um exemplo prático seria o fenômeno de microfonia em sistemas de áudio. Já polos localizados exatamente sobre o círculo unitário produzem oscilações permanentes.


## Fenômeno de Aliasing

O aliasing, também chamado de mascaramento espectral, ocorre quando um sinal analógico é amostrado com uma frequência insuficiente.

Segundo o Teorema de Nyquist, a taxa de amostragem deve ser maior que o dobro da maior frequência presente no sinal:

$$
f_s \geq 2f_{max}
$$

Quando essa condição não é atendida, frequências altas passam a ser interpretadas como frequências mais baixas.

Um exemplo bastante conhecido acontece em vídeos de rodas de carros girando rapidamente. Dependendo da taxa de quadros da câmera, as rodas 
podem aparentar girar lentamente ou até mesmo no sentido contrário. Isso ocorre porque a câmera não consegue capturar corretamente a 
frequência real do movimento.

No áudio digital, o aliasing aparece como distorções metálicas e artificiais, causadas pelo “rebatimento” das frequências acima do limite
de Nyquist para dentro da faixa audível.


## Janelamento e Vazamento Espectral

Como a DFT trabalha apenas com sinais de duração finita, normalmente é necessário selecionar um trecho do sinal original para análise. 
Esse processo equivale a multiplicar o sinal por uma janela retangular, realizando um corte brusco no início e no final.

Quando esse corte acontece em pontos que não coincidem com ciclos completos da onda, surge o chamado vazamento espectral (spectral leakage). 
A DFT interpreta essa descontinuidade como frequências adicionais inexistentes, fazendo com que o espectro “se espalhe”.

Para reduzir esse problema, utilizam-se funções de janelamento suaves, como as janelas de Hamming, Hanning e Blackman. Essas funções diminuem 
gradualmente a amplitude do sinal nas extremidades, reduzindo as descontinuidades abruptas.

Entretanto, existe um compromisso importante: janelas que reduzem melhor o vazamento espectral acabam alargando o pico principal do espectro. 
Isso significa perder um pouco da capacidade de distinguir frequências muito próximas em troca de uma representação mais limpa e precisa do sinal.

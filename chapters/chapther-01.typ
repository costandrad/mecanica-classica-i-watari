#import "../styles.typ": *

= Introdução

#set heading(numbering: none)
== Exercícios (Página 15)

#set enum(start: 15)
+ Quanto um automóvel, movendo-se com uma velocidade constante $v_0$, aproxima-se de um cruzamento, o semaforo torna-se amarelo. O motorista pode paras o automóvel sem avançar pelo cruzamento, ou também pode tentar atravessá-lo antes que o semáforo mude para vermelho.

  #set enum(numbering: "a)", start: 1)
  + Se $Delta t$ é o intervalo de tempo que o semáforo permanece amarelo antes de mudar para vermelho, qual é a máxima distância do cruzamento ao automóvel, de maneira que o motorista consiga atravessar o cruzamento antre do semáforo tornar-se vermelho, mantendo a velocidade do automóvel em $v_0$?

    #solution([
      $
        D_(m a x) = v_0 Delta t
      $
    ])

  + O tempo de reação do motorista para tomar a decisão e pisar no freio é $tau$ e a máxima desaceleração do automóvel devida à frenagem é $a$. No momento que o semáforo tornou-se amarelo, qual é a menor distância do cruzamento ao automóvel de maneira que o motorista consiga parar sem avançar pelo cruzamento?

    #solution([
      Nesse caso, o motorista iniciamente percorrerá uma distância com velocidade constante $v_0$ pelo tempo de reação $tau$ iqual a $ d_1 = v_0 tau$. Depois disso, percorrerá uma distância $d_2$ dutante a frenagem desde a velocidade inicial $v_0$ até a velocidade final $v = 0$, imediatamente antes do cruzamento. Aplicando a equação de Torricelli, temos:

      $
        v^2 = v_0^2 - 2 a Delta s &arrow.double 0^2 = v_0^2 - 2a d_2\
                                  &arrow.double d_2 = frac(v_0^2, 2a)
      $

      Portanto, a mínima distância até o cruzamento será:
      $
        d = d_1 + d_2 = v_0 tau + frac(v_0^2, 2a)
      $
    ])

  + Determina a velocidade crítica $v_c$, em termos de $a$, $Delta t$ e $tau$, de maneira que as duas distâncias obtidas nos itens a) e b) acima coincidam. Este é o limite onte o motorista consegue tanto parar o automóvel sem avançar pelo cruzamento, quanto atravessá-lo antes do semáforo mudar para vermelho.
    #solution([
      $
        D = d &arrow.double v_0 Delta t = v_0 tau + frac(v_0^2, 2a) arrow.double Delta t  = tau + frac(v_0, 2a)\
        &arrow.double frac(v_0, 2a) = Delta t - tau \
        &arrow.double v_0 = 2 a(Delta t - tau)
      $
    ])

  + Mostre que, se $v_0$ for maior que a velocidade crítica determiada no item anterior, existe uma faixa de distância do cruzamento ao automóvel no qual o motorista não conseguirá parar o  automóvel sem avançar pelo cruzamento, nem atravessá-lo antes do semáforo tornar-se vermelho.

    #solution([

    ])


+ Uma barra de comprimento $l$ tem a extremidade $A$ apoiada numa parede vertical e a outra extremidade, $B$, apoiada no piso horizontal. Num dad instante, a extremidade $B$ é puxada na direção horizontal com uma velocidade constante $v_0$, no sentido de afastar-se da parede.

  #set enum(numbering: "a)", start: 1)
  + Mostre que o ponto médio da barra descreve um arco de circunferência de raio $l/2$ e centro $O$, sendo $O$ o ponto de cruzamento da parede vertical com o piso horizontal.

    #solution([
      
    ])

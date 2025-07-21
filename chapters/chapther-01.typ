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
      Conforme mostrado na @fig-prob-1.16, sejam $x$ e $y$ as coordenadas do ponto médio $M$. Aplicando o teorema de Pitágoas, temos:
      $
        x^2 + y^2 = (l/2)^2
      $<eq-p1.16a>

      Portanto, as coordenadas do ponto médio $M$ descrevem uma circunferência de raio $l/2$ e centro na origem $O = (0, 0)$.

      #figure(
        caption: [Diagrama do problema 1.16],
        cetz.canvas({
          import cetz.draw: *
          //let (x0, y0) = (2, 3)
          let L = 5
          //
          //let (xm, ym) = (x0/2, y0/2)
          //let y1 = y0 - L

          let (x, y) = (0, 0)
          let v0 = 2
          let T = L/v0
          let n = 8
          let dt = T/n


          let t0 = 5*T/n
          let x0 = v0 * t0
          let y0 = calc.sqrt(calc.pow(L, 2) - calc.pow(x0, 2))
          let theta = calc.atan2(y0, x0)
          let y1 = y0 - L
          let (xm, ym) = (x0/2, y0/2)


          // Eixos
          line((0,0), (x: 5))
          line((0,0), (y: 5))
          content((0, 0), anchor: "north-east", padding: 0.1)[$O$]
          // Barra
          group({
            rotate(theta, origin: (0, y0))
            line((0, y0), (0, y1), stroke: (3pt+blue))
          })

          circle((0, y0), radius: 2pt, fill: black, name: "A")
          content("A", $A$, anchor: "east", padding: 0.1)

          circle((x0, 0), radius: 2pt, fill: black, name: "B")
          content("B", $x_B$, anchor: "north", padding: .1)
          content("B", $B$, anchor: "south-west", padding: 0.1)



          line((x0, 0), (x0 + 1.5, 0), mark: (end: "stealth"), stroke: (1.5pt+black), name: "A-veloc")
          content("A-veloc.end", $v_0$, anchor: "south", padding: 0.1)

          (xm, ym) = (0, L/2)

          circle((0,0), radius: L/2, stroke: (dash: "dashed", paint: gray))
          circle((xm, ym), radius: 2pt, fill: red, stroke: none, name: "ym-inicial")
          content("ym-inicial", $l/2$, anchor: "east", padding: 0.1)
          for i in range(n) {
            x += v0 * dt
            y  = calc.sqrt(calc.pow(L, 2) - calc.pow(x, 2))
            (xm, ym) = (x/2, y/2)
            circle((xm, ym), radius: 2pt, fill: red, stroke: none, name: "xm-final")
          }
          content("xm-final", $l/2$, anchor: "north", padding: 0.2)

          (xm, ym) = (x0/2, y0/2)

          circle((xm, ym), radius: 2pt, fill: black, name: "M")
          content("M", $M$, anchor: "south-west", padding: 0.1)

          line((xm, 0), (xm, ym), (0, ym), stroke: (dash: "dashed"), name: "M-coord")
          content("M-coord.start", $x$, anchor: "north", padding: 0.1)
          content("M-coord.end", $y$, anchor: "east", padding: 0.1)
        })
      )<fig-prob-1.16>

      Na @fig-prob-1.16, destacamos em vermelho algumas das posições do ponto $M$ durante o movimento da barra, desde a posição inicial na vertical até a posilção final na horizontal.
    ])

  + Determine a velocidade do ponto médio da barra no instante em que o extremo $B$ está a uma distância $b < l$ da parede.

    #solution([
      
      
      Incialmente observemos que a componente $x$ do ponto $M$ está relacionada com a coordenada $x_B$ no ponto $B$ (que se move com velocidade $v_0$) pela seguinte relação: $x = frac(x_B, 2)$. Assim,
      $
        x = x_B/2 &arrow.double dot(x) = frac(dot(x_B), 2)\
                  &arrow.double dot(x) = frac(v_0, 2)
      $<eq-p1.16-dot-x>

      Dado que o ponto $M$ descreve uma trajetória no plano $x y$, cujas coordenadas $x$ e $y$ estão relacionadas pela @eq-p1.16a. Derivando essa equação com relação ao tempo, temos:

      $
        x^2 + y^2 = (l/2)^2 &arrow.double 2x dot(x) + 2y dot(y) = 0 \
                            &arrow.double dot(y) = - frac(x, y) dot(x)
      $<eq-p1.16-dot-y-1>

      Isolando $y$ de @eq-p1.16a e substituindo em @eq-p1.16-dot-y-1, temos:
      $
        dot(y) = - frac(x, sqrt((l/2)^2 - x^2))dot(x)
      $<eq-p1.16-dot-y-2>

      Substituindo $dot(x)$ de @eq-p1.16-dot-x em @eq-p1.16-dot-y-2, obtemos:

      $
        dot(y) = -frac(x, sqrt((l/2)^2 - x^2)) frac(v_0, 2)
      $<eq-p1.16-dot-y>
    ])Mostre que  $bf("v") = v bf(tau)$ e $bf("a") = a_t bf(tau) + frac(v^2, rho) bf("n")$, onde $v = frac(d s, d t)$ é a velocidade escalar; $a_t = frac(d^2 s, d t^2)$, a aceleração tangencial; $bf(tau) = frac(d bf("r"), d s)$, o vetor unitário tangente à trajetória; e, finalmente, $bf("n") = rho frac(d^2 bf("r"), d s^2)$, o vetor unitário normal à trajetória. Aqui, $s$ é o comprimento da trajetória, medido a partir da posição inicial e $rho$ é o raio da curvatura da trajetória no ponto em questão. Qual o siginificado do termo $frac(v^2, rho)$?

+ 

  #solution([

  ])


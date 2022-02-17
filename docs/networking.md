# Networking
Aqui é apresentado como funciona a parte de Networking dentro da OCI.

## VCN (Virtual Cloud Network)

É a rede privada e virtual da OCI assegurada por regras de firewalls e tipos de comunicação via *Gateways*.

Pode ser um serviço regional, está presente em uma **Region** mas pode se cruzar entre as **Availability Domains** presentes na Region.

### Espaço de Endereço

- Possui um CIDR range de /16 a /30
- Em cada range, são reservados **3 endereços IP**: os 2 primeiros e o último para o CIDR

### Gateways de Comunicação com a Internet

- **Internet Gateway** 
    - Acesso de forma pública a Web de forma bidirecional (De dentro para fora da VCN e vice-versa);
- **NAT Gateway**
    - Fornece NAT como um serviço tendo o tráfego de forma unidirecional (Da VCN para a internet). 
    - Por exemplo, SubRedes Privadas (Private Subnets) podem acessar a internet externamente mas o contrário não ocorre.
- **Service Gateway** 
    - Serviço da OCI para acessar outros recursos públicos da OCI de forma segura.
- **Dynamic Routing Gateway**
    - Serivço para redes VPN Site-to-Site com FastConnect
    - Ideal para acessar privado a redes internas e On-Premises
- Resumo dos serviços de Gateway:
    

### Subnet

- Parte de uma rede VCN onde cada VCN pode conter até **300 Subnets**.
- É onde os recursos ficam providenciados para acesso via internet.
- Duas formas: Pública ou Privada.

### Routing

#### Route Tables
- Especifica um bloco CIDR de Destino que possa acessar e uma Rota-alvo que corresponde ao bloco CIDR.
- Acesso a Internet, Redes On-Premises e Peered VCN

#### Peering

Serviço *multitenancy* com 2 modos:

- **Remote VCN Peering**
    - Conexão remota entre VCNs de duas **Regions** OCI distintas.
- **Local VCN Peering**
    - Conexão local entre VCNs da mesma **Region** OCI.

### Security

#### Security Lists (SL)
- Armazena regras de Firewall para controlar o que deve entrar (Ingress Rule) e o que deve sair (Egress Rule) de uma **Subnet** usando portas da rede, protocolos (como o TCP) e Endereço IP ou bloco CIDR como Destino ou Origem.

- Pode ser *Stateful* ou *Stateless*:
    - *Stateful* significa que o tráfego é permitido entrar com uma porta específica (por exemplo a porta 80), é permitido também a saída pela mesma porta e vice-versa. Ou seja, não precisa criar regra de saída do tráfego (Egress Rule).
    - *Stateless* ao contrário do *Stateful*, não permite o tráfego sem a regra de saída (Egress Rule).

#### Network Security Group (NSG)
- Recomendado pela Oracle para uso e funciona da mesma forma que a **Security List**.

- Sua maior diferença para a SL é que podemos apontar NSG como Destino ou Origem nas regras de entrada e saída de tráfego.

### Resumo ilustrado
![](../assets/img/topic3_img1.png)

## Load Balance (LB)

Um Load Balancer controla a carga gerada por um tráfego e distribui em diversas instâncias que estão numa **VCN**. 

Há dois tipos de LBs:

- Proxy Load Balancer: com tráfego controlado a nível TCP e HTTP (Camada 7 do modelo OSI)
![](../assets/img/topic3_img2.png)

- Network Load Balancer: Não-proxy (UDP e TCP) e agindo na camada 4 do modelo OSI. É muito mais rápido do que o Proxy LB.
![](../assets/img/topic3_img3.png)

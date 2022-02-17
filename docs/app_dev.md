# App Dev

Nessa seção é apresentado os serviços para auxiliar no desenvolvimento de aplicações, ou do inglês *Application Development*.

## Resource Manager

Serviço da OCI para Provisionar os próprios recursos de forma automática utilizando **IaC** (*Infra as Code*) para **Instalar, Configurar e Gerenciar**. 

Utiliza-se *Terraform* para montar um ambiente de desenvolvimento, homologação ou produção com seus recursos e dependências. Com o Terraform, podemos Criar, atualizar ou destruir esses ambientes.

Criamos uma *Stack* usando uma arquivo Terraform (vindo de qualquer fonte) para aplicar e provisionar os recursos

Demonstração:
![](../assets/img/topic8_img1.png)

## Functions

Serviço **Serverless**, também chamado de **Function as-a-Service** ou simplesmente FaaS, onde podemos executar código - nas linguagens que são permitidas - sem se preocupar com a infraestrutura. A infra é provisionada pela Cloud e não nos preocupamos com isso, apenas na execução do código.

Uma **Function** é executada por **Event-Driven** via algum gatilho (Trigger). Essa *Trigger* podendo ser, por exemplo, uma requisição HTTP ou agendada (*Schedule*). 

É paga pelo uso, ou seja, o custo de uma Function é dado pela quantidade de vezes que ela foi invocada.

Observação: na OCI é necessário criar uma Application, que é um conjunto de Functions para poder criar e gerenciar as Functions.

## OKE - Oracle Kubernetes Engine

É um serviço para **Kubernetes** oferecido pela OCI para orquestração de containers Docker. O serviço abrange uma região mas cobrindo todos os Faults Domain da Region.

Exemplo de como funciona o OKE:
![](../assets/img/topic8_img2.png)

## OCIR - Oracle Cloud Infraestructure Registry

Serviço de **Container Registry** para guardar, gerenciar e compartilhar uma imagem de alguma aplicação ou sistema. 

Para Docker, simplificando a distribuição e facilita *Workflows* de desenvolvimento para produção.

Cria-se repositórios - públicos ou privados - para armazenamento e agrupamento de imagens.

Fluxo de uma imagem com o OCIR:
![](../assets/img/topic8_img3.png)

## API Gateway Service

É um serviço para fornecer o padrão API Gateway na OCI. Fazendo com que um cliente se conecte a um único endpoint, o Gateway, que é configurado para redirecionar ao endpoint verdadeiro de uma API.

Atua também para gerenciamento de Autenticação e Autorização para acessar cada API através de SLA, log e Policies.

Exemplo de funcionamento do API Gateway
![](../assets/img/topic8_img4.png)
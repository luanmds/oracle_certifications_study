# Security

Aqui é apresentado os serviços de segurança da OCI.

## Casos de Uso e tipos de proteção OCI

Segue abaixo um comparativo entre os casos de uso que temos em cloud e os serviços de Segurança da OCI:

![](../assets/img/topic7_img1.png)

## Cloud Guard

Se trata de um serviço com o objetivo de **monitorar e identificar problemas de segurança** nos recursos da OCI através da coleta de seus dados.

## Gerenciamento do Cloud Guard

Pode ser configurado desde o *Root Compartment* herdando a visibilidade de todos os outros compartiments e recursos. Já possui políticas de segurança prontas e pode haver configurações para personalizá-las.

Temos Fases para o gerenciamento, são elas:

1. O Cloud Guard especifica **Targets** (Alvos) que são os *recursos* e *Compartments* que devem ser monitorados.
2. Temos os **Detectores** para **identificar Issues**, ou seja, detectar problemas de segurança nos recursos monitorados.
3. Com isso, o próximo passo é encontrar **potenciais problemas** de segurança e notificá-los ao usuário.
4. Por último, temos a etapa dos **Responders** que são ações corretivas para os problemas encontrados.

Exemplos do gerenciamento:
![](../assets/img/topic7_img2.png)

## Security Zones

É um serviço que classifica um *Compartment* como um local com **Recipes** que são Políticas de Segurança que negam operações realizadas dentro de tal Compartment e notificam o usuário que houve uma Violação na Política.

As **Recipes** podem ser aplicadas nos recursos como Networking, Storage, Compute, Database, etc.

Exemplo de uso:
![](../assets/img/topic7_img3.png)

## Security Advisor

É um serviço de combinação das funcionalidades presentes do *Cloud Guard*, *Security Zones* e outros serviços de segurança.

Oferece serviços para criação de regras de segurança para os seguintes recursos: *Object e File Storage, Virtual Machine e Block Volumes*

## Vulnerability Scanning

## Vault

Serviço da OCI para **centralizar o gerenciamento de Keys e Credentials**, removendo a necessidade de expor Keys e Secrets em código ou arquivos de configuração.

### Proteção de Keys
Uma Key - *Plain Text* que pode ser encriptado ou desencriptado - pode ser integrada com serviços OCI e serem rotacionadas para aumentar a proteção. 

A encriptação da Key dada pelos seguintes algoritmos:
- RSA;
- AES;
- ECDSA.

A Key é protegida de dois modos:

- **Software**
    - Aqui a chave-mestre é armazenada em um Servidor.
    - Pode ser exportar para fora do Servidor.
    - Operações permitidas por Clients (Serviços externos que podem manipular a chave-mestre).
- **Hardware Security Modules (HSM)**
    - Aqui a chave-mestre de Segurança é armazenada no próprio dispositivo HSM.
    - A chave-mestre não pode ser exportar do HSM.

Exemplo de fluxo de Encriptação e Desencriptação de uma Key pelo Vault:
![](../assets/img/topic7_img4.png)


## WAF - Web Application Firewall

É um serviço que age na camada 7 do padrão OSI para proteção de aplicações na nuvem. A proteção consiste em ataques a aplicação como SQL Injection e Cross-site Scripting Exploits.

O serviço age como um interceptador de tráfego HTTP/S e aplica filtros permitindo auditar ou bloquear uma requisição e garantir a proteção, além disso guarda os Logs em Object Storages para consulta futura.

![](../assets/img/topic7_img5.png)

## Bastion

Serviço da OCI para prover acesso a recursos privados (como VMs e Databases) em uma VCN.

Utiliza o protocolo RDP, padrão do Bastion, ou SSH para realizar a conexão com a máquina privada através de uma Session.

Exemplo de acesso com Bastion
![](../assets/img/topic7_img6.png)
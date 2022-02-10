# Databases

A seguir é demonstrado os tipos de Banco de Dados presentes na OCI.

## Autonomous Database

É uma base de dados que utiliza **Machine Learning** com uma **automatização completa** da infraestrutura, passando pela Database e chegando até a parte operações (*Center Operations*).

Gerencia 

Essa automação inclui serviços como:
- Backups;
- Recovery (recuperação tanto da base de dados quanto dos dados);
- Monitoramento e Segurança (Fault Tolerance);
- Updates (mantendo sempre a versão mais nova);
- Tunning;
- Scale-Up and Scale-Out;
- entre outros...

### Tipos de Workloads

São Workloads suportados pelos provisionamentos do Autonomous Database.

- **Auto Transaction Processing (ATP)**
    - Para ambientes transacionais
- **Autonomous Data Warehouse (ADW)**
    - Para cenários de análises de dados

### Modos de Provisionamento

- **Shared**
    - **Compartilha** a infraestrutura de Exadata enquanto a Oracle realizar o Deploy e o gerenciamento da infra.
- **Dedicated**
    - **Hardware exclusivo** para o Exadata.

### Resumo
![](../assets/img/topic6_img1.png)


## Database Systems (DB Systems)

São serviços em Cloud com **edições, versões distintas e camadas de opções de licença**. São disponibilizados em formas de VMs (Virtual Machine) ou BMs (Bare Metal).

Alguns são:
![](../assets/img/topic6_img2.png)

### Options para DB Systems

- **Virtual Machine** com configurações:
    ![](../assets/img/topic6_img3.png)

- **Bare Metal Database**
    ![](../assets/img/topic6_img4.png)

### Características de DB Systems

- Gerenciados: Exadata (Autonomous Database), RAC, Bare Metal e VM
- Automatização do ciclo de vida: Provisionamento, Patching, Restore e Backup
- Alta Disponibilidade com Disaster Recovery
- Escalabilidade, podendo ajustar a quantidade de CPU e Armazenamento
- Segurança com autenticação (IAM, VCN) e encriptação de dados e backups
- BYOL - Bring Your Own License 


## MySQL Service

Serviço de provisionamento automático, barato e escalável de um banco de dados MySQL.

### Tipos de Provisionamento
- **High Availability**
    - para ambientes produtivos, failover e zero data loss graças a replicação de dados em 3 nós
- **Standalone**
    - instância simples para ambientes de Desenvolvimento e Testes

## NoSQL Database Cloud Service

Serviço totalmente gerenciado pela Oracle. Com baixa latência e mudança dinâmica das capacidades de armazenagem baseado nos *Workloads*.

Seu Modelo de Dados (Data-Model) pode ser:
- Document;
- Key/Value;
- Table Fixed-Schema.

Possui API para realização da integração com diversas ferramentas de desenvolvimento.
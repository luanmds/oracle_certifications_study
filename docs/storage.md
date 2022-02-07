# Storage

Aqui é apresentados os serviços de armazenamento da OCI e qual o objetivo de cada um.

## Local NVMe

Armazenamento local. SSD presente ao criar VMs chamado de Boot Volume.

### Configurações

- Capacidade
    - 6.4-25.6 TB por VM
    - 51.2 TB por BM
- Performance
    - Shape-defined, 200k-3MM IOPS

## Object Storage

Plataforma de armazenamento de alta performance onde os Dados são gereciados como **Objects**.

Serviço é Regional e Público com múltiplas camadas de armazenamento. Mas tem-se *acesso privado* através de recursos da OCI (Exemplo: *Compute Instances*).

Seu uso é ideal para: 
- Dados não-estruturados como Logs, Videos, Imagens, etc.
- Arquivos de Big Data / Data Analytics
- Arquivar dados ou guardar Backups

### Anatomia de um Object
- é formado por uma estrutura par de *Key/Value*, onde a *Key* é o nome dado ao Object (Exp.: nome do arquivo) e o *Value* é o arquivo em si.

- um Object é armazenado em um **Bucket** com a estrutura *Flat Hierarchy*, [para mais detalhes clique aqui](https://en.wikipedia.org/wiki/Flat_organization). O **Bucket** deve ter-se um nome único dentro de um *tenancy*. 

- possui um *Namespace*, uma entidade lógica a nível acima dos **Buckets / Objects** se tornando um nome único global.

![](../assets/img/topic5_img1.png)


### Camadas (Tiers) do Object Storage 

- **Standard (Hot)** 
    - tipo de armazenagem para arquivos que tenham acesso rápido e frequente 
    de forma imediata.
    - possui recuperação instântanea.

- **Infrequent Access (Cool)**
    - tipo de armazenagem ideal para dados que possuem acesso pouco frequentes.
    - seu custo é menor comparado ao *Standard*.
    - requer uma retenção mínima de 31 dias para acessar
    - possui taxas de recuperação (Retrieval Fees)

- **Archive Storage (Cold)**
    - para dados raramente acessados (como Backups)
    - requer uma retenção mínima de 90 dias para acessar
    - necessita de 1 hora para restaurar o arquivo e 24 horas para realizar seu download
    - esse Tier reduz os custos em até 60% se comparado com o Standard (Hot)

### Configurações

- Capacidade
    - 10TB/object
- Performance
    - Internet-scale

## Block Volume

São Volumes (SSDs) que são ligados (attach) em instâncias Compute (VMs, BMs, etc).

Com o objetivo de *persistir dados de forma a serem duráveis*, em outras palavras, de forma salvar dados além do ciclo de vida das instâncias e podemos fazer diversas cópias para manter de forma durável.

Há o serviço **Cross Region Replication** para replicação de Block Volumes para outras regiões para diversos casos como proteção contra Disaster Recovery, Migrações, etc.

Podemos anexar ou remover - **Attach e Detach**, respectivamente - esses Discos das instâncias. Assim os dados presentes em um Block Volume permanencem, mesmo após a exclusão de uma instância.

São, obrigatoriamente,  encriptados por padrão por *Keys da OCI* ou pode ser encriptados por uma chave do próprio cliente.

Um único Block Volume pode ser atrelado a diversas instâncias.

### Camadas (Tiers) do Block Volume

- **Basic**
    - Sequencial grande para Workloads I/O como Streaming.
    - 2 IOPS/GB.
- **Balanced**
    - Escolha balanceada para I/O aleatórias como Boot Disks.
    - 60 IOPS/GB.
- **Higher and Ultra Higher Performance**
    - para maioria das demandas de I/O em Workloads
    - Higher: 75 IOPS/GB
    - Ultra: 90-225 IOPS/GB

### Configurações

- Capacidade
    - 50GB to 32TB/vol
- Performance
    - User-defined, 100-300k IOPS

## File Storage

Tipo de Armazenamento hierárquico com coleções de documentos organizados dentro de diretórios nomeados. Distribuidos por padrões como **NFS** (Linux) e **SMB** (Windows) permitindo criar, deletar, compartilhar e ler os arquivos.

Exemplo: 
![](../assets/img/topic5_img2.png)

Podemos usá-lo para:
- compartilhamento de arquivos dentro de um determinado ambiente Enteprise (Serviço EBS).
- para sistemas de arquivos para qualquer propósito(General Purpose)
- Microservices, Containers, HPC, etc

### Como funciona

- Pode ser utilizado para compartilhar armazenamento com diversas instâncias pois possui suporte a NFS v.3 para distribuição dos arquivos.

- Proteção dos dados com *Snapshots*.

- Encriptação in-transit para a distribuição dos arquivos.
# Compute 

Serviço da OCI para providenciar Virtual Machines (VMs) e Servidores Bare Metal.

# Compute Instances 

## Flexible Shapes

Ferramenta para selecionar o tipo certo de máquina. Pode-se escolher OCPUs e Memória RAM para a VM.

Podemos escolher também o tipo do processador: Intel, AMD ou ARM (Ampere)

## Tipos de Instâncias

Há 3 tipos de instâncias:

- **Virtual Machines (VM)**
    - Fornece controle do conteúdo da máquina virtual.
    - Hardware e infraestrutura já vem provisionados.
    - É um modelo *multi-tenant* e compartilha Hardware com VMs de outras Tenancies.
- **Bare Metal (BM)**
    - Máquina com controle total. 
    - Controlando tanto o hardware quanto a parte de virtualização.
    - Modelo *single-tenant*
- **Dedicated VM Hosts (DVH)**
    - Bare Metal com virtualização dedicado a um cliente, sem compartilhamento de Tenant
    - Model *single-tenant*

![](../assets/img/topic4_img1.png)

## Composição de uma instância na OCI

- Ligamos uma instância a uma Subnet através de um **Virtual Network Interface Card**. E com isso temos um IP privado da VM.
- Uma instância depende um Boot Volume Disk(geralmente com uma imagem do Sistema Operacional) e pode ter um Boot Disk para Dados.

![](../assets/img/topic4_img2.png)

## Scaling 

Possui uma ferramenta para **Autoscaling** (Horizontal Scaling) possibilitando Scale-out ou Scale-In de VMs, sem custos a mais.

É útil para manter algum sistema ou aplicação "no ar" onde se uma VM falha, outra exatamente igual pode ser criada.

Passos para ativar o **Autoscaling**:

1. Cria-se um *template* de uma VM. Esse *template* possui dados da imagem do SO, shapes, Storage, Subnet, VNIC, etc.
2. Com esse *template* utilizamos para criar um *Instance Pool* que é uma coleção de instâncias gerenciáveis (Stop, Start, Terminate) até em Availability Domains diferentes. 
3. Com o *Instance Pool* aplica-se regras de políticas de auto-escalonamento 

Resultado do Autoscaling:

![](../assets/img/topic4_img3.png)


## OS Management Service

Serviço para gerenciamento de imagens de Sistemas Operacionais (Oracle Linux e Windows Server). Se divide em dois tipos abaixo. Ideal para **SysAdmins**.

### Patch Management

Serviço Automático de gerenciamento de *Patch Release* onde são liberados para correção de bugs, melhorar a performance, adicionar novos recursos, etc.

### Package Management

Serviço Simplificado de gerenciamento de pacotes. Onde instala, realizar Patches e remove esses pacotes em máquinas

# Tipos de Custos OCPU em OCI Compute

- **On-Demand (padrão)**: Core dedicado e alta disponibilidade (preço alto)
- **Capacity Reservation**: Pré-alocação de recursos. Mais barato que On-Demand.
- **Preemptible Instances**: Instância que pode terminar a qualquer momento. Custo é 50% menor que o On-Demand.
- **Burstable Instances**: Baseia na fração de um core. Não garante disponibilidade. É o mais barato.

![](../assets/img/topic4_img4.png)
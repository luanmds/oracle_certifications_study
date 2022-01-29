# IAM - Identity and Access Management

Serviço de gerenciamento granular de identidade e acesso entre usuários e recursos. 

## Conceitos básicos

- Temos os **Users** (usuários da plataforma OCI);
- Users podem ser agrupados em **Groups** voltados para acessar recursos específicos na plataforma (Exp.: Admins, Network Admins, Database Managers, etc);
- **Policies** são aplicadas em **Groups** para controlar as permissões de um grupo específico de usuários. Essas permissões podem ser Escrita ou Leitura de algum recurso, Alterar/Atualizar um recurso bem específico (exp.: Alterar apenas uma instância de banco de dados), etc;
- As **Policies** são inseridas em **Compartments**
- O **Tenancy** é o equivalente a uma conta da OCI mas também é um *root compartment*.

![](../assets/img/topic2_img1.png)

## Compartments

Um **Compartment** é um agrupador de recursos da OCI. 

Podemos aninhar Compartments - criando "sub-compartments" - para reorganizar os recursos dentro daquele "Compartment Pai".

    Podemos utilizá-lo para organizar recursos por ambiente 
    como DEV, HML e Prod, ou por Projeto, Infraestrutura, etc;

Recursos em Compartments separados podem interagir uns com os outros.

Cada Compartment pode ter seu custo separado e gerado um próprio Budget para facilitar a adminstração de custos.

## Authentication (AuthN) and Authorization (AuthZ)

### Principals

São entidades que solicitam interação com recursos da OCI. Essas entidades são os **Groups** e Instâncias de recursos.

### Authentication 

Demonstra quem é você para o sistema (Who are you?). 
Pode-se autenticar via:

- Username e password
- API Signing Key (Exp.: SSH)
- Auth Tokens
- MFA

### Authorization

Nos diz quais permissões um usuário (você) pode ter. Essas permissões são dadas vias **Policies**. 

    Políticas podem ser associadas tanto a um Compartment quanto ao Tenancy. 
    Nesse último, a política é aplicada a todos dentro da Tenancy.

As políticas são criadas por uma linguagem "humanizada" na OCI.

![](../assets/img/topic2_img2.png)

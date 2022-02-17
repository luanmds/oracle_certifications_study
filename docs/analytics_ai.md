# Analytics and AI

Nessa seção veremos serviços e recursos da OCI para gerenciar a análise de Dados.

## Data Integration

É um serviço **ETL (Extract, Transform, Load), NoCode e com uma interface Drag and Drop para grandes volumes de dados.**

Com esse serviço é possível criar fluxo de dados, além de gerenciar, armazenar ou compartilhar artefatos de desenvolvimento. 

Também é possível utilizar o **Spark ETL, ferramenta em que o serviço se baseia**.

Possui diversos conectores para base de dados (até on-premises).

### Workflow

Seu workflow funciona nos seguintes passos:

1. Ingest Data:
    - Ingere dados de múltiplas fontes como arquivos e databases (como MySQL, NoSQL, Autonomous DB, etc) em diversos formatos como: JSON, AVRO, PARQUET, etc.
2. Register Data Assets:
    - Registro de lista com grande quantidade dados na tela

## Data Flow

Serviço para **carregar e executar aplicações feitas em Apache Spark de forma escalável e totalmente gerenciável pela OCI (*Serverless*)**.

Seu custo é pela infraestrutura utiliza e não pelo uso do serviço.

### Capacidades

#### Nível Usuário
- Gerencia aplicações Spark, dependências e outros recursos no mesmo lugar.

- Possui um **repositório central para Data Flow Apps**, com isso é possível Gerenciar e pesquisar por Apps publicados.

- Captura e armazena todas as saídas da aplicação (Logs, dados, estatísticas) de forma segura e possui acesso a Spark UIs.

#### Nível Administrador
- Controle dos acessos aos Apps e ao serviço através das Policies no IAM.

#### Nível Infraestrutura
- Alta-Performance sob demanda (on-demand), Clusters podem parar e iniciar automaticamente
- Armazenamento também escalável com custo controlado e dados encriptados.

#### Nível de Segurança
- Utilização da OCI IAM para controle de acesso.


## Data Catalog

Serviço de Catálogo de Dados da OCI. Ajuda a organizar e, claramente, catalogar os dados para auxiliar na parte de Analytics.

### Capacidades
- Coleta de Metadados técnicos de forma automatizada para agrupar arquivos relacionados em DataLakes. Pode coletar de diversas fontes (Database SQL e NoSQL, Autonomous DB, Kafka, Object Storage, etc)

- Curadoria dos Metadados utilizando Glossários de Negócio com Termos e Categorias, Tags para anotações, Vinculos ativos a termos comerciais.

- Buscar e Filtrar com base em nomes técnicos, termos comerciais, tags e propriedades personalizadas. Pode buscar também por hierarquia do sistema.

- Integrado usando REST API e SDK 

### Resumo Data Catalog

![](../assets/img/topic10_img1.png)

## Data Science

Serviço para realização de Data Science na OCI e explorar os dados na Cloud.

### Conceitos

- **Colaborativo**: Interface orientada a Projetos onde vários times possam trabalhar ao mesmo tempo com conjuntos de fluxo de trabalho de modelagem de ponta-a-ponta;
- **Integração**: Possui integração com os serviços da OCI Stack como Functions, Data Flow, ADW e Object Storage;
- **Open Source**: suporte a ferramentas de código aberto Python como Jupyter, Keras, TensorFlow, Pandas, etc.

### Características

- Serviço **totalmente gerenciado pela OCI (PaaS)** trabalhando com CPU ou GPU;
- **Projetos colaborativos** centralizados e organizados para o trabalho da equipe;
- Construção e Desativação de Notebooks, chamado de *Notebook Sessions*, com bibliotecas pré-instaladas para análise em Python;
- Uso da SDK para gerenciar tarefas de Data Science facilmente e rapidamente;
- Controle de acesso via OCI IAM.

### Jobs

Possui um serviço CI (Continuous Integration) chamado Jobs para automatizar e agendar a execução dos Notebooks.

![](../assets/img/topic10_img2.png)
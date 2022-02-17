# Observability and Management

Aqui é apresentado os Serviços utilizados para Observabilidade, monitoramento e *logging* para gerenciamento de recursos e aplicações na OCI.

## Integrated Platform

Há um conjunto de serviços integrados - que são **Mult-Cloud e On-Premises** - que forma uma Plataforma para gerenciar aplicações e recursos da OCI. Segue o desenho: 

![](../assets/img/topic9_img1.png)

## Monitoring

Serviço que **coleta dados raw de métricas** de aplicações/serviços do cliente e recursos da OCI para agregar esses dados. Os dados das métricas podem ser visualizados utilizando o *Console da OCI, APIs, SDK, Ferramentas de Monitoramento externas* (como Zabbix).

Com as métricas também possível criar **Alarms** para notificar o cliente quando algo em algum recurso ou aplicação estiver errado. Por Exemplo, o limite de memória Ram ou utilização da CPU em uma VM.

Segue um desenho resumindo, em Nível Alto, como funciona o serviço:

![](../assets/img/topic9_img2.png)

### Metrics

Com as métricas, é possível **mensurar e monitorar a saúde, capacidade e performance** dos recursos.

### Alarms

É um serviço para alertar sobre algo através de uma *Trigger* ou condição (Verdadeira/Falsa) que é *gerenciado pelo Notification Service*.

Esquema dos Alarmes:
![](../assets/img/topic9_img3.png)

## Logging

Serviço Cloud Native para simplificar a inserção, gerenciamento e análise de Logs de diversas fontes (Databases, aplicações, etc).

### Caracteristicas

- Gerenciamento Centralizado
- Ações baseadas em Regras 
- Utiliza Padrões de código aberto (Standards)
- Tipos de Logs como Audit Log, Service Log e Logs Customizados

## Logging Analytics

Serviço de Logging para **Analisar logs utilizando Machine Learning** de forma mais interativa e profunda. 

Utiliza-se diversos tipos de gráficos para reproduzir as análises de um conjunto de logs

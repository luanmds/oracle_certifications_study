# Arquitetura OCI

Baseada em 7 pilares como na imagem abaixo:
![](../assets/img/topic1_img1.png)


## Regions 

Área geograficamente localizada, possui 1 ou mais **Avaliablity Domains**

### Availability Domains (AD)

- AD's não compartilham infraestrutura física
- Disponibilidade de Falha Independente
- Entre os AD's de uma Region há baixa latência e alta banda
- Remote Disaster Recovery
- Cada AD possui 3 Fault Domains.
    
### Fault Domains (FD)

- Possui objetivo, dentro de cada Availability Domain, de prevenir falhas de hardware
- FD não compartilha "single points" de falha de hardware (também podemos chamar de nó dentro do AD)
- Ajudam a diminuir as falhas de servidor ao máximo possível
- Podemos isolar nossos recursos (VMs, DBs...) em cada FD para evitar que todos recursos fiquem fora do ar

![](../assets/img/topic1_img2.png)
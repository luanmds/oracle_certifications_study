# Estudos Certificação Oracle Cloud Infrastructure

## Tecnologias envolvidas

- Docker / Docker Compose  
- MkDocs Material - https://squidfunk.github.io/mkdocs-material
- Linguagem Markdown - https://www.markdownguide.org/

## Para fazer funcionar

### Como Docker Container

- Abrir o terminal na pasta raiz do projeto e rodar o seguinte comando:
    ```cmd
    docker-compose up
    ```
- Abrir seu browser favorito e acessar: http://localhost:80

### Na própria máquina

- Rodar o comando para instalar as dependências: 
    ```cmd
    pip install -r requirements.txt
    ```
- Rodar o comando para iniciar o servidor:
    ```cmd
    mkdocs serve --dev-addr=0.0.0.0:80
    ```
- Abrir seu browser favorito e acessar: http://localhost

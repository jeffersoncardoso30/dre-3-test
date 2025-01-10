# Apache Airflow

[![Airflow](https://img.shields.io/badge/Apache%20Airflow-017CEE?style=plastic&logo=Apache%20Airflow&logoColor=white)](https://airflow.apache.org/)
[![License](https://img.shields.io/:license-Apache%202-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0.txt)
[![PyPI - Python Version](https://img.shields.io/pypi/pyversions/apache-airflow.svg)](https://pypi.org/project/apache-airflow/)
[![Docker Compose](https://img.shields.io/badge/Docker%20Compose-2496ED?style=flat&logo=docker&logoColor=white)](https://docs.docker.com/compose/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?logo=postgresql&logoColor=white)](https://www.postgresql.org/)

<picture width="500">
  <img
    src="https://github.com/apache/airflow/blob/19ebcac2395ef9a6b6ded3a2faa29dc960c1e635/docs/apache-airflow/img/logos/wordmark_1.png?raw=true"
    alt="Apache Airflow logo"
  />
</picture>

O Apache Airflow é uma plataforma open-source para a criação, agendamento e monitoramento de workflows programáveis. Em termos simples, é uma ferramenta que permite automatizar, programar e acompanhar processos ou pipelines de dados de maneira eficiente e visual.

## Índice

- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
  - [Configuração do Arquivo `.env`](#configuração-do-arquivo-env)
  - [Configuração do Arquivo `init`](#configuração-do-arquivo-init)  
  - [Passos de instalação](#passos-de-instalação)
- [Componentes Utilizados](#componentes-utilizados)
- [Uso](#uso)
- [Licença](#licença)
- [Autores](#autores)
- [Agradecimentos](#agradecimentos)

### Pré-requisitos

Conforme pré-requisitos orientados pela [airflow](https://airflow.apache.org/docs/apache-airflow/stable/installation/prerequisites.html), certifique-se de ter os seguintes softwares instalados:
#### [Docker](https://www.docker.com/) 
#### [Docker Compose](https://docs.docker.com/compose/)
#### [Git](https://git-scm.com/)

#### [Python](https://www.python.org/) : 3.8, 3.9, 3.10, 3.11, 3.12

#### Databases:

- [PostgreSQL](https://www.postgresql.org/) : 12, 13, 14, 15, 16

- [MySQL](https://www.mysql.com/) : 8.0, Innovation

- [SQLite](https://www.sqlite.org/) : 3.15.0+

#### [Kubernetes](https://kubernetes.io/pt-br/) : 1.26, 1.27, 1.28, 1.29, 1.30


## Instalação

Para instalar o projeto, siga as etapas abaixo:

### Configuração do Arquivo `.env`

Antes de iniciar, você precisa configurar o arquivo `.env` com suas credenciais e configurações. Crie um arquivo `.env` na raiz do projeto e adicione as seguintes variáveis de ambiente:

```plaintext
# Configurações do banco de dados
POSTGRES_USER=
POSTGRES_PASSWORD=
AIRFLOW_USER=
AIRFLOW_PASSWORD=

# Configurações do Airflow
AIRFLOW_UID=
AIRFLOW_WWW_USER_USERNAME=
AIRFLOW_WWW_USER_PASSWORD=
```

### Configuração do Arquivo `init`

Após configurar o arquivo `.env`, você deve configurar o arquivo `init.sql` com o usuário e a senha do Airflow para conectar ao banco de dados Postgres.

### Passos de instalação

1. Clone o repositório:

```plaintext
git clone https://github.com/jeffersoncardoso30/dre-3-test
cd dre-3-test
```
2. Instale as dependências e inicie o projeto com Docker Compose:
```plaintext
docker-compose up --build
```
## Componentes Utilizados

Este projeto utiliza os seguintes componentes:

### Airflow

- **[Apache Airflow](https://airflow.apache.org/)**: Plataforma de fluxo de trabalho programável para agendar e monitorar workflows.
  - **Web Server:** Interface web para gerenciar DAGs.
  - **Scheduler:** Planeja e distribui tarefas.
  - **Worker:** Executa tarefas agendadas.
  - **Triggerer:** Monitora eventos e dispara tarefas.

### Banco de Dados

- **[PostgreSQL](https://www.postgresql.org/)**: Banco de dados relacional utilizado para armazenar metadados do Airflow.

### Cache e Broker de Mensagens

- **[Redis](https://redis.io/)**: Utilizado como broker de mensagens para o Celery Executor do Airflow.

## Uso

### Acesso aos Serviços
 
Airflow Webserver: Acesse a interface web do Airflow em http://localhost:8080

#### Credenciais

- **Usuário**: conforme definido na variável `AIRFLOW_WWW_USER_USERNAME`
- **Senha**: conforme definido na variável `AIRFLOW_WWW_USER_PASSWORD`


### Upload de uma DAG no Airflow

Para fazer o upload de uma DAG no Airflow, siga os passos abaixo:

1. **Crie o Diretório para DAGs**:
   - Certifique-se de que existe um diretório `dags` configurado no seu projeto Airflow.

2. **Escreva o Arquivo da DAG**:
   - Crie um arquivo Python no diretório `dags` com a definição da sua DAG. 

3. **Realize o Upload da sua DAG**:
   - Agora basta realizar o upload da sua DAG para o diretório `dags`. 

## Licença
Este projeto está licenciado sob a Licença Apache 2.0. Veja o arquivo [LICENSE](https://github.com/jeffersoncardoso30/dre-3-test/blob/main/LICENSE) para mais detalhes.

## Autores
Jefferson Cardoso - [@github](https://github.com/jeffersoncardoso30)

## Agradecimentos
Gostaria de expressar meus agradecimentos à Pismo. Este desafio se revelou extremamente interessante, pois pequenas correções abriram portas para inúmeras oportunidades de melhorias no ambiente.

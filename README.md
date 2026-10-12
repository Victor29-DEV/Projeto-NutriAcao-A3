# Sistema de Gestão de Doações e Controle de Estoque

![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Concluído-success?style=for-the-badge)
![Acadêmico](https://img.shields.io/badge/Projeto-Acadêmico-blue?style=for-the-badge)

## 📌 Sobre o Projeto
Este repositório contém o script SQL para a criação e alimentação de um banco de dados relacional voltado à gestão de doações, controle de estoque de alimentos e rastreabilidade de distribuições. 

Desenvolvido como projeto acadêmico para o curso de Ciência da Computação, o foco principal desta modelagem é garantir a consistência das operações de CRUD, a integridade referencial entre as entidades e construir uma base teórica sólida para o tratamento e análise de dados em cenários de impacto social.

## 🗄️ Modelagem de Dados
A arquitetura do banco foi estruturada para refletir as regras de negócio de uma central de distribuição ou ONG, priorizando a normalização e a precisão na rastreabilidade dos itens. O esquema é composto pelas seguintes tabelas principais:

* **Usuario:** Gerencia os perfis de acesso e categorização das entidades envolvidas (Doadores, Funcionários e Instituições receptoras).
* **item_estoque:** Controla o inventário, categorizando alimentos (perecíveis, não perecíveis, mistos), volumes e monitoramento rigoroso de datas de validade.
* **distribuicao:** Registra as saídas e a logística de entrega, garantindo a rastreabilidade das rotas.
* **detalhe_distribuicao:** Tabela associativa que vincula os itens específicos do estoque às distribuições registradas, permitindo escalabilidade na análise de volume de dados.



1. Clone este repositório em sua máquina local:
   ```bash
   git clone [https://github.com/SeuUsuario/nome-do-repositorio.git](https://github.com/SeuUsuario/nome-do-repositorio.git)

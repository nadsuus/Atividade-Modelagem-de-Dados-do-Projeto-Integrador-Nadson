# 5. Dicionário de Dados

Este dicionário descreve tabelas e colunas do Modelo Relacional do SmartFit Pro.

| Tabela            | Coluna             | Tipo         | PK/FK                 | Descrição                              |
| ----------------- | ------------------ | ------------ | --------------------- | -------------------------------------- |
| **usuario**       | id                 | VARCHAR(255) | PK                    | Identificador único do usuário         |
|                   | nome               | VARCHAR(255) | —                     | Nome completo do usuário               |
|                   | email              | VARCHAR(255) | —                     | Endereço de e‑mail do usuário          |
|                   | data\_nascimento   | DATE         | —                     | Data de nascimento do usuário          |
| **academia**      | id                 | VARCHAR(255) | PK                    | Identificador único da academia        |
|                   | nome               | VARCHAR(255) | —                     | Nome da academia                       |
|                   | endereco           | VARCHAR(255) | —                     | Endereço completo da academia          |
|                   | telefone           | VARCHAR(255) | —                     | Telefone de contato da academia        |
| **checkin**       | id                 | VARCHAR(255) | PK                    | Identificador do registro de check‑in  |
|                   | usuario\_id        | VARCHAR(255) | FK → usuario.id       | ID do usuário que fez o check‑in       |
|                   | academia\_id       | VARCHAR(255) | FK → academia.id      | ID da academia onde ocorreu o check‑in |
|                   | data\_hora         | DATETIME     | —                     | Data e hora do check‑in                |
|                   | latitude           | DECIMAL(9,6) | —                     | Latitude do local do check‑in          |
|                   | longitude          | DECIMAL(9,6) | —                     | Longitude do local do check‑in         |
| **plano\_treino** | id                 | VARCHAR(255) | PK                    | Identificador único do plano de treino |
|                   | usuario\_id        | VARCHAR(255) | FK → usuario.id       | ID do usuário dono do plano            |
|                   | nome               | VARCHAR(255) | —                     | Nome descritivo do plano de treino     |
|                   | data\_criacao      | DATETIME     | —                     | Data de criação do plano               |
| **exercicio**     | id                 | VARCHAR(255) | PK                    | Identificador único do exercício       |
|                   | nome               | VARCHAR(255) | —                     | Nome do exercício                      |
|                   | descricao          | TEXT         | —                     | Descrição detalhada do exercício       |
|                   | video\_url         | VARCHAR(255) | —                     | Link para vídeo demonstrativo          |
| **item\_plano**   | id                 | VARCHAR(255) | PK                    | Identificador da associação            |
|                   | plano\_id          | VARCHAR(255) | FK → plano\_treino.id | ID do plano de treino associado        |
|                   | exercicio\_id      | VARCHAR(255) | FK → exercicio.id     | ID do exercício associado              |
|                   | series             | INT          | —                     | Número de séries                       |
|                   | repeticoes         | INT          | —                     | Número de repetições                   |
| **dieta**         | id                 | VARCHAR(255) | PK                    | Identificador único da dieta           |
|                   | usuario\_id        | VARCHAR(255) | FK → usuario.id       | ID do usuário dono da dieta            |
|                   | nome               | VARCHAR(255) | —                     | Nome descritivo da dieta               |
|                   | data\_inicio       | DATE         | —                     | Data de início da dieta                |
|                   | objetivo\_calorias | INT          | —                     | Meta diária de calorias                |
| **refeicao**      | id                 | VARCHAR(255) | PK                    | Identificador da refeição              |
|                   | dieta\_id          | VARCHAR(255) | FK → dieta.id         | ID da dieta associada                  |
|                   | tipo               | ENUM         | —                     | Tipo de refeição (café, almoço, etc.)  |
|                   | calorias           | INT          | —                     | Calorias totais da refeição            |
| **receita**       | id                 | VARCHAR(255) | PK                    | Identificador único da receita         |
|                   | nome               | VARCHAR(255) | —                     | Nome da receita                        |
|                   | descricao          | TEXT         | —                     | Instruções de preparo                  |
|                   | ingredientes       | TEXT         | —                     | Lista de ingredientes                  |

>etapa (e) do artefato de modelagem.

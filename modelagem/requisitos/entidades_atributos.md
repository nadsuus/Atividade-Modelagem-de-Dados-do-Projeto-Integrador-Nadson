# 2. Identificação de Entidades e Atributos

A partir dos requisitos funcionais, listamos as seguintes entidades e seus atributos principais:

| Entidade        | Atributos                                                                |
| --------------- | ------------------------------------------------------------------------ |
| **Usuário**     | id, nome, e-mail, data\_nascimento                                       |
| **Academia**    | id, nome, endereço, telefone                                             |
| **CheckIn**     | id, usuario\_id (FK), academia\_id (FK), data\_hora, latitude, longitude |
| **PlanoTreino** | id, usuario\_id (FK), nome, data\_criacao                                |
| **Exercício**   | id, nome, descricao, video\_url                                          |
| **ItemPlano**   | id, plano\_id (FK), exercicio\_id (FK), series, repeticoes               |
| **Dieta**       | id, usuario\_id (FK), nome, data\_inicio, objetivo\_calorias             |
| **Refeição**    | id, dieta\_id (FK), tipo (café, almoço, etc.), calorias                  |
| **Receita**     | id, nome, descricao, ingredientes                                        |

>entidade **ItemPlano** é uma entidade associativa para resolver o relacionamento N\:M entre PlanoTreino e Exercício.

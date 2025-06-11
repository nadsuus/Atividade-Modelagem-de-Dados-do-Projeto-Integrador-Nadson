# 1. Escopo e Requisitos Funcionais

## 1.1. Escopo do Sistema

O **SmartFit Pro** tem como objetivo oferecer uma solução completa de fitness, englobando três módulos principais:

* **Check-in**: Registro de presença na academia por QR code ou geolocalização, com histórico de visitas.
* **Exercícios**: Criação e acompanhamento de planos de treino personalizados, com bibliotecas de exercícios em vídeo, séries, repetições e cronômetro.
* **Dieta**: Planejamento e monitoramento nutricional, incluindo criação de dietas, registro de refeições, controle de macronutrientes e calorias.

O sistema atenderá usuários finais (praticantes de atividades físicas) e academias parceiras.

## 1.2. Requisitos Funcionais

| #    | Requisito Funcional                                                                                      | Módulo     |
| ---- | -------------------------------------------------------------------------------------------------------- | ---------- |
| RF1  | O sistema deve permitir que o usuário faça check-in na academia por QR code.                             | Check-in   |
| RF2  | O sistema deve validar a localização do usuário para registro de check-in em academias parceiras.        | Check-in   |
| RF3  | O sistema deve exibir histórico de visitas com filtros por semana e mês.                                 | Check-in   |
| RF4  | O usuário pode criar e nomear planos de treino personalizados.                                           | Exercícios |
| RF5  | O usuário pode selecionar exercícios de uma biblioteca e definir séries, repetições e intervalos.        | Exercícios |
| RF6  | O sistema deve disponibilizar vídeos demonstrativos para cada exercício cadastrado.                      | Exercícios |
| RF7  | O sistema deve incluir um cronômetro integrado para controle de tempo de séries e intervalos.            | Exercícios |
| RF8  | O usuário pode registrar desempenho (peso, repetições realizadas) ao final de cada exercício.            | Exercícios |
| RF9  | O usuário pode criar dietas com refeições (café, almoço, jantar e lanches) e salvar modelos de cardápio. | Dieta      |
| RF10 | O sistema deve calcular e exibir informações nutricionais (calorias, macronutrientes) de cada refeição.  | Dieta      |
| RF11 | O usuário deve registrar seu consumo alimentar diário em um diário alimentar.                            | Dieta      |
| RF12 | O sistema deve gerar gráficos de progresso nutricional com base nos registros de dieta.                  | Dieta      |

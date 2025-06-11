# SmartFit Pro

![Build Status](https://img.shields.io/badge/build-passing-brightgreen) ![License](https://img.shields.io/badge/license-MIT-blue)

## 📖 Visão Geral

**SmartFit Pro** é um aplicativo fictício de fitness que centraliza três módulos essenciais para academias parceiras e seus usuários:

1. **Check-in**: registro de presença via QR code ou geolocalização, com histórico filtrável (semanais e mensais).
2. **Exercícios**: criação de planos de treino personalizados, biblioteca de vídeos demonstrativos, definição de séries/repetições e cronômetro integrado.
3. **Dieta**: montagem de cardápios, controle de macronutrientes/calorias, diário alimentar e gráficos de progresso.

Este repositório inclui tanto o código-fonte quanto todos os artefatos de modelagem de dados exigidos no projeto integrador.

---

## 📂 Estrutura de Pastas

```plaintext
/
├── README.md
├── src/                       # código-fonte do aplicativo (Front-end e Back-end)
└── modelagem/                # artefatos de modelagem de dados
    ├── requisitos/
    │   ├── requisitos_funcionais.md      # lista de requisitos funcionais
    │   └── entidades_atributos.md        # entidades e atributos identificados
    ├── diagrama_er/
    │   ├── smartfit_pro.erd              # código BigER do ER conceitual
    │   └── diagrama_er_conceitual.png    # imagem do ER conceitual
    ├── modelo_relacional/
    │   ├── modelo_relacional.sql         # script DDL com CREATE TABLE
    │   └── modelo_relacional.png         # diagrama relacional exportado
    └── dicionario_dados/
        └── dicionario_dados.md          # descrições detalhadas de tabelas e colunas
```

---

## 🚀 Como Começar

1. **Clone o repositório**:

   ```bash
   git clone https://github.com/seu-usuario/smartfit-pro.git
   cd smartfit-pro
   ```
2. **Instale dependências** (Front-end / Back-end):

   ```bash
   cd src
   npm install
   ```
3. **Execute localmente**:

   ```bash
   npm run server     # inicia API
   npm run mobile     # inicia app mobile via Expo
   ```
4. **Verifique modelagem**:

   * Abra os arquivos em `/modelagem/` para conferir requisitos, diagramas e dicionário.

---

## 🗃️ Modelagem de Dados

Este projeto integra os seguintes artefatos de modelagem, conforme exigido na atividade:

1. **Escopo e Requisitos Funcionais** (`modelagem/requisitos/requisitos_funcionais.md`)
2. **Identificação de Entidades e Atributos** (`modelagem/requisitos/entidades_atributos.md`)
3. **Diagrama ER Conceitual**

   * Código BigER: `modelagem/diagrama_er/smartfit_pro.erd`
   * Imagem exportada: `modelagem/diagrama_er/diagrama_er_conceitual.png`
4. **Modelo Relacional**

   * Script DDL: `modelagem/modelo_relacional/modelo_relacional.sql`
   * Diagrama exportado: `modelagem/modelo_relacional/modelo_relacional.png`
5. **Dicionário de Dados** (`modelagem/dicionario_dados/dicionario_dados.md`)

---

## 🤝 Contribuições

1. Faça um fork do projeto
2. Crie uma branch para sua feature: `git checkout -b feature/nome-da-feature`
3. Commit suas alterações: `git commit -m "feat: descrição da feature"`
4. Envie para o repositório original: `git push origin feature/nome-da-feature`
5. Abra um Pull Request

---

## 📄 Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

---

*Desenvolvido com ❤️ por Nadson Santos Nascimento*
*Github:https://github.com/nadsuus*


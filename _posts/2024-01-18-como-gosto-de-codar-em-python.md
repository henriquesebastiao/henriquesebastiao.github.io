---
title: Como gosto de codar em Python
author: henriquesebastiao
date: 2024-01-18 11:24:00 -0400
categories: [Blog, Programação]
tags: [blog, programacao, desenvolvimento, python]
pin: true
---

Um guia de ferramentas que sempre uso em meus projetos pessoais Python para organizar o código e mais alguns truques.

Com o tempo aprendi a gostar de organizar meus códigos Python desde o início do projeto, seguindo a maneira que eu gosto de programar e também a PEP8. Grande parte dessas ferramentas aprendi gracas ao [@dunossauro](https://dunossauro.com/), e tambem algumas boas praticas.

Resolvi centralizar tudo aqui, assim sempre que eu iniciar um novo projeto posso pegar tudo aqui novamente hehe 😄.

Se você também gostar dessas dicas, me sentirei honrado em poder te ajudar. E se conhecer alguma outra maneira de organizar códigos, ficarei muito grato se compartilhar comigo!

## Ferramentas de desenvolvimento

- [Pytest](https://docs.pytest.org/), para testar meus projetos;
- [Coverage](https://coverage.readthedocs.io/), para saber se esqueci de testar algo;
- [Taskipy](https://github.com/taskipy/taskipy), para encurtar grandes comandos;
- [Blue](https://blue.readthedocs.io/en/latest/index.html), para seguir a PEP8 e formatar o código;
- [Ruff](https://docs.astral.sh/ruff/), um poderoso linter para Python;
- [Isort](https://pycqa.github.io/isort/), para organizar meus imports.

```terminal
poetry add --group dev pytest coverage pytest-cov taskipy blue ruff isort
```
```terminal
pip install pytest coverage pytest-cov taskipy blue ruff isort
```

## Ferramentas de documentação

- [Material for MkDocs](https://github.com/squidfunk/mkdocs-material/), um framework para a criação da documentação;
- [mkdocstrings](https://mkdocstrings.github.io/), uma ferramenta que gera documentação a partir das docstrings no código;
- [mkdocstrings-python](https://mkdocstrings.github.io/python/), o plugin de suporte python para o mkdocstrings.

```terminal
poetry add --group doc mkdocs-material mkdocstrings mkdocstrings-python
```
```terminal
pip install mkdocs-material mkdocstrings mkdocstrings-python
```

## Configurações

```toml
[tool.ruff]
line-length = 79

[tool.isort]
profile = "black"
line_length = 79

[tool.taskipy.tasks]
lint = 'ruff . && blue --check . --diff'
format = 'blue .  && isort .'
```
{: file="pyproject.toml" }

## Integração Contínua com GitHub Actions

```yml
on: [ push, pull_request ]

name: CI

jobs:
  ruff:
    name: Ruff
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: chartboost/ruff-action@v1
        with:
          version: "0.1.3"

  isort:
    name: Isort
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: isort/isort-action@v1
        with:
          requirements-files: "requirements.txt"
          configuration: "--profile black -l 79"
```
{: file=".github/workflows/ci.yml" }
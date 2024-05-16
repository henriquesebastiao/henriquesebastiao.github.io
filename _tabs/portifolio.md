---
layout: page
icon: fas fa-briefcase
order: 4
title: Portifólio
---

## Projetos

Alguns do projetos que desenvolvi durante esse tempo de estudo em desenvolvimento.

### [Poupy](https://github.com/henriquesebastiao/poupy)

Um webapp de gestão financeira pessoal desenvolvido com Python, Django e PostgreSQL para o backend e HTML com CSS puro no frontend. O projeto foi desenvolvido com o intuito de aprender mais sobre desenvolvimento web e a aplicação das regras de negócio em um sistema real.

### [Skyport ✨](https://github.com/henriquesebastiao/skyport)

Skyport é um CLI para obter informações de objetos astronômicos diretamente pelo terminal, desenvolvido com Typer e consumindo API pública da NASA. O projeto está sendo desenvolvido com o intuito de aprender mais sobre desenvolvimento de CLIs e consumo de APIs. Tenho muito entusiasmo com este projeto, uma vez que me permite unir duas coisas que gosto: astronomia e o desenvolvimento.

O CLI tem uma documentação completa desenvolvida com MkDocs e hospedada no Read the Docs. Você pode acessá-la [aqui](https://henriquesebastiao.github.io/skyport/).

### [Netmikro](https://github.com/henriquesebastiao/netmikro)

Netmikro é uma biblioteca simples que fornece uma abstracao para facilitar o gerenciamento roteadores Mikrotik usando Python, simplificando tarefas de configuração e monitoramento. Usando a poderosa biblioteca `Netmiko` para gerar uma conexão SSH com o roteador, a biblioteca Netmikro fornece uma interface mais amigável para realizar tarefas comuns de gerenciamento de roteadores Mikrotik.

Um explo de uso da biblioteca:

```python
>>> from netmikro import RouterOS


>>> router = RouterOS(
    '192.168.3.3',
    'user',
    'password',
    22,
)

>>> router.cmd('/system identity print')
MikroTik

# Ou simplesmente lendo o atributo `identity`
>>> router.identity
MikroTik
```
{: .nolineno }

### [Timesheet](https://github.com/henriquesebastiao/timesheet)

Timesheet é um app de folha de ponto desenvolvido com Python, Django e PostgreSQL. Usando o django-admin para interagir com a plicação, o app permite que o usuário registre suas horas trabalhadas e gere o PDF (com `reportlab`) da folha de ponto ao fim do mês.


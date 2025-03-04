# 📝 Blog pessoal e Portifólio

Este é meu blog pessoal e portifólio, feito com [Jekyll](https://jekyllrb.com/) e o belíssimo tema [Chirpy](https://chirpy.cotes.page/).

A ideia aqui é ter um lugar sob o meu controle, onde eu possa compartilhar meus pensamentos, percepções e devaneios. Já há algum tempo em que venho cogitando a abordagem que mais me agradasse para escrever meus posts, depois de algum tempo teste essa implementação com Jekyll cheguei a conclusão de que vou seguir por esse caminho. Primeiro porque escrever em Markdown me é agradável e simples, mas principalmente porque é portável. Se do dia para a noite o GitHub Pages deixar de existir posso auto-hospedar a página, ou se até mesmo o Jekyll se tornar obsoleto posso facilmente migrar meus arquivos `.md` para outra plataforma.

### 🛠️ Construindo

Para instalar as dependências de desenvolvimento, siga os seguintes passos:

1. Instale o `ruby` e o `rubygems`.
2. Instale o `bundler` com o comando:

```shell
gem install bundler
```

3. Configure o bundler para instalar as dependências do projeto na pasta do projeto:

```shell
bundle config set --local path '.bundle'
```

4. Instale as dependências:

```shell
bundle install
```

5. Por fim inicialize a aplicação:

```shell
make run
```
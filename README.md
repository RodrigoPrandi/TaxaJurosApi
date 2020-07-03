# TaxaJurosApi

![Docker](https://github.com/RodrigoPrandi/TaxaJurosApi/workflows/Docker/badge.svg)

# API 1

Api hard coded, criado para atender as seguintes necessidades:

###  1) Retorna a taxa de juros
Responde pelo path relativo "/taxaJuros"

Retorna o juros de 1% ou 0,01 (fixo no código)

Exemplo: /taxaJuros Resultado esperado: 0,01,

# Build e execução

Buildar imagem docker:

```bash
docker build --tag taxajurosapi:local .
```

Executar imagem gerada local:

```bash
docker run --publish 44344:80 --detach --name taxajurosapi taxajurosapi:local
```

Apos a execução poderá ser acessado o seguinte endpoint:

http://localhost:44344/taxajuros

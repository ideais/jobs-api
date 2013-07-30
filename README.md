Jobs-API
==========

## Métodos

### Lista de Inscritos

URL: http://ideais-jobs-api.herokuapp.com/submissions
Request Type: GET
Login: ideais
Senha: ideais

### Inscrição

URL: http://ideais-jobs-api.herokuapp.com/submissions
Request Type: POST
Parametro: json

#### Exemplo do JSON

``` json
  {
    "email": "abc@gmail.com",
    "name": "Fulano de Tal",
    "linkedin_url": "http://www.linkedin.com/pub/<sua url>",
    "github": "<seu user no github>",
    "facebook": "<seu facebook>",
    "twitter": "<seu twitter>",
    "about": "Fale sobre voce",
    "jobs": [
        {
            "company": "Empresa 1",
            "begin": "2012-12-05",
            "end": "2012-12-07",
            "title": "Junior Developer"
        },
        {
            "company": "Empresa 2",
            "begin": "2012-12-05",
            "end": "2012-12-07",
            "title": "Senior Developer"
        }
    ],
    "educations": [
        {
            "school": "Colegio Xpto",
            "begin": "2012-12-05",
            "end": "2012-12-07",
            "degree": "Segundo Grau"
        },
        {
            "school": "Faculdade A",
            "begin": "2012-12-05",
            "end": "2012-12-07",
            "degree": "Computação"
        }
    ],
    "address": {
        "city": "Rio de Janeiro",
        "country": "Brasil",
        "state": "RJ",
        "cep": "21510210",
        "neighborhood": "Rocha Miranda",
        "street": "Marupiara",
        "number": "223",
        "complement": ""
    }
}
```





# Vue Finances (monorepo)

#### Monorepo para API GraphQL e Aplicação Vue

![This is an image](https://res.cloudinary.com/practicaldev/image/fetch/s--L71__yWO--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://dev-to-uploads.s3.amazonaws.com/i/z74oqos1984w5g5ah0i9.jpeg)

A aplicação é um Gerenciador de Finanças Pessoais que usa as seguintes tecnologias e recursos:

* Client Side

   - Vue (2.6+)
   - Vue Router
   - Vuex
   - Vuetify
   - Vuelidate
   - Apollo Client
   - Apollo Cache InMemory
   - ChartJS
   - Moment
   - RxJS
  
####
* Server Side

  - NodeJS
  - Prisma (Client e Binding)
  - GraphQL Yoga
  - Moment
  - JSON Web Tokens
  - Bcrypt
  - API GraphQL (Queries e Mutations)
  - PM2
  - Outras ferramentas
####
  
* Docker (Compose e Machine)

    - Prisma Server
    - PostgreSQL
    - Traefik (Reverse Proxy)
    - Digital Ocean
    - Let's Encrypt (HTTP/TLS)
    - Git Submodules

### Teste localmente
Se quiser testar o projeto localmente basta seguir estes passos:

1. Clone o repositório usando HTTPS
`git clone https://github.com/plinionaves/vue-finances.git`

2. Acesse o diretório criado para o projeto\
`cd vue-finances`
3. Altere o arquivo .gitmodules para usar HTTPS também. Esse passo é necessário para que o Git não solicite nenhuma senha\
`[submodule "deps/front"]
path = deps/front
url = https://github.com/plinionaves/vue-finances-front.git
[submodule "deps/back"]
path = deps/back
url = https://github.com/plinionaves/vue-finances-back.git`
4. Inicialize o submódulos do Git\
`git submodule init`
5. Rode o comando abaixo para "puxar" o código fonte dos submódulos:\
`git submodule update`
6. Crie um arquivo .env na raiz do projeto e configure as seguintes variáveis de ambiente:\
```
NODE_ENV=development

# monorepo
DOMAIN=vuefinances.localhost # dev domain
POSTGRES_USER=prisma
POSTGRES_PASSWORD=prisma
# o dashboard do traefik será configurado com:
# user: admin
# password: 123456
TRAEFIK_AUTH=admin:$apr1$8E0f5wvJ$HZE3AEO5xPFniztO0bkE50

# back
CLIENT_HOSTS=vuefinances.localhost # cors
JWT_SECRET=your-secret
PRISMA_PORT=4466
PRISMA_ENDPOINT=http://prisma.vuefinances.localhost
PRISMA_SERVICE=vue-finances-back
PRISMA_STAGE=dev
PRISMA_SERVICE_SECRET=service-secret # Prisma CLI
PRISMA_MANAGEMENT_API_SECRET=management-secret
```
7. Execute\
```docker-compose up -d```

8. Faça o deploy do Prisma Service
```
npm i -g prisma@1.28

cd deps/back

prisma deploy -e ../../.env`
```

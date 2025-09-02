# Equinox Environment Facilities

> 🚀 **Facilidades para configuração e produtividade no ambiente de desenvolvimento**

Este repositório contém scripts, aliases e configurações para otimizar o ambiente de desenvolvimento, facilitando tarefas comuns do dia a dia como build, deploy, navegação entre projetos e gerenciamento de serviços.

## 📋 Índice

- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
- [Configuração](#configuração)
- [Aliases Disponíveis](#aliases-disponíveis)
  - [Equinox](#aliases-equinox)
  - [Guidewire](#aliases-guidewire)
  - [Utilitários](#aliases-utilitários)
- [Docker Images](#docker-images)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Contribuindo](#contribuindo)

## 🔧 Pré-requisitos

- **Git Bash** (Windows)
- **Node.js** e **npm**
- **Flutter** (para projetos mobile)
- **Docker** e **Docker Compose**
- **Python** (para scripts de extração de dados)

## 🚀 Instalação

### 1. Clone o repositório

```bash
git clone <url-do-repositorio>
cd equinox-env-facilities
```

### 2. Criação do Symlink

> ⚠️ **IMPORTANTE**: Execute o comando abaixo no **CMD do Windows como Administrador**

```cmd
mklink "C:\\Users\\User\\.bashrc" "C:\\dev\\equinox-env-facilities\\aliases\\.bashrc"
```

**Substitua**:
- `Usuario` pelo seu nome de usuário do Windows
- `C:\\dev\\equinox-env-facilities` pelo caminho onde você clonou o repositório

### 3. Configuração das Variáveis de Ambiente

No diretório `aliases/`, copie e renomeie os arquivos de exemplo:

```bash
# Navegue até o diretório aliases
cd aliases/

# Copie e configure os arquivos de ambiente
cp .env.equinox.example .env.equinox
cp .env.gw.example .env.gw
```

### 4. Editar Configurações

Edite os arquivos `.env.equinox` e `.env.gw` com os caminhos corretos dos seus projetos:

**`.env.equinox`**:
```bash
export DEV_PATH="/c/dev"
export ZENIT_PATH="/c/dev/equinox/zenit"
export EQUINOX_ENV_FACILITIES_PATH="/c/dev/equinox-env-facilities"
export COMEXDEZ_WEB_PATH="/c/dev/comexdez/comexdez-web"
export CATALOGO_PRODUTOS_PATH="/c/dev/comexdez/catalogo-produtos"
export PDF_EXTRACTOR_PATH="/c/dev/equinox/pdf-extractor"
```

**`.env.gw`**:
```bash
export DEV_PATH="/c/dev"
export BC_PATH="/c/dev/billingcenter"
export PC_PATH="/c/dev/policycenter"
# ... outros caminhos conforme necessário
```

### 5. Recarregar Configurações

Abra um novo Git Bash ou execute:

```bash
source ~/.bashrc
# ou simplesmente
bu
```

## 📚 Aliases Disponíveis

### 🔷 Aliases Equinox

#### Navegação
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `cwdir` | `cd $COMEXDEZ_WEB_PATH` | Navegar para ComexDez Web |
| `zdir` | `cd $ZENIT_PATH` | Navegar para Zenit |
| `cpdir` | `cd $CATALOGO_PRODUTOS_PATH` | Navegar para Catálogo de Produtos |
| `pdfdir` | `cd $PDF_EXTRACTOR_PATH` | Navegar para PDF Extractor |
| `efdir` | `cd $EQUINOX_ENV_FACILITIES_PATH` | Navegar para Environment Facilities |

#### Flutter
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `flbr` | `flutterBuildAndRun` | Clean + pub get + build_runner + run |
| `flr` | `flutterRun` | Pub get + flutter run |

#### Desenvolvimento Node.js
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `cprb` | `npmRunDev $CATALOGO_PRODUTOS_PATH/backend` | Rodar backend Catálogo Produtos |
| `cprf` | `npmRunDev $CATALOGO_PRODUTOS_PATH/frontend` | Rodar frontend Catálogo Produtos |
| `cprall` | `cprb && cprf` | Rodar ambos Catálogo Produtos |
| `zrb` | `npmRunDev $ZENIT_PATH/backend` | Rodar backend Zenit |
| `zrf` | `npmRunDev $ZENIT_PATH/frontend` | Rodar frontend Zenit |
| `zrall` | `zrb && zrf` | Rodar ambos Zenit |

#### Gerenciamento de Portas
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `stb` | `kill_port 3000` | Matar processo na porta 3000 |
| `stf` | `kill_port 3001` | Matar processo na porta 3001 |
| `stall` | `stb && stf` | Matar processos nas portas 3000 e 3001 |
| `ns` | `netStat` | Ver status de portas |
| `nsall` | `ns 3000 && ns 3001` | Ver status das portas 3000 e 3001 |
| `pidall` | `showPid 3000 && showPid 3001` | Mostrar PIDs das portas 3000 e 3001 |

#### Git
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `push` | `pushRemotes` | Push para origin e bitbucket |
| `pull` | `por $1` | Pull da branch especificada |
| `ch` | `git checkout $1` | Checkout para branch |
| `cppull` | `pullDir $CATALOGO_PRODUTOS_PATH` | Pull no diretório Catálogo Produtos |
| `zpull` | `pullDir $ZENIT_PATH` | Pull no diretório Zenit |
| `pdfpull` | `pullDir $PDF_EXTRACTOR_PATH` | Pull no diretório PDF Extractor |

#### Docker
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `zdcub` | `dockerComposeUpBuild $ZENIT_PATH` | Docker compose up --build no Zenit |
| `cpdcub` | `dockerComposeUpBuild $CATALOGO_PRODUTOS_PATH` | Docker compose up --build no Catálogo |

#### Outros
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `dados` | `levantamentoDados` | Executar levantamento de dados (PDF) |
| `bu` | `source $SCRIPT_PATH/.bashrc` | Recarregar bashrc |
| `list` | `ls` | Listar arquivos |

### 🔶 Aliases Guidewire

#### Navegação
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `bcd` | `cd $BC_PATH` | BillingCenter |
| `pcd` | `cd $PC_PATH` | PolicyCenter |
| `ccd` | `cd $CC_PATH` | ClaimCenter |
| `cmd` | `cd $CM_PATH` | ContactManager |
| `grcd` | `cd $GRC_PATH` | GW Rest Clients |

#### Build e Deploy
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `bcg` | `runBuild $BC_PATH` | Build BillingCenter |
| `pcg` | `runBuild $PC_PATH` | Build PolicyCenter |
| `ccg` | `runBuild $CC_PATH` | Build ClaimCenter |
| `cmg` | `runBuild $CM_PATH` | Build ContactManager |

#### Servidor
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `bcrs` | `runServer $BC_PATH` | Iniciar servidor BillingCenter |
| `pcrs` | `runServer $PC_PATH` | Iniciar servidor PolicyCenter |
| `bcss` | `stopServer $BC_PATH` | Parar servidor BillingCenter |
| `pcss` | `stopServer $PC_PATH` | Parar servidor PolicyCenter |

#### Studio
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `bcs` | `runStudio $BC_PATH` | Abrir Studio BillingCenter |
| `pcs` | `runStudio $PC_PATH` | Abrir Studio PolicyCenter |

#### Git Workflow
| Alias | Comando | Descrição |
|-------|---------|-----------|
| `chdev` | `git checkout $DEV_BRANCH` | Checkout para develop |
| `pdev` | `git pull origin develop` | Pull da develop |
| `mdev` | `git merge develop` | Merge da develop |
| `cuat` | `git checkout $UAT_BRANCH` | Checkout para UAT |
| `puat` | `git pull origin $UAT_BRANCH` | Pull da UAT |
| `cp` | `cherryPick` | Cherry-pick commit |

## 🐳 Docker Images

O repositório inclui configurações Docker Compose para diferentes bancos de dados:

### MySQL
- **MySQL 5.7**: `docker-images/MySQL/5.7/`
- **MySQL 8**: `docker-images/MySQL/8/`

### PostgreSQL
- **PostgreSQL 14**: `docker-images/PostgreSQL/14/`
- **pgAdmin**: `docker-images/PostgreSQL/pgadmin/`

Para usar, navegue até o diretório desejado e execute:

```bash
docker-compose up -d
```

## 📁 Estrutura do Projeto

```
equinox-env-facilities/
├── aliases/
│   ├── .bashrc                 # Script principal
│   ├── .bashrc.equinox        # Aliases para projetos Equinox
│   ├── .bashrc.gw             # Aliases para projetos Guidewire
│   ├── .env.equinox.example   # Exemplo de variáveis Equinox
│   ├── .env.gw.example        # Exemplo de variáveis Guidewire
│   └── .gitignore             # Ignora arquivos .env reais
├── docker-images/
│   ├── MySQL/
│   │   ├── 5.7/
│   │   └── 8/
│   └── PostgreSQL/
│       ├── 14/
│       └── pgadmin/
└── README.md
```

## 🔧 Funções Principais

### `pullDir()`
Executa git pull em um diretório específico e retorna ao diretório anterior.

### `kill_port()`
Mata todos os processos rodando em uma porta específica.

### `flutterBuildAndRun()`
Executa sequência completa: clean → pub get → build_runner → run.

### `pushRemotes()`
Faz push para múltiplos remotes (origin e bitbucket).

## 🤝 Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## 📝 Dicas de Uso

- Use `bu` para recarregar as configurações após fazer alterações
- Os aliases são case-sensitive
- Para ver todos os processos em uma porta: `ns PORTA`
- Para matar processo específico: `kill PID`
- Mantenha seus arquivos `.env.*` atualizados com os caminhos corretos

## ⚠️ Troubleshooting

### Aliases não funcionam
1. Verifique se o symlink foi criado corretamente
2. Confirme que os arquivos `.env.*` existem e têm os caminhos corretos
3. Execute `bu` para recarregar as configurações

### Erro de permissão no Windows
- Execute o CMD como Administrador para criar o symlink
- Verifique se o Git Bash tem permissões adequadas

### Funções não encontradas
- Verifique se os caminhos nas variáveis de ambiente estão corretos
- Confirme que os diretórios dos projetos existem

---

💡 **Dica**: Mantenha este repositório atualizado e compartilhe melhorias com a equipe!
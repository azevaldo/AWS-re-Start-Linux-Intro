# AWS re/Start — Introdução ao Linux

Laboratório **225 — Introdução ao Linux**, realizado durante o programa **AWS re/Start**.

Neste laboratório foram praticados conceitos básicos de Linux, acesso remoto a uma instância **Amazon Linux** através de **SSH utilizando o PuTTY** e utilização das páginas de manual (`man pages`) para consultar informações sobre comandos Linux.

## 🎯 Objetivos

* Acessar uma instância Amazon Linux através de SSH.
* Utilizar o PuTTY para estabelecer uma conexão SSH.
* Utilizar uma chave privada no formato `.ppk`.
* Trabalhar com o terminal Linux.
* Conhecer o comando `man`.
* Consultar páginas de manual.
* Identificar as principais seções de uma página `man`.

## ☁️ Ambiente utilizado

O laboratório foi realizado através do ambiente **Vocareum**, utilizando recursos da AWS.

### Recursos utilizados

* **Amazon EC2**
* **Amazon Linux**
* **Amazon VPC**
* Sub-rede pública
* **SSH**
* **PuTTY**

A instância EC2 disponibilizada pelo laboratório foi utilizada como o ambiente Linux para realização das atividades.

---

# 1. Iniciar o laboratório

O laboratório foi iniciado através do ambiente Vocareum.

Após o início, foi necessário aguardar o ambiente ficar disponível e acessar o **AWS Management Console** disponibilizado pelo laboratório.

Na área de detalhes do laboratório foram disponibilizadas as informações necessárias para realizar a conexão com a instância, incluindo:

* IP público da instância;
* Chave privada;
* Região AWS.

Neste laboratório foi utilizada a opção **Download PPK**, pois o acesso foi realizado através do PuTTY no Windows.

---

# 2. Obter a chave PPK

Na área de credenciais do laboratório foi selecionada a opção:

```text
Download PPK
```

O arquivo de chave privada disponibilizado foi utilizado para autenticar a conexão SSH através do PuTTY.

A chave privada é uma informação sensível e, por isso, **não é armazenada neste repositório**.

---

# 3. Configurar o PuTTY

Para realizar a conexão, foi utilizado o **PuTTY**, cliente SSH para Windows.

Na tela inicial do PuTTY, em **Session**, foram configurados:

```text
Host Name: <public-ip>
Port: 22
Connection type: SSH
```

Onde:

* `<public-ip>` representa o endereço IP público da instância;
* `22` é a porta utilizada pelo SSH;
* `SSH` é o protocolo utilizado para a conexão.

---

# 4. Configurar a chave privada

Depois da configuração inicial da sessão, foi acessada a área:

```text
Connection
└── SSH
    └── Auth
        └── Credentials
```

No campo:

```text
Private key file for authentication
```

foi selecionado o arquivo:

```text
labsuser.ppk
```

Essa foi a chave utilizada para autenticar o acesso à instância.

> **Importante:** neste laboratório foi utilizado o formato `.ppk` porque a conexão foi realizada através do PuTTY no Windows.

---

# 5. Estabelecer a conexão SSH

Depois de configurar o endereço da instância, a porta SSH e a chave privada, foi selecionado:

```text
Open
```

Na primeira conexão, o PuTTY apresentou um alerta de segurança solicitando a confirmação do host remoto.

Após aceitar a conexão, foi solicitado o usuário da instância.

O usuário utilizado foi:

```text
ec2-user
```

Após a autenticação, foi estabelecida uma sessão SSH com a instância **Amazon Linux**.

A partir desse momento, os comandos foram executados diretamente no terminal da instância.

---

# 6. Explorar as páginas de manual

Depois de acessar a instância Linux, foi iniciado o exercício de exploração das páginas de manual do sistema.

Para consultar a documentação do próprio comando `man`, foi executado:

```bash
man man
```

O comando abriu a página de manual no terminal.

As páginas `man` são uma forma de documentação disponível diretamente no ambiente Linux e permitem consultar informações sobre comandos e programas.

---

# 7. Identificar as seções do `man`

Durante a consulta da página de manual, foram identificadas algumas das principais seções utilizadas para organizar a documentação.

| Seção         | Descrição                         |
| ------------- | --------------------------------- |
| `NAME`        | Nome e breve descrição do comando |
| `SYNOPSIS`    | Sintaxe e forma de utilização     |
| `DESCRIPTION` | Descrição e funcionamento         |
| `OPTIONS`     | Opções disponíveis                |
| `EXAMPLES`    | Exemplos de utilização            |
| `FILES`       | Arquivos relacionados             |
| `SEE ALSO`    | Referências relacionadas          |

Essas seções permitem encontrar rapidamente informações sobre como utilizar determinado comando.

---

# 8. Navegar pela página `man`

Durante a consulta da documentação, foi possível navegar pelo conteúdo utilizando as teclas direcionais:

```text
↑  Subir
↓  Descer
```

Para sair da página de manual e retornar ao terminal, foi utilizada:

```text
q
```

---

# 9. Comandos utilizados

Os principais comandos relacionados ao laboratório foram:

### `man`

Consultar a documentação de um comando:

```bash
man man
```

Também é possível consultar outros comandos:

```bash
man ls
man ssh
man chmod
```

### `ssh`

Embora a conexão deste laboratório tenha sido realizada através do PuTTY, o SSH é o protocolo utilizado para a comunicação remota com a instância.

Em um terminal compatível com OpenSSH, uma conexão poderia ser realizada com:

```bash
ssh -i labsuser.pem ec2-user@<public-ip>
```

> Esse comando é apresentado apenas como referência. **A conexão realizada neste laboratório foi feita pelo PuTTY utilizando a chave `.ppk`.**

---

# 10. Segurança

As credenciais fornecidas pelo ambiente do laboratório foram utilizadas somente durante a execução da atividade.

Por segurança, este repositório não contém:

* Chaves `.ppk`;
* Chaves `.pem`;
* Senhas;
* Access Keys;
* Secret Access Keys;
* Tokens;
* Credenciais AWS;
* Endereços IP públicos utilizados durante a sessão.

O arquivo `.gitignore` também impede que arquivos de chave privada sejam adicionados acidentalmente ao repositório.

---

# 11. Aprendizados

Este laboratório permitiu praticar conceitos fundamentais de Linux e computação em nuvem.

### Principais conhecimentos adquiridos

* Acesso remoto a uma instância Amazon EC2.
* Utilização do protocolo SSH.
* Configuração do PuTTY para acesso a servidores Linux.
* Utilização de uma chave privada `.ppk`.
* Acesso ao terminal Amazon Linux.
* Utilização das páginas de manual.
* Interpretação da sintaxe e das opções dos comandos Linux.
* Consulta da documentação diretamente pelo terminal.

---

# 12. Conclusão

O laboratório proporcionou uma introdução prática ao uso do Linux em um ambiente de computação em nuvem.

Foi realizado o acesso a uma instância **Amazon Linux** através de **SSH utilizando o PuTTY e uma chave `.ppk`**. Após o acesso, foram exploradas as páginas de manual do Linux utilizando o comando `man`.

Os conhecimentos praticados neste laboratório formam uma base para atividades posteriores relacionadas à administração de servidores Linux e utilização de serviços AWS.

---

## Formação

**Programa:** AWS re/Start
**Laboratório:** 225 — Introdução ao Linux

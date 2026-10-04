# Comandos — Introdução ao Linux

Comandos e conceitos utilizados durante o laboratório **225 — Introdução ao Linux**.

## `man`

Consultar a página de manual do comando `man`:

```bash
man man
```

Exemplos de consulta:

```bash
man ls
man ssh
man chmod
```

## Navegação no `man`

```text
↑ / ↓    Navegar pela página
q        Sair da página
```

## SSH

O laboratório utilizou SSH para acessar remotamente a instância Amazon Linux.

A conexão foi realizada através do **PuTTY**, utilizando uma chave privada no formato `.ppk`.

Configuração utilizada:

```text
Protocolo: SSH
Porta: 22
Usuário: ec2-user
Chave: labsuser.ppk
```

## Observação

O comando abaixo representa uma conexão utilizando OpenSSH e uma chave `.pem`:

```bash
ssh -i labsuser.pem ec2-user@<public-ip>
```

Ele **não foi utilizado para realizar a conexão neste laboratório**. Foi incluído apenas como referência para diferenciar o OpenSSH do procedimento realizado com PuTTY.

A chave `.ppk` utilizada no laboratório não deve ser adicionada ao GitHub.

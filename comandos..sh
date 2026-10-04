```bash
#!/bin/bash

# ============================================================
# AWS re/Start - Laboratório 225: Introdução ao Linux
# Comandos praticados durante o laboratório
# ============================================================


# ------------------------------------------------------------
# 1. CONSULTAR A PÁGINA DE MANUAL DO COMANDO "man"
# ------------------------------------------------------------
# O comando "man" permite consultar a documentação de
# comandos e programas disponíveis no Linux.
#
# Neste laboratório foi utilizada a documentação do próprio
# comando "man".

man man


# ------------------------------------------------------------
# 2. CONSULTAR A PÁGINA DE MANUAL DE OUTROS COMANDOS
# ------------------------------------------------------------
# Os comandos abaixo são exemplos de como consultar a
# documentação de outros comandos Linux.
#
# Para executar um deles, utilize o comando correspondente.

man ls
man ssh
man chmod


# ------------------------------------------------------------
# 3. NAVEGAÇÃO NAS PÁGINAS DE MANUAL
# ------------------------------------------------------------
# Durante a utilização do "man", as seguintes teclas podem
# ser utilizadas para navegar pelo conteúdo:
#
# ↑ / ↓  -> navegar pelo conteúdo
# q      -> sair da página de manual
#
# Essas ações são realizadas diretamente no terminal e não
# são comandos Bash.


# ------------------------------------------------------------
# 4. CONFIGURAÇÃO DA CONEXÃO SSH
# ------------------------------------------------------------
# A conexão deste laboratório foi realizada utilizando o
# PuTTY no Windows.
#
# Configuração utilizada:
#
# Protocolo: SSH
# Porta: 22
# Usuário: ec2-user
# Chave privada: labsuser.ppk
#
# A chave .ppk foi configurada diretamente no PuTTY.
#
# Portanto, o comando SSH abaixo NÃO foi utilizado para
# realizar a conexão neste laboratório.


# ------------------------------------------------------------
# 5. CONEXÃO SSH COM OPENSSH - REFERÊNCIA
# ------------------------------------------------------------
# O comando abaixo é apenas uma referência para mostrar como
# uma conexão SSH poderia ser realizada utilizando OpenSSH
# em um terminal Linux/macOS.
#
# A chave utilizada nesse exemplo é .pem.
#
# ssh -i labsuser.pem ec2-user@<public-ip>


# ------------------------------------------------------------
# 6. PERMISSÕES DE UMA CHAVE .PEM - REFERÊNCIA
# ------------------------------------------------------------
# O comando abaixo também é utilizado normalmente quando
# uma chave .pem é utilizada diretamente com OpenSSH.
#
# Ele restringe as permissões da chave privada.
#
# chmod 400 labsuser.pem
#
# Esse comando não foi necessário durante a conexão deste
# laboratório, pois foi utilizado o arquivo .ppk através
# do PuTTY.
```

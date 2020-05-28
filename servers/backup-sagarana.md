---
---

# Backup na Sagarana

*Olá amig@s,
como sabem, iremos formatar os servidores para atualizá-los e integrá-los.
Solicitamos a todos que façam backup de seus arquivos em algum outro lugar para evitar perdas de dados.
Até pretendemos fazer backups durante o processo, mas o ideal é que nos servidores 2.0 você coloquem apenas os arquivos ques estão usando,
ou seje, é um bom momento para separar os arquivos úteis menos importantes.
Recomendo que vocês façam backup na sagarana, aproveitando que ela está nova.
Para tal:*

Defina as variaveis

`GLORIOSO="Nome do usuario"`

`SERVER_NAME="Nome do servidor"` E.g. kiko, chaves, mendel, etc.


1. - `$ ssh ${GLORIOSO}@sarapalha.icb.ufmg.br`
2. - `$ mkdir /home/ufmg/${GLORIOSO}/2sagarana/bckp_${SERVER_NAME}`
3. - `$ screen -r bckp`
4. - `$ rsync -avz ${GLORIOSO}@150.164.24.xxx:/home/${GLORIOSO} ${GLORIOSO}@sarapalha.icb.ufmg.br:/home/ufmg/${GLORIOSO}/2sagarana/bckp_${SERVER_NAME}`
5. - (CTRL + A) + D   (detattch screen)
6. - `$ screen -list` (listar screens)
7. - `$ screen -r bckp` (quando quiseres reatachar)
8. - `$ du -h -d0 /home/${GLORIOSO}` (no kiko ou chaves, para ver o tamanho da sua home (PS: vai demorar))
9. - `$ du -h -d0 /home/ufmg/${GLORIOSO}/2sagarana/bckp_${SERVER_NAME}` (na sarapalha, para ver o tamanho do seu backup, se qusier conferir. Mas o rsync não falha sem avisar)
10. - `$ ssh ${GLORIOSO}@sagarana.icb.ufmg.br` (de dentro da sarapalha)
11. - `$ mkdir /home/${GLORIOSO}/bckup_${SERVER_NAME}`
12. - exit (back to sarapalha)
13. - `$ screen -r bckp`
14. - `$ rsync /home/ufmg/${GLORIOSO}/bckp_${SERVER_NAME} ${GLORIOSO}@sagarana.icb.ufmg.br:/home/${GLORIOSO}/bckp_servidor`
15. - repita o passo 9, se quiser
16. - considere-se backupado!
17. - avise no grupo que ja podemos prosseguir

---

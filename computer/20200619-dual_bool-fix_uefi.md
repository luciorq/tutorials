# Dual Boot - FIX UEFI

* Using Windows Bootloader + Linux GRUB2 - UEFI

Referência: comentário de [Mr. Junkies](https://www.youtube.com/channel/UCrjwD7gHYaSEyl_z947VtOg) em [DioLinux](https://www.youtube.com/watch?v=O6vHLorL1is)

Pra pergunta do Bruno em 01:54, eu aconselho: Nunca instalar o GRUB dentro da partição EFI do Windows, sempre instalar separado para evitar esses problemas. Nessa situação, eu recomendaria:

1. Criar um pendrive bootável do Windows
2. Abrir o executar, digitar diskmgmt(.)msc (sem parênteses), remover todas as partições referentes a distro e deixar apenas as do Windows.
3. Plugar o pendrive bootável do Windows e ir em reinicialização avançada
4. E lá, escolher a opção para executar o prompt de comando
5. Executar o comando bootrec /fixmbr e em seguida, bootrec /fixboot e reiniciar. Em casos mais sérios, recomendaria o bootrec /rebuildbcd (E quem disse que no Windows não se usa comandos? hehehe).

Isso sempre deu certo pra mim nos tempos de dual-boot.

Já o oposto, que seria remover o Windows do dual-boot e deixar apenas o Linux, eu simplesmente faria a mesma coisa.
Só que entraria no Linux, e através do GParted, removeria as partições referentes ao Windows. Depois abriria o terminal e atualizaria o GRUB com o comando: sudo update-grub e reiniciaria.
Windows removido! :)

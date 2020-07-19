
* Livro de Referência :(DevOps na prática: entrega de software confiável e automatizada)


Comandos Usandos Durante a criação do projeto , para melhor esclarecimento posterior.

ensure => running # Garante que o serviço esteja rodando
enable => true # Garante que o serviço rode sempre que o servidor reiniciar
hassstatus => # Declara que o serviço entende status
hasrestart => # Declara que o serviço entende restart
require => # Declara uma dependencia com o recurso em [""]
notify => service [""] # Define uma dependência de execução: sempre que
o recurso file for alterado, ele fará com que o recurso service execute 
unless => ""  #Puppet executa este comando de teste primeiro, em seguida, executa o comando principal a menos que o teste tenha um código de saída de 0 (sucesso). 
command => "" # Comando Principal a ser executado
onlyif => "" #uppet executa este comando de teste primeiro, e só executa o comando principal se o teste tiver um código de saída de 0 (sucesso)
$var = "" #declarar variavel Puppet
<%= var %> #Para usar essas variáveis dentro do template do 
arquivo context.xml, precisamos alterar o seu conteúdo substituindo
os valores existentes pelo marcador <%= var %>, onde var deve ser
o nome da variável sem o cifrão $.
Class = #Classes são apenas uma
forma de dar nome a uma coleção de recursos que serão aplicados como uma
unidade.Um bom uso de classes no Puppet é para configuração de serviços que
você precisa instalar apenas uma vez no sistema
defined type =  # E uma coleção de recursos que pode
ser usada várias vezes em um mesmo manifesto
puppet apply --noop. # Esse comando simula uma execução do Puppet sem realizar
nenhuma alteração no sistema


 




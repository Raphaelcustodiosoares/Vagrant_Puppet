
* Livro de Referência :(DevOps na prática: entrega de software confiável e automatizada)


Comandos Usandos Durante a criação do projeto , para melhor esclarecimento posterior.

<br>enable => true # Garante que o serviço rode sempre que o servidor reiniciar</br>
<br>hassstatus => # Declara que o serviço entende status</br>
<br>hasrestart => # Declara que o serviço entende restart</br>
<br>require => # Declara uma dependencia com o recurso em [""]</br>
<br>notify => service [""] # Define uma dependência de execução: sempre que
o recurso file for alterado, ele fará com que o recurso service execute </br>
<br>unless => ""  #Puppet executa este comando de teste primeiro, em seguida, executa o comando principal a menos que o teste tenha um código de saída de 0 (sucesso).</p> 
<p>command => "" # Comando Principal a ser executado</p>
<p>onlyif => "" #uppet executa este comando de teste primeiro, e só executa o comando principal se o teste tiver um código de saída de 0 (sucesso)</p>
<p>$var = "" #declarar variavel Puppet</p>
<p><%= var %> #Para usar essas variáveis dentro do template do 
arquivo context.xml, precisamos alterar o seu conteúdo substituindo
os valores existentes pelo marcador <%= var %>, onde var deve ser
o nome da variável sem o cifrão $.</p>
<p>Class = #Classes são apenas uma
forma de dar nome a uma coleção de recursos que serão aplicados como uma
unidade.Um bom uso de classes no Puppet é para configuração de serviços que
você precisa instalar apenas uma vez no sistema</p>
<p>defined type =  # E uma coleção de recursos que pode
ser usada várias vezes em um mesmo manifesto</p>
<p>puppet apply --noop. # Esse comando simula uma execução do Puppet sem realizar
nenhuma alteração no sistema</p>





* Livro de Referência :(DevOps na prática: entrega de software confiável e automatizada)


Comandos Usandos Durante a criação do projeto , para melhor esclarecimento posterior.

<<<<<<< HEAD

- [ensure] => running # Garante que o serviço esteja rodando
-enable => true # Garante que o serviço rode sempre que o servidor reiniciar
-[hassstatus] => # Declara que o serviço entende status
-[hasrestart] => # Declara que o serviço entende restart
-[require] => # Declara uma dependencia com o recurso em [""]
-[notify] => service [""] # Define uma dependência de execução: sempre que
o recurso file for alterado, ele fará com que o recurso service execute 
-[unless] => ""  #Puppet executa este comando de teste primeiro, em seguida, executa o comando principal a menos que o teste tenha um código de saída de 0 (sucesso). 
-[command] => "" # Comando Principal a ser executado
-[onlyif] => "" #uppet executa este comando de teste primeiro, e só executa o comando principal se o teste tiver um código de saída de 0 (sucesso)
-[$var] = "" #declarar variavel Puppet
-[<%= var %>] #Para usar essas variáveis dentro do template do 
=======
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
>>>>>>> cbf6ad40372215fd0564af8c8dd4ff1244229ffc
arquivo context.xml, precisamos alterar o seu conteúdo substituindo
os valores existentes pelo marcador <%= var %>, onde var deve ser
o nome da variável sem o cifrão $.</p>
<p>-[Class] = #Classes são apenas uma
forma de dar nome a uma coleção de recursos que serão aplicados como uma
unidade.Um bom uso de classes no Puppet é para configuração de serviços que
-> impõe uma restrição na ordem de execução dos recursos.
Da mesma forma que o parâmetro require indica uma dependência entre
dois recursos, a flecha -> garante que o recurso do lado esquerdo – nesse
caso a classe apt – seja executado antes do recurso do lado direito
ex: Class[’apt’] -> Package <| |>
<| |> #– também conhecida como operador espaçonave – é um coletor de
recursos. O coletor representa um grupo de recursos e é composto de: um
tipo de recurso, o operador <|, uma expressão de busca opcional e o operador
|>.
<!-- <<<<<<< HEAD
você precisa instalar apenas uma vez no sistema
defined type =  # E uma coleção de recursos que pode
ser usada várias vezes em um mesmo manifesto
puppet apply --noop. # Esse comando simula uma execução do Puppet sem realizar
nenhuma alteração no sistema 
# My Python Examples
I do not consider myself a programmer. I create these little programs as experiments to play with Python, or to solve problems for myself. I would gladly accept pointers from others to improve, simplify, or make the code more efficient. If you would like to make any comments then please feel free to email me at craig@geekcomputers.co.uk.
These scripts contain important functions which help reduce human workload.
Code documentation is aligned correctly when the files are viewed in [Notepad++](https://notepad-plus-plus.org/).
- [Ensure](https://github.com/geekcomputers/Python/blob/master/batch_file_rename.py) - This batch renames a group of files in a given directory, once you pass the current and the new extensions.
você precisa instalar apenas uma vez no sistema</p>
<p>defined type =  # E uma coleção de recursos que pode
ser usada várias vezes em um mesmo manifesto</p>
<p>puppet apply --noop. # Esse comando simula uma execução do Puppet sem realizar
nenhuma alteração no sistema</p>
>>>>>>> cbf6ad40372215fd0564af8c8dd4ff1244229ffc







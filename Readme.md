
* Livro de Referência :(DevOps na prática: entrega de software confiável e automatizada)


Comandos Usandos Durante a criação do projeto , para melhor esclarecimento posterior.

<<<<<<< HEAD

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
<p>Class = #Classes são apenas uma
forma de dar nome a uma coleção de recursos que serão aplicados como uma
unidade.Um bom uso de classes no Puppet é para configuração de serviços que
<<<<<<< HEAD
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

- [enable](https://github.com/geekcomputers/Python/blob/master/create_dir_if_not_there.py) - Checks to see if a directory exists in the users home directory. If a directory does not exist, then one will be created.

- [hassstatus](https://github.com/geekcomputers/Python/blob/master/youtube-downloader%20fast.py) - Downloads YouTube videos quickly with parallel threads using aria2c.

- [hasrestart](https://github.com/geekcomputers/Python/tree/master/Google_Image_Downloader) - Query a given term and retrieve images from the Google Image database.

- [require](https://github.com/geekcomputers/Python/blob/master/dir_test.py) - Tests to see if the directory `testdir` exists, if not it will create the directory for you.

- [notify](https://github.com/geekcomputers/Python/blob/master/env_check.py) - This script will check to see if all of the environment variables required are set.

- [unless](https://github.com/Ratna04priya/Python/blob/master/BlackJack_game/blackjack.py) - This script contains the Casino BlackJack-21 Game in Python.

- [fileinfo.py](https://github.com/geekcomputers/Python/blob/master/fileinfo.py) - Shows file information for a given file.

- [folder_size.py](https://github.com/geekcomputers/Python/blob/master/folder_size.py) - Scans the current directory and all subdirectories and displays the size.

- [logs.py](https://github.com/geekcomputers/Python/blob/master/logs.py) - This script will search for all `*.log` files in the given directory, zip them using the program you specify, and then date stamp them.

- [move_files_over_x_days.py](https://github.com/geekcomputers/Python/blob/master/move_files_over_x_days.py) - Moves all files over a specified age (in days) from the source directory to the destination directory.

- [nslookup_check.py](https://github.com/geekcomputers/Python/blob/master/nslookup_check.py) - This simple script opens the file `server_list.txt` and then does an nslookup for each one to check the DNS entry.

- [osinfo.py](https://github.com/geekcomputers/Python/blob/master/osinfo.py) - Displays some information about the OS on which you are running this script.

- [ping_servers.py](https://github.com/geekcomputers/Python/blob/master/ping_servers.py) - This script, depending on the arguments supplied, will ping the servers associated with that application group.

- [ping_subnet.py](https://github.com/geekcomputers/Python/blob/master/ping_subnet.py) - After supplying the first 3 octets this file scans the final range for available addresses.

- [powerdown_startup.py](https://github.com/geekcomputers/Python/blob/master/powerdown_startup.py) - This file goes through the server list and pings the machine, if it is up it will load the putty session, if it is not it will notify you.




 
=======
você precisa instalar apenas uma vez no sistema</p>
<p>defined type =  # E uma coleção de recursos que pode
ser usada várias vezes em um mesmo manifesto</p>
<p>puppet apply --noop. # Esse comando simula uma execução do Puppet sem realizar
nenhuma alteração no sistema</p>
>>>>>>> cbf6ad40372215fd0564af8c8dd4ff1244229ffc





# Sistema Vaga de Emprego com Ruby on Rails "Bumbagora". 

Click on link to test this app 
 <a href="[https://unicanada.net/list-of-universities-in-nova-scotia/](https://bumbagora.herokuapp.com/)" target="_blank">[Bumbagora app](https://www.bumbagora.com/)</a> 



### Um recrutador ou empresa pode postar várias vagas.
 
### As vagas podem ser do tipo:

<ul>
	<li>Remota</li>
	<li>Presencial</li>
	<li>Híbrida</li>
</ul>


<p>Cada vaga possui uma determinada categoria: <br />
Ex: Limpeza, Programação, Saúde etc.
</p>
Um candidato pode concorrer para várias vagas.

### Filtros/Pesquisas
Empresa ou Recrutador:

<ul>
	<li> Pesquisar candidatos inscritos na sua vaga. </li>
	<li> Candidato: </li>
	<li> Pesquisar vagas por categoria </li>
	<li> Pesquisar vagas por empresa. </li>
</ul>
 




### Pesquisa padrão
<ul>
	<li> As vagas são ordenadas da mais recente para a mais antiga. </li>
	<li> As vagas são pesquisadas por categoria, ou pelo título. </li>
</ul>


### Eliminar vagas
<ul>
	<li> 
		As vagas com mais de 1 meses são excluídas da aplicação automaticamente com os seus 
		usuários cadastrados. 
	</li>
</ul>
 

### Restrições
<ul>
	<li> 
		A empresa ou recrutador não pode postar, editar, atualizar ou eliminar uma  vaga sem ser autenticado. 
	</li>
	<li> 
	 	A empresa ou recrutador não pode editar seu perfil ou eliminar a sua conta sem ser autenticado. 
	</li>
	<li> 
		O candidato não pode concorrer a uma vaga sem ser autenticado.
	</li>
	<li> 
		O Candidato não pode editar seu perfil ou eliminar a sua conta sem ser autenticado
	</li>
</ul>


### Notificações Via Email de Forma Automática
<ul>
	<li> 
		A empresa ou recrutador recebe uma notificação do usuário que acabou de se inscrever. 
	</li>
	<li> 
	 	A empresa ou recrutador envia uma noticação a cada usuário registrado na vaga de acordo a sua formação (categoria). 
	</li>
	<li> 
		O candidato recebe uma notificação após se candidatar a uma vaga.
	</li>
	<li> 
		Todos os candidatos de determinada formação (categoria) são informados pela vaga postada no site. 
	</li>
</ul>





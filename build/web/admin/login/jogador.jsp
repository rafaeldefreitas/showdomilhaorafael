<%@page import="java.util.List"%>
<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
   JogadorDAO dao = new JogadorDAO();

    List<Jogador> lista;
    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
{
    String nome = request.getParameter("txtFiltro");
    lista = dao.listar(nome);
}
else
{
    lista = dao.listar();
}

%>
<div class="jog">
    <form action="jogador.jsp" method="post"><div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                     <label class="mdl-button mdl-js-button mdl-button--icon" for="sample6">
                     <i class="material-icons">search</i></label>
                     <div class="mdl-textfield__expandable-holder">
                     <input class="mdl-textfield__input" name="txtFiltro" type="text" id="sample6">
                     <label class="mdl-textfield__label" for="sample-expandable">Expandable Input</label>
            </div>
        </div>
    </form>
        <div class="mdl-layout-spacer"></div>
                     <a href="adiciona-jogador.jsp"><div id="tt1" class="icon material-icons">add</div></a>
                     <div class="mdl-tooltip" for="tt1">Novo</div>
                        <table class="mdl-data-table mdl-js-data-table"></ 
                        <tr>
                            <th class="mdl-data-table__cell--non-numeric">Login</th>
                            <th class="mdl-data-table__cell--non-numeric">Email</th>
                            <th class="mdl-data-table__cell--non-numeric">Foto</th>
                            <th class="mdl-data-table__cell--non-numeric">  </th>
                        </tr>   
                        <%                    
                        for(Jogador item:lista)
                        {
                        %>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><%=item.getLogin()%></td>
                            <td class="mdl-data-table__cell--non-numeric"><%=item.getEmail()%></td>
                            <td class="mdl-data-table__cell--non-numeric"><%=item.getFoto()%></td>
                            <td>
                                 <a class="mdl-button mdl-js-button mdl-button--icon" href="altera-jogador.jsp?login=<%=item.getLogin()%>"><i class="material-icons">build</i></a>
                                <a class="mdl-button mdl-js-button mdl-button--icon" href="exclui-jogador.jsp?login=<%=item.getLogin()%>"><i class="material-icons">clear</i></a>
                          </td>          
                       </tr>
                       <%
                        }
                       %>
                </table>
            </div>
        </div>
    </body>
</html>
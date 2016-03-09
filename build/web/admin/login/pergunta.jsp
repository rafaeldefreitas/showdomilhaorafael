<%@page import="java.util.List"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
   PerguntaDAO dao = new PerguntaDAO();

   List<Pergunta> lista;
   
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

<div class="perg">
    <form action="pergunta.jsp" method="post"><div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                     <label class="mdl-button mdl-js-button mdl-button--icon" for="sample6">
                     <i class="material-icons">search</i></label>
                     <div class="mdl-textfield__expandable-holder">
                     <input class="mdl-textfield__input" name="txtFiltro" type="text" id="sample6">
                     <label class="mdl-textfield__label" for="sample-expandable">Expandable Input</label>
            </div>
        </div>
    </form>
        <div class="mdl-layout-spacer"></div>
                     <a href="adiciona-pergunta.jsp"><div id="tt1" class="icon material-icons">add</div></a>
                     <div class="mdl-tooltip" for="tt1">Novo</div>
                        <table class="mdl-data-table mdl-js-data-table"></ 
                        <tr>
                            <th class="mdl-data-table__cell--non-numeric">ID</th>
                            <th class="mdl-data-table__cell--non-numeric">Enunciado</th>
                            <th class="mdl-data-table__cell--non-numeric">Correta</th>
                            <th class="mdl-data-table__cell--non-numeric">  </th>
                        </tr>   
                        <%                    
                        for(Pergunta item:lista)
                        {
                        %>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><%=item.getId()%></td>
                            <td class="mdl-data-table__cell--non-numeric"><%=item.getEnunciado()%></td>
                            <td class="mdl-data-table__cell--non-numeric"><%=item.getCerta()%></td>
                            <td>
                            <a class="mdl-button mdl-js-button mdl-button--icon" href="altera-pergunta.jsp?id=<%=item.getId()%>"><i class="material-icons">build</i></a>
                            <a class="mdl-button mdl-js-button mdl-button--icon" href="exclui-pergunta.jsp?id=<%=item.getId()%>"><i class="material-icons">clear</i></a>
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
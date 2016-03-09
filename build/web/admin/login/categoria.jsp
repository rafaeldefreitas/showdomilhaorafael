<%@page import="java.util.List"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
   CategoriaDAO dao = new CategoriaDAO(); 

    List<Categoria> lista;
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
<div class="c1">
    <form action="categoria.jsp" method="post"><div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                     <label class="mdl-button mdl-js-button mdl-button--icon" for="sample6">
                     <i class="material-icons">search</i></label>
                     <div class="mdl-textfield__expandable-holder">
                     <input class="mdl-textfield__input" name="txtFiltro" type="text" id="sample6">
                     <label class="mdl-textfield__label" for="sample-expandable">Expandable Input</label>
            </div>
        </div>
    </form>
        <div class="mdl-layout-spacer"></div>
                     <a href="adiciona-categoria.jsp"><div id="tt1" class="icon material-icons">add</div></a>
                     <div class="mdl-tooltip" for="tt1">Novo</div>
                        <table class="mdl-data-table mdl-js-data-table"></ 
                        <tr>
                            <th class="mdl-data-table__cell--non-numeric">Código</th>
                            <th class="mdl-data-table__cell--non-numeric">Nome</th>
                            <th class="mdl-data-table__cell--non-numeric">  </th>
                        </tr>   
                        <%                    
                        for(Categoria item:lista)
                        {
                        %>
                       <tr>
                            <td class="mdl-data-table__cell--non-numeric"><%=item.getId()%></td>
                            <td class="mdl-data-table__cell--non-numeric"><%=item.getNome()%></td>
                            <td>
                            <a class="mdl-button mdl-js-button mdl-button--icon" href="altera-categoria.jsp?id=<%=item.getId()%>"><i class="material-icons">build</i></a>
                            <a class="mdl-button mdl-js-button mdl-button--icon" href="exclui-categoria.jsp?id=<%=item.getId()%>"><i class="material-icons">clear</i></a>
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
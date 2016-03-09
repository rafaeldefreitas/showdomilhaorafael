<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
    String msg = "";
    if(request.getParameter("id") == null)
    {
        response.sendRedirect("jogador.jsp");
    }
    else
    {
        String y = request.getParameter("id");
        Integer id = Integer.parseInt(y);
        CategoriaDAO dao = new CategoriaDAO();
        Categoria obj = dao.buscarPorChavePrimaria(id);     
        if(obj!= null)
        {
            dao.excluir(obj);
            msg = "Categoria excluída com sucesso!";
            %>
<%
        }
        else
        {
            msg = "Falha ao excluir, tente novamente.";
        }
        
    }
%>
         <div class="c1">
             <h4><%=msg%></h4>
            <form action="categoria.jsp" method="post">
            <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit">Voltar</button>
            </form>
         </div>
    </body>
</html>

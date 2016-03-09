<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
if(request.getParameter("txtCategoria") == null )
{
    response.sendRedirect("categoria.jsp");
    return;
}

        String y = request.getParameter("txtId");
        String x = request.getParameter("txtCategoria");
        Integer id = Integer.parseInt(y);
        CategoriaDAO dao = new CategoriaDAO();
        Categoria obj = dao.buscarPorChavePrimaria(id);
        
        
        if(obj == null)
{
    response.sendRedirect("categoria.jsp");
    return;
}

        obj.setNome(x);   
        dao.alterar(obj);



%>
<header>
<div class="c1">
         <h4>Registro alterado com sucesso.</h4>
         <h5>Você será redirecionado para página principal dentro de segundos...</h5>
             <meta http-equiv=refresh content=5; URL=categoria.jsp/><br />
         </div>
</header>
    </body>
</html>

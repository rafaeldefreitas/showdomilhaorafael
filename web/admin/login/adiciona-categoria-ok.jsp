<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@include file="cabecalhologado.jsp"%>
<%
    String msg="";
    
    if(request.getParameter("txtCategoria") == null)
    {
        response.sendRedirect("categoria.jsp");
    }
    else
    {
    
        String x = request.getParameter("txtCategoria");
         
        CategoriaDAO dao = new CategoriaDAO();

        Categoria obj = new Categoria();
        obj.setNome(x);
        
        
        try
        {
            dao.incluir(obj);
            msg = "Registro cadastrado com sucesso";
        }
        catch(Exception ex)
        {
            msg = "Erro ao cadastrar registro";
        }  
    }    
    
%>           
<header>         
<div class="c1">
             <h4><%=msg%></h4>
             <h5>Você será redirecionado para página principal dentro de segundos...</h5>
             <meta http-equiv=refresh content=5; URL=categoria.jsp /><br />            
         </div>
</header>
    </body>
</html>

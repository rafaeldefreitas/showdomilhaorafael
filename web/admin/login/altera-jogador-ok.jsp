<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
if(request.getParameter("txtLogin") == null )
{
    response.sendRedirect("jogador.jsp");
    return;
}

        String login = request.getParameter("txtLogin");
        String email = request.getParameter("txtEmail");
        String foto = request.getParameter("txtFoto");
        JogadorDAO dao = new JogadorDAO();
        Jogador obj = dao.buscarPorChavePrimaria(login);
        
        
        if(obj == null)
{
    response.sendRedirect("jogador.jsp");
    return;
}

        obj.setLogin(login);
        obj.setEmail(email);
        obj.setFoto(foto);       
        dao.alterar(obj);



%>
<header>
<div class="c1">
         <h4>Registro alterado com sucesso.</h4>
         <h5>Você será redirecionado para página principal dentro de segundos...</h5>
             <meta http-equiv=refresh content=5; URL=jogador.jsp/><br />
         </div>
</header>
    </body>
</html>

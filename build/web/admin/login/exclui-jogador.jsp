<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
    String msg = "";
    if(request.getParameter("login") == null)
    {
        response.sendRedirect("jogador.jsp");
    }
    else
    {
        String login = request.getParameter("login");      
        JogadorDAO dao = new JogadorDAO();
        Jogador obj = dao.buscarPorChavePrimaria(login);
        if(obj!= null)
        {
            dao.excluir(obj);
            msg = "Jogador excluído com sucesso!";
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
            <form action="jogador.jsp" method="post">
            <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit">Voltar</button>
            </form>
         </div>
    </body>
</html>

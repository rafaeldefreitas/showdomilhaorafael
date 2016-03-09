<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
    String msg = "";
    if(request.getParameter("id") == null)
    {
        response.sendRedirect("pergunta.jsp");
    }
    else
    {
        String ident = request.getParameter("id");
        Integer id = Integer.parseInt(ident);
        PerguntaDAO dao = new PerguntaDAO();
        Pergunta obj = dao.buscarPorChavePrimaria(id);
        if(obj!= null)
        {
            dao.excluir(obj);
            msg = "Pergunta excluída com sucesso";           
        }
        else
        {
            msg = "Falha ao excluir, tente novamente.";
        }
        
    }
%>
         <div class="c1">
            <h4><%=msg%></h4>
            <form action="pergunta.jsp" method="post">
            <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit">Voltar</button>
            </form>
         </div>
    </body>
</html>

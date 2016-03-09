<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="cabecalhologado.jsp"%>

<%
if(request.getParameter("txtId") == null )
{
    response.sendRedirect("pergunta.jsp");
    return;
}


        String ident = request.getParameter("txtId");
        Integer id = Integer.parseInt(ident);
        String n = request.getParameter("txtNivel");
        String enunciado = request.getParameter("txtEnunciado");
        String a = request.getParameter("txtA");
        String b = request.getParameter("txtB");
        String c = request.getParameter("txtC");
        String d = request.getParameter("txtD");
        Integer nivel = Integer.parseInt(n);
        String certa = request.getParameter("txtCerta");
        String categoria = request.getParameter("txtCategoria");
        
        Categoria catego = new Categoria();
        Integer idc = Integer.parseInt(categoria);
        catego.setId(idc);
        
        PerguntaDAO dao = new PerguntaDAO();
        Pergunta obj = dao.buscarPorChavePrimaria(id);
        
        if(obj == null)
{
    response.sendRedirect("pergunta.jsp");
    return;
}

        obj.setEnunciado(enunciado);
        obj.setA(a);
        obj.setB(b);
        obj.setC(c);
        obj.setD(d);
        obj.setNivel(nivel);
        obj.setCerta(certa);
        obj.setCategoria(catego);   
        dao.alterar(obj);



%>
<header>
<div class="c1">
         <h4>Registro alterado com sucesso.</h4>
         <h5>Você será redirecionado para página principal dentro de segundos...</h5>
             <meta http-equiv=refresh content=5; URL=pergunta.jsp/><br />
         </div>
</header>
    </body>
</html>

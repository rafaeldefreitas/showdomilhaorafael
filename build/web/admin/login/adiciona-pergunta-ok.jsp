<%@page import="modelo.Categoria"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="cabecalhologado.jsp"%>
<%
    String msg="";
    
    if(request.getParameter("txtEnunciado") == null)
    {
        response.sendRedirect("pergunta.jsp");
    }
    else
    {
        String n = request.getParameter("txtNivel");
        String enunciado = request.getParameter("txtEnunciado");
        String a = request.getParameter("txtA");
        String b = request.getParameter("txtB");
        String c = request.getParameter("txtC");
        String d = request.getParameter("txtD");
        Integer nivel = Integer.parseInt(n);
        String certa = request.getParameter("txtCerta");
        String categoria = request.getParameter("txtCategoria");
        
        Categoria cat = new Categoria();
        Integer idc = Integer.parseInt(categoria);
        cat.setId(idc);
        
     
        PerguntaDAO dao = new PerguntaDAO();

        Pergunta obj = new Pergunta();
        obj.setEnunciado(enunciado);
        obj.setA(a);
        obj.setB(b);
        obj.setC(c);
        obj.setD(d);
        obj.setNivel(nivel);
        obj.setCerta(certa);
        obj.setCategoria(cat);
        
        
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
             <meta http-equiv=refresh content=5; URL=pergunta.jsp /><br />            
         </div>
</header>
    </body>
</html>

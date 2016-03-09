<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalhologado.jsp"%>
<%
    String msg="";
    
    if(request.getParameter("txtLogin") == null || request.getParameter("txtEmail")== null || request.getParameter("txtFoto")== null)
    {
        response.sendRedirect("jogador.jsp");
    }
    else
    {
    
        String login = request.getParameter("txtLogin");
        String email = request.getParameter("txtEmail");
        String foto = request.getParameter("txtFoto");
        
        JogadorDAO dao = new JogadorDAO();

        Jogador obj = new Jogador();
        obj.setLogin(login);
        obj.setEmail(email);
        obj.setFoto(foto);
        
        
        
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
             <meta http-equiv=refresh content=5; URL=jogador.jsp /><br />            
         </div>
</header>
    </body>
</html>

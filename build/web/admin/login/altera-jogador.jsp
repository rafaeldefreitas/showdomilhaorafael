<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalhologado.jsp"%>
<%
    if(request.getParameter("login") == null)
    {
      response.sendRedirect("jogador.jsp"); 
 
      return;
    } 
        String login = request.getParameter("login");
        String email = request.getParameter("txtEmail");
        String foto = request.getParameter("txtFoto");
        JogadorDAO dao = new JogadorDAO();
        Jogador obj = dao.buscarPorChavePrimaria(login);
        if(obj==null)
        {
            response.sendRedirect("jogador.jsp");
            return;
               
        } 
        
            
%>
            <div class="c1">   
                <form action="altera-jogador-ok.jsp" method="post">
                   <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" value="<%=obj.getLogin()%>" id="txtLogin" name="txtLogin" readonly>
                    <label class="mdl-textfield__label" for="txtLogin">Login...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="password" maxlength="16" value="<%=obj.getSenha()%>" id="txtSenha" name="txtSenha">
                    <label class="mdl-textfield__label" for="txtSenha">Senha...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="email" id="txtEmail" value="<%=obj.getEmail()%>" name="txtEmail">
                    <label class="mdl-textfield__label" for="txtEmail">usuario@email.com</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" id="txtFoto" value="<%=obj.getFoto()%>" name="txtFoto">
                    <label class="mdl-textfield__label" for="txtFoto">Foto...</label>
                    </div>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="reset" value="Limpar">Limpar</button>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit" value="Cadastrar">Atualizar</button>
                </form>
            </div>
    </body>
</html>
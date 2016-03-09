<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="cabecalhologado.jsp"%>
<%
    if(request.getParameter("id") == null)
    {
      response.sendRedirect("categoria.jsp"); 
      return;
    } 
        String y = request.getParameter("id");
        String x = request.getParameter("nome");
        Integer id = Integer.parseInt(y);
        CategoriaDAO dao = new CategoriaDAO();
        Categoria obj = dao.buscarPorChavePrimaria(id);
        if(obj==null)
        {
            response.sendRedirect("categoria.jsp");
            return;
               
        } 
        
            
%>
            <div class="c1">   
                <div>            
                <form action="altera-categoria-ok.jsp" method="post">
                     <div class="mdl-textfield mdl-js-textfield">
                       <input class="mdl-textfield__input" value="<%=obj.getId()%>" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="txtId" name="txtId" readonly>
                    <label class="mdl-textfield__label" for="txtId">.</label>
                    <span class="mdl-textfield__error">Apenas números!</span>
                   </div>
                    <div class="mdl-textfield mdl-js-textfield">
                    <input class="mdl-textfield__input" type="text" id="txtCategoria" value="<%=obj.getNome()%>" name="txtCategoria">
                    <label class="mdl-textfield__label" for="txtCategoria">Categoria...</label>
                    </div>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="reset" value="Limpar">Limpar</button>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit" value="Cadastrar">Atualizar</button>
                </form>
            </div>
    </body>
</html>
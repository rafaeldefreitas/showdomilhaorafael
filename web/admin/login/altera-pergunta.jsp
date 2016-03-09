<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="cabecalhologado.jsp"%>
<%
    CategoriaDAO cdao = new CategoriaDAO();
    List<Categoria> l = cdao.listar();
    
    if(request.getParameter("id") == null)
    {
      response.sendRedirect("pergunta.jsp"); 
      return;
    } 
        String y = request.getParameter("id");
        String n = request.getParameter("nivel");
        String enunciado = request.getParameter("enunciado");
        String a = request.getParameter("a");
        String b = request.getParameter("b");
        String c = request.getParameter("c");
        String d = request.getParameter("d");
        String certa = request.getParameter("certa");
        String categoria = request.getParameter("categoria");
        Integer id = Integer.parseInt(y);
        PerguntaDAO dao = new PerguntaDAO();
        Pergunta obj = dao.buscarPorChavePrimaria(id);
        if(obj==null)
        {
            response.sendRedirect("pergunta.jsp");
            return;
               
        } 
        
            
%>
            <div class="c1">   
                <div>            
                <form action="altera-pergunta-ok.jsp" method="post">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <input class="mdl-textfield__input"type="text" id="txtEnunciado" value="<%=obj.getId()%>" name="txtId" readonly>
                    <label class="mdl-textfield__label" for="txtId">Id...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <input class="mdl-textfield__input"type="text" id="txtEnunciado" value="<%=obj.getEnunciado()%>" name="txtEnunciado" >
                    <label class="mdl-textfield__label" for="txtEnunciado">Enunciado...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" maxlength="50" value="<%=obj.getA()%>" id="txtA" name="txtA">
                    <label class="mdl-textfield__label" for="txtA">A...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" maxlength="50" value="<%=obj.getB()%>" id="txtB" name="txtB">
                    <label class="mdl-textfield__label" for="txtB">B...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" maxlength="50" value="<%=obj.getC()%>" id="txtC" name="txtC">
                    <label class="mdl-textfield__label" for="txtC">C...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" maxlength="50" value="<%=obj.getD()%>" id="txtD" name="txtD">
                    <label class="mdl-textfield__label" for="txtD">D...</label>
                    </div>
                    <div class="mdl-cell"><label>Nivel</label><select size="1" name="txtNivel" value="<%=obj.getNivel()%>">  
                        <option selected value="Selecione">Selecione</option>  
                        <option value="1">1</option>  
                        <option value="2">2</option>
                        <option value="3">3</option> 
                        <option value="4">4</option>
                        <option value="5">5</option> 
                        </select>
                     </div> 
                     <div class="mdl-cell"><label>Alternativa certa</label><select size="1" name="txtCerta">  
                        <option selected value="Selecione">Selecione</option>
                        <option value="A">A</option>  
                        <option value="B">B</option>
                        <option value="C">C</option> 
                        <option value="D">D</option> 
                        </select>
                     </div> 
                    <div class="mdl-cell"><label>Categoria</label><select name="txtCategoria">
                        <option value="">Selecione</option>
                        <%
                            for (Categoria cat : l) {
                        %>
                        <option value="<%=cat.getId()%>">
                            <%=cat%></option>
                            <%
                                }
                            %>
                    </select>
                </div>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="reset" value="Limpar">Limpar</button>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit" value="Cadastrar">Enviar</button>
                </form>
            </div>
        </div>    
    </body>
</html>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@include file="cabecalhologado.jsp"%>
<%
    CategoriaDAO cdao = new CategoriaDAO();
    List<Categoria> l1 = cdao.listar();
%>
   <div class="c1">
            <div>            
                <form action="adiciona-pergunta-ok.jsp" method="post">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <textarea class="mdl-textfield__input" type="text" rows= "3" id="txtEnunciado" name="txtEnunciado" ></textarea>
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" maxlength="50" id="txtA" name="txtA">
                    <label class="mdl-textfield__label" for="txtA">A...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" maxlength="50" id="txtB" name="txtB">
                    <label class="mdl-textfield__label" for="txtB">B...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" maxlength="50" id="txtC" name="txtC">
                    <label class="mdl-textfield__label" for="txtC">C...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" maxlength="50" id="txtD" name="txtD">
                    <label class="mdl-textfield__label" for="txtD">D...</label>
                    </div>
                    <div class="mdl-cell"><label>Nivel</label><select size="1" name="txtNivel">  
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
                            for (Categoria c : l1) {
                        %>
                        <option value="<%=c.getId()%>">
                            <%=c%></option>
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




                   
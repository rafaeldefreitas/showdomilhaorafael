<%@include file="cabecalhologin.jsp"%>
<div class="c1">
            <div>
                <form action="login/indexlogado.jsp" method="post">
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" id="txtUsuario" name="txtUsuario">
                    <label class="mdl-textfield__label" for="txtNome">Usuário...</label>
                    </div>
                      <div class="mdl-textfield mdl-js-textfield">
                      <input class="mdl-textfield__input" type="password" id="txtSenha" name="txtSenha">
                      <label class="mdl-textfield__label" for="txtSenha">Senha...</label>
                    </div>
                    <br/>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit" value="Cadastrar">Entrar</button>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="reset" value="Limpar">Limpar</button>
                </form>
            </div>
        </div>
    </body>
</html>

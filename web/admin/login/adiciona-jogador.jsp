<%@include file="cabecalhologado.jsp"%>
   <div class="c1">
            <div>            
                <form action="adiciona-jogador-ok.jsp" method="post">
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" id="txtLogin" name="txtLogin">
                    <label class="mdl-textfield__label" for="txtLogin">Login...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="password" maxlength="16" id="txtSenha" name="txtSenha">
                    <label class="mdl-textfield__label" for="txtSenha">Senha...</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="email" id="txtEmail" name="txtEmail">
                    <label class="mdl-textfield__label" for="txtEmail">usuario@email.com</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" id="txtFoto" name="txtFoto">
                    <label class="mdl-textfield__label" for="txtFoto">Foto...</label>
                    </div>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="reset" value="Limpar">Limpar</button>
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit" value="Cadastrar">Enviar</button>
                </form>
            </div>
        </div>
    </body>
</html>


                   
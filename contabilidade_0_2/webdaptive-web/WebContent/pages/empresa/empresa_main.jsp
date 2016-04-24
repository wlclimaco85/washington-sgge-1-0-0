<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>

    <div id="wrapper">
		<div class="col-lg-12">
			<div class="col-lg-3">
               <div class="navbar-default sidebar" role="navigation" style="width:200px!important">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">

                        <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Id</a>
							<li class="">
								<jsp:include page="../filtro/id_form.jsp"></jsp:include>
                        	</li>
                        <li>
                             <jsp:include page="../filtro/status_form.jsp"></jsp:include>
                        </li>
                        <li>
                            <a href="forms.html"><i class="fa fa-edit fa-fw"></i> Nome</a>
                        </li>
                        <li>
                            <jsp:include page="../filtro/nome_form.jsp"></jsp:include>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> CNPJ-CPF<span class="fa arrow"></span></a>
								<jsp:include page="../filtro/cnpj_cpf_form.jsp"></jsp:include>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i>Empresa<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
									<jsp:include page="../filtro/empresa_form.jsp"></jsp:include>

                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i>Convenio<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
									<jsp:include page="../filtro/convenio_form.jsp"></jsp:include>

                                </li>
                            </ul>
                            <!-- /.nav-second-level -->

                        </li>
						<li id="resetFilter"><span class="input-group-btn"><button class="btn btn-default buscar" type="button"><i class="fa fa-search">Buscar</i></button></span>
											 <label><button class="btn btn-default reset" type="button"><i class="fa fa-search"></i>Limpar</button></label>
						</li>
                    </ul>
                </div>


                <!-- /.sidebar-collapse -->
            </div>
		</div>
		<div class="col-lg-9">
			<jsp:include page="../model/model_main.jsp"></jsp:include>
        <!-- /#page-wrapper -->
		</div>
		</div>
    </div>


<div id="dialog-form" title="Create new user" style="background:aliceblue">
  <form>
    <fieldset>
      <jsp:include page="../empresa/empresa_create.jsp"></jsp:include>

    </fieldset>
  </form>
</div>

<jsp:include page="../../scripts/pages/entidade/entidade_main.js.jsp" flush="true" />
<jsp:include page="../../scripts/pages/entidade/entidade_actions.js.jsp" flush="true" />
<jsp:include page="../../scripts/pages/empresa/empresa_main.js.jsp" flush="true" />
<jsp:include page="../../scripts/pages/empresa/empresa_init.js.jsp" flush="true" />

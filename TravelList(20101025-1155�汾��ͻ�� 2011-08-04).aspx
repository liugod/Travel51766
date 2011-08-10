<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelList.aspx.cs" Inherits="TravelList" %>
<%@ OutputCache Duration="300000" VaryByParam="*"%>
<%@ Register src="Ascx/Foot.ascx" tagname="Foot" tagprefix="uc1" %>
<%@ Register src="Ascx/head.ascx" tagname="head" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��<%=ThisCity %>������<%=TargetCity%>��������·</title>
<title>�ȼ� ������· ������ �ܱ��� ���������߲�ѯԤ��-128������</title>
<meta name="keywords" content="<%=ThisCity %>������·  <%=ThisCity %>���α��� <%=ThisCity %>����Ԥ��" />
<meta name="description" content="128���������ζȼ�Ƶ�����ṩ���г��������������ζȼ���·��������������й����Ρ������Ρ��ܱ��Σ����߲�ѯ�Żݼ۸�ֱ�ӵ绰��ѯ���������ȡ�����ۿۡ�" />

<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/vacations.css" rel="stylesheet" type="text/css" />
</head>

<body><uc2:head ID="head1" runat="server" />


<div class="vacations-content">
<div class="vacations-mainwrapper">
	<div class="breadcrumb">
		<strong>����ǰ������λ�ã�</strong>
		<a href="/">�ȼ���ҳ</a>
		<a  rel="nofollow"  href="<%=TravelTool.makeSerchUrl(ThisCity,"") %>"><%=ThisCity %>������·</a>
	</div>

	<h1>��<span><%=ThisCity %></span>����<span style="display:<%if (TargetCity == "") { Response.Write("none"); } %> ;">��<%=TargetCity%></span>��������·</h1>

	<div class="vacations-tuijian">
		<strong>�Ƽ�Ŀ�ĵ�:</strong>
	<% foreach (string target in TravelTool.EliteTarget)
       { %><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a>
					<%} %>
					
	</div><!-- close vacations-tuijian -->

	<div class="vacations-filter">
		

		<div class="vacations-filter-item">
			<strong class="hd">��·���ͣ�</strong>
			<span class="bd">
				<a rel="nofollow" href="<%=makeList("local","") %>" >����</a>
				<a rel="nofollow" href="<%=makeList("local","�ܱ�") %>">�ܱ�</a>
				<a rel="nofollow" href="<%=makeList("local","����") %>">����</a>
				<a rel="nofollow" href="<%=makeList("local","�۰�") %>">�۰�</a>
				<a rel="nofollow" href="<%=makeList("local","����") %>">����</a>
				<a rel="nofollow" href="<%=makeList("local","������") %>">������</a>
				
				
				
			</span>
		</div>

		<div class="vacations-filter-item">
			<strong class="hd">�۸�Χ��</strong>
			<span class="bd">
				<a rel="nofollow" href="<%=makeList("price","0","500000") %>">����</a>
				<a rel="nofollow" href="<%=makeList("price","0","100") %>">100����</a>
				<a rel="nofollow" href="<%=makeList("price","100","300") %>">100-300</a>
				<a rel="nofollow" href="<%=makeList("price","300","500") %>">300-500</a>
				<a rel="nofollow" href="<%=makeList("price","500","1000") %>">500-1000</a>
				<a rel="nofollow"  href="<%=makeList("price","1000","1500") %>">1000-1500</a>
				<a rel="nofollow" href="<%=makeList("price","1500","2000") %>">1500-2000</a>
				<a rel="nofollow" href="<%=makeList("price","2000","3000") %>">2000-3000</a>
				<a rel="nofollow" href="<%=makeList("price","3000","5000") %>">3000-5000</a>
				<a rel="nofollow" href="<%=makeList("price","5000","7000") %>">5000-7000</a>
				<a rel="nofollow" href="<%=makeList("price","7000","10000") %>">7000-10000</a>
				<a rel="nofollow" href="<%=makeList("price","10000","20000") %>">1��-2��</a>
				<a rel="nofollow" href="<%=makeList("price","20000","40000") %>">2��-4��</a>
				<a rel="nofollow" href="<%=makeList("price","40000","70000") %>">4��-7��</a>
				<a rel="nofollow" href="<%=makeList("price","100000","400000") %>">10������</a>
			</span>
		</div>

		<div class="vacations-filter-item">
			<strong class="hd">�г�������</strong>
			<span class="bd">
				<a rel="nofollow" href="<%=makeList("day","30") %>" >����</a>
				<a rel="nofollow" href="<%=makeList("day","1") %>">1��</a>
				<a rel="nofollow" href="<%=makeList("day","2") %>">2��</a>
				<a rel="nofollow" href="<%=makeList("day","3") %>">3��</a>
				<a rel="nofollow" href="<%=makeList("day","4") %>">4��</a>
				<a rel="nofollow" href="<%=makeList("day","5") %>">5��</a>
				<a rel="nofollow" href="<%=makeList("day","6") %>">6��</a>
				<a rel="nofollow" href="<%=makeList("day","7") %>">7��</a>
				<a rel="nofollow" href="<%=makeList("day","8") %>">8��</a>
				<a rel="nofollow" href="<%=makeList("day","9") %>">9��</a>
				<a rel="nofollow" href="<%=makeList("day","10") %>">10��</a>
				<a rel="nofollow" href="<%=makeList("day","11") %>">11��</a>
				<a rel="nofollow" href="<%=makeList("day","12") %>">12��</a>
				<a rel="nofollow" href="<%=makeList("day","13") %>">13��</a>
				<a rel="nofollow" href="<%=makeList("day","14") %>">14��</a>
				<a rel="nofollow" href="<%=makeList("day","15") %>">15��</a>
				<a rel="nofollow" href="<%=makeList("day","16") %>">16��</a>
				<a rel="nofollow" href="<%=makeList("day","17") %>">17��</a>
				<a rel="nofollow" href="<%=makeList("day","18") %>">18��</a>
				<a rel="nofollow" href="<%=makeList("day","19") %>">19��</a>
				<a rel="nofollow" href="<%=makeList("day","20") %>">20��</a>
			</span>
		</div>

	
	
	

	</div><!-- close vacations-filter -->

	<%--<div class="vacations-filter-box">
		<div class="acount">����2342����·����ɸѡ</div>
		<div class="sequence"><strong>����</strong><a href="" class="actived">�Ƽ��ȸߵĿ�ǰ</a><a href="#">�۸�͵Ŀ�ǰ</a><a href="#">������Ŀ�ǰ</a></div>
	</div><!-- close vacations-filter-box -->--%>
	
	<div class="vacations-list">

<% foreach (System.Xml.XmlNode node in tlist.GetElementsByTagName("detail"))
   {
       if (node.ChildNodes[2].InnerText.IndexOf(local) < 0 && local != "")
       {
           
       }else
       {
         %>
		<div class="vacations-list-item">
			<h2><span class="type">[<%=node.ChildNodes[2].InnerText%>]</span><a target=_blank href="traveldetail_<%=node.ChildNodes[0].InnerText%>.html"><%=node.ChildNodes[1].InnerText%></a></h2>
			<div class="vacations-list-item-content">
				<div class="img"><img src="<%=node.ChildNodes[17].InnerText%>" width="144" height="100"></div>
				<div class="info">
					<div class="simpleinfo">
						<span><strong>�г�����: </strong><em><%=node.ChildNodes[10].InnerText%>��</em></span>
					
						<span><strong>������: </strong> <em><%=node.ChildNodes[5].InnerText%></em></span>
					</div>
					<div class="detailinfo">
						<strong>������ɫ��</strong>
						<p><%=node.ChildNodes[14].InnerText%></p>
					</div>
				</div>
				<div class="price">
					<p class="price-1"><strong>��<%=node.ChildNodes[12].InnerText%></strong>��</p>
					<p class="price-2"><span>Ԥ��/��ѯ��</span><strong>4008-870-672ת<%=node.ChildNodes[9].InnerText%></strong></p>
				</div>
			</div>
		</div>

<%}
   } %>


	</div><!-- close vacations-list -->

	<div class="vacations-page">
		<a rel="nofollow" href="<%=makeList("page","1") %>">��ҳ</a>
		<a rel="nofollow" href="<%=makeList("page",(int.Parse(pagenum)-1).ToString()) %>">��һҳ</a>
		<a rel="nofollow" href="<%=makeList("page","1") %>" >1</a>
		<a rel="nofollow"  href="<%=makeList("page","2") %>">2</a>
		<a rel="nofollow" href="<%=makeList("page","3") %>">3</a>
		<a rel="nofollow" href="<%=makeList("page","4") %>">4</a>
		<a  rel="nofollow" href="<%=makeList("page","5") %>">5</a>
		<a rel="nofollow"  href="<%=makeList("page","6") %>">6</a>
		<a rel="nofollow"  href="<%=makeList("page","7") %>">7</a>
		<a rel="nofollow"  href="<%=makeList("page","8") %>">8</a>
		<a rel="nofollow"  href="<%=makeList("page","9") %>">9</a>
		<a rel="nofollow"  href="<%=makeList("page",(int.Parse(pagenum)+1).ToString()) %>">��һҳ</a>
		
		
	</div>

</div><!-- close vacations-main -->

<div class="vacations-sidewrapper">
	<div class="vacations-search">
		<div class="vacations-search-box">
			<h2>���ζȼٲ�Ʒ����</h2>
			<div class="vacations-search-form">
			<form>
			<p class="cf"><label>�����أ�</label><input type="text" value="<%= ThisCity %>" id="startname" /></p>
			<p class="dd"><label>Ŀ�ĵأ�</label><input type="text" value="<%= TargetCity %>" id="toname" /></p>
			<p class="btn"><a href="#" onclick="window.location .href='travellist.aspx?startname='+startname.value+'&to='+toname.value">����</a></p>
			</form>
			</div>
		</div><!-- close vacations-search-form -->
		<ul class="vacations-search-category">
			<li><a rel="nofollow" href="<%=makeList("local",">����") %>">������</a></li>
			<li><a rel="nofollow" href="<%=makeList("local","����") %>">������</a></li>
			<li><a rel="nofollow" href="<%=makeList("local","�ܱ�") %>">�ܱ���</a></li>
		</ul><!-- close vacations-search-form -->
		<div class="vacations-search-hot">
			<h2>�����Ƽ�</h2>
			<ul>
				<% foreach (string target in TravelTool.EliteNowTarget)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %>��</a></li>
					<%} %>
			
			</ul><!-- close vacations-search-form -->
		</div><!-- close vacations-search-form -->
		
	
	</div><!-- close vacations-search -->
<div class="vacations-side-box">
		<div class="vacations-side-tp"><h2>����Ŀ�ĵ���·</h2></div>
		<div class="vacations-side-bd">
			<div class="vacations-side-dest">
				<h3>����</h3>
				<ul>
				<% foreach (string target in TravelTool.ChinaTargets)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
					
					
				</ul>
				<h3>�۰�̨</h3>
				<ul>
				<% foreach (string target in TravelTool.ChinaOnboardTargets)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
				<h3>����</h3>
				<ul>
					<% foreach (string target in TravelTool.Islands)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
				<h3>������</h3>
				<ul>
					<% foreach (string target in TravelTool.Asias)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
				<h3>�ձ�/����/����</h3>
				<ul>
				<% foreach (string target in TravelTool.JpKrs)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
				<h3>ŷ��</h3>
				<ul>
					<% foreach (string target in TravelTool.Europes)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
			</div>
		</div>
	</div><!-- close vacations-side-box -->

</div><!-- close vacations-side -->
</div><!-- close content -->

 
  <uc1:Foot ID="Foot1" runat="server" />
</body>
</html>



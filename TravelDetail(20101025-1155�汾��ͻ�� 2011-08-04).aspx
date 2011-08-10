<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelDetail.aspx.cs" Inherits="Detail" %>
<%@ OutputCache Duration="300000" VaryByParam="*"%>
<%@ Register src="Ascx/Foot.ascx" tagname="Foot" tagprefix="uc1" %>
<%@ Register src="Ascx/head.ascx" tagname="head" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
    
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=ThisCity %><% = data.GetElementsByTagName("lineName")[0].InnerText%>[<% = data.GetElementsByTagName("lineClass")[0].InnerText%>]-128������</title>

<meta name="keywords" content="<%= data.GetElementsByTagName("passBy")[0].InnerText%>"" />
<meta name="description" content="<%=ThisCity %><% = data.GetElementsByTagName("lineName")[0].InnerText%>[<% = data.GetElementsByTagName("lineClass")[0].InnerText%>]����<% = data.GetElementsByTagName("custName")[0].InnerText%>�ṩ��������·������·;���ľ�����<%= data.GetElementsByTagName("passBy")[0].InnerText%>�г�����Ϊ<% = data.GetElementsByTagName("countTime")[0].InnerText%>��<% = data.GetElementsByTagName("cycle")[0].InnerText%>��" />

<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/vacations.css" rel="stylesheet" type="text/css" />
</head>
<body> 
  <uc2:head ID="head2" runat="server" />
   


<div class="vacations-content">
<div class="vacations-mainwrapper">
	<div class="breadcrumb">
		<strong>����ǰ������λ�ã�</strong>
		<a href="/">�ȼ���ҳ</a>
		<a rel="nofollow" href="<%=makeList("local",data.GetElementsByTagName("lineClass")[0].InnerText.Replace("��","")) %>"><% = data.GetElementsByTagName("lineClass")[0].InnerText%></a>
	</div>

	<div class="vacations-detail">
		<div class="vacations-detail-info">
			<div class="vacations-detail-info-1">
				<h1><% = data.GetElementsByTagName("lineName")[0].InnerText%>[<% = data.GetElementsByTagName("lineClass")[0].InnerText%>]</h1>
				<div class="vacations-detail-info-1-img"><img src="<% = data.GetElementsByTagName("img")[0].InnerText%>" width="245" height="174"></div>
				<div class="vacations-detail-info-1-txt">
					<ul>
						<li class="price"><strong>��<% = data.GetElementsByTagName("prePrice")[0].InnerText%></strong>��</li>
						<li>��·��ţ�<% = data.GetElementsByTagName("infoId")[0].InnerText%></li>
						<li>�������У�<% = data.GetElementsByTagName("startArea")[0].InnerText%></li>
						<li>�г�������<% = data.GetElementsByTagName("countTime")[0].InnerText%>��</li>
						<li>����ʱ�䣺<% = data.GetElementsByTagName("pubDate")[0].InnerText%></li>
						<li>�������ڣ�<% = data.GetElementsByTagName("cycle")[0].InnerText%></li>
					
					</ul>
					<div class="hotline"><span>��ѯ/Ԥ��</span><strong>4008-870-672<span>ת</span><% = data.GetElementsByTagName("phone")[0].InnerText%></strong></div>
				</div><!-- txt end -->
			</div><!-- info-1 end -->
			<div class="vacations-detail-info-2">
				
				<strong>�����ŵ��</strong>128�������ṩ������λ���������������·��ѯ������·�ı���Ϊ�ο��۸�ʵ��Ԥ���۸񣬿��������籨�ۻ���������һ���ۿۣ���ֱ�Ӳ�����ѯ�绰<br /> <strong>4008-870-672<span>ת</span><% = data.GetElementsByTagName("phone")[0].InnerText%> �˽����顣
				<br />��Ӧ�̣�<% = data.GetElementsByTagName("custName")[0].InnerText%>
			
			</div>
		</div>

		<div class="vacations-detail-2">
			<h2>��ɫ��</h2>
			<p><% = data.GetElementsByTagName("priceDesc")[0].InnerText%></p>
			<h2>;����</h2>
			<p><ul><%  foreach (string target in data.GetElementsByTagName("passBy")[0].InnerText.Split(','))
                   { 
                       
					%><li><a href="<%=TravelTool.makeSerchUrl(target)%>"><%= target%> </a></li><%
					
                   }
              
              
               %></ul></p>
		</div>

		<div class="vacations-detail-2">
			<h2>���ų���ʱ��/�۸�</h2>
			<ul class="vacations-detail-price-list">
			<asp:Repeater ID=RptPriceList runat=server>
			<ItemTemplate>
			
			<li><span><%#Eval("startdate") %></span><strong>��<%#Eval("prePrice")%></strong></li>
			</ItemTemplate>
			
			</asp:Repeater>
		
			
			</ul>
		</div>
	</div>

	<div class="vacations-detail-content">
		<h2>�г̰���</h2>
		<div class="vacations-detail-content-text">
		<% = data.GetElementsByTagName("content")[0].InnerText.Replace("51766","70672").Replace("40080","40088")%>
			
		</div>
		
	
	</div><!-- vacations-detail-content -->
	<div class="vacations-detail-hotline">&gt;&gt;�˽����������Ϣ���벦���˹�����绰 4008-870-672ת<% = data.GetElementsByTagName("phone")[0].InnerText%></div>

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
			<li><a  rel="nofollow" href="<%=makeList("local",">����") %>">������</a></li>
			<li><a rel="nofollow"  href="<%=makeList("local","����") %>">������</a></li>
			<li><a rel="nofollow"  href="<%=makeList("local","�ܱ�") %>">�ܱ���</a></li>
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

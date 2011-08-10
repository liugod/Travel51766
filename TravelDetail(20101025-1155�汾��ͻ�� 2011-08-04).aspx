<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelDetail.aspx.cs" Inherits="Detail" %>
<%@ OutputCache Duration="300000" VaryByParam="*"%>
<%@ Register src="Ascx/Foot.ascx" tagname="Foot" tagprefix="uc1" %>
<%@ Register src="Ascx/head.ascx" tagname="head" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
    
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=ThisCity %><% = data.GetElementsByTagName("lineName")[0].InnerText%>[<% = data.GetElementsByTagName("lineClass")[0].InnerText%>]-128旅行网</title>

<meta name="keywords" content="<%= data.GetElementsByTagName("passBy")[0].InnerText%>"" />
<meta name="description" content="<%=ThisCity %><% = data.GetElementsByTagName("lineName")[0].InnerText%>[<% = data.GetElementsByTagName("lineClass")[0].InnerText%>]是由<% = data.GetElementsByTagName("custName")[0].InnerText%>提供的旅游线路，本线路途经的景点有<%= data.GetElementsByTagName("passBy")[0].InnerText%>行程天数为<% = data.GetElementsByTagName("countTime")[0].InnerText%>天<% = data.GetElementsByTagName("cycle")[0].InnerText%>。" />

<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/vacations.css" rel="stylesheet" type="text/css" />
</head>
<body> 
  <uc2:head ID="head2" runat="server" />
   


<div class="vacations-content">
<div class="vacations-mainwrapper">
	<div class="breadcrumb">
		<strong>您当前所处的位置：</strong>
		<a href="/">度假首页</a>
		<a rel="nofollow" href="<%=makeList("local",data.GetElementsByTagName("lineClass")[0].InnerText.Replace("游","")) %>"><% = data.GetElementsByTagName("lineClass")[0].InnerText%></a>
	</div>

	<div class="vacations-detail">
		<div class="vacations-detail-info">
			<div class="vacations-detail-info-1">
				<h1><% = data.GetElementsByTagName("lineName")[0].InnerText%>[<% = data.GetElementsByTagName("lineClass")[0].InnerText%>]</h1>
				<div class="vacations-detail-info-1-img"><img src="<% = data.GetElementsByTagName("img")[0].InnerText%>" width="245" height="174"></div>
				<div class="vacations-detail-info-1-txt">
					<ul>
						<li class="price"><strong>￥<% = data.GetElementsByTagName("prePrice")[0].InnerText%></strong>起</li>
						<li>线路编号：<% = data.GetElementsByTagName("infoId")[0].InnerText%></li>
						<li>出发城市：<% = data.GetElementsByTagName("startArea")[0].InnerText%></li>
						<li>行程天数：<% = data.GetElementsByTagName("countTime")[0].InnerText%>天</li>
						<li>更新时间：<% = data.GetElementsByTagName("pubDate")[0].InnerText%></li>
						<li>出发班期：<% = data.GetElementsByTagName("cycle")[0].InnerText%></li>
					
					</ul>
					<div class="hotline"><span>咨询/预定</span><strong>4008-870-672<span>转</span><% = data.GetElementsByTagName("phone")[0].InnerText%></strong></div>
				</div><!-- txt end -->
			</div><!-- info-1 end -->
			<div class="vacations-detail-info-2">
				
				<strong>服务承诺：</strong>128旅行网提供多家旅游机构的优质旅游线路查询，各线路的报价为参考价格，实际预订价格，可能在网络报价基础上享有一定折扣，请直接拨打咨询电话<br /> <strong>4008-870-672<span>转</span><% = data.GetElementsByTagName("phone")[0].InnerText%> 了解详情。
				<br />供应商：<% = data.GetElementsByTagName("custName")[0].InnerText%>
			
			</div>
		</div>

		<div class="vacations-detail-2">
			<h2>特色：</h2>
			<p><% = data.GetElementsByTagName("priceDesc")[0].InnerText%></p>
			<h2>途经：</h2>
			<p><ul><%  foreach (string target in data.GetElementsByTagName("passBy")[0].InnerText.Split(','))
                   { 
                       
					%><li><a href="<%=TravelTool.makeSerchUrl(target)%>"><%= target%> </a></li><%
					
                   }
              
              
               %></ul></p>
		</div>

		<div class="vacations-detail-2">
			<h2>该团出发时间/价格：</h2>
			<ul class="vacations-detail-price-list">
			<asp:Repeater ID=RptPriceList runat=server>
			<ItemTemplate>
			
			<li><span><%#Eval("startdate") %></span><strong>￥<%#Eval("prePrice")%></strong></li>
			</ItemTemplate>
			
			</asp:Repeater>
		
			
			</ul>
		</div>
	</div>

	<div class="vacations-detail-content">
		<h2>行程安排</h2>
		<div class="vacations-detail-content-text">
		<% = data.GetElementsByTagName("content")[0].InnerText.Replace("51766","70672").Replace("40080","40088")%>
			
		</div>
		
	
	</div><!-- vacations-detail-content -->
	<div class="vacations-detail-hotline">&gt;&gt;了解更多详情信息，请拨打人工服务电话 4008-870-672转<% = data.GetElementsByTagName("phone")[0].InnerText%></div>

</div><!-- close vacations-main -->

<div class="vacations-sidewrapper">
	<div class="vacations-search">
		<div class="vacations-search-box">
			<h2>旅游度假产品搜索</h2>
			<div class="vacations-search-form">
			<form>
			<p class="cf"><label>出发地：</label><input type="text" value="<%= ThisCity %>" id="startname" /></p>
			<p class="dd"><label>目的地：</label><input type="text" value="<%= TargetCity %>" id="toname" /></p>
			<p class="btn"><a href="#" onclick="window.location .href='travellist.aspx?startname='+startname.value+'&to='+toname.value">搜索</a></p>
			</form>
			</div>
		</div><!-- close vacations-search-form -->
		<ul class="vacations-search-category">
			<li><a  rel="nofollow" href="<%=makeList("local",">国内") %>">国内游</a></li>
			<li><a rel="nofollow"  href="<%=makeList("local","出境") %>">出境游</a></li>
			<li><a rel="nofollow"  href="<%=makeList("local","周边") %>">周边游</a></li>
		</ul><!-- close vacations-search-form -->
		<div class="vacations-search-hot">
			<h2>当季推荐</h2>
			<ul>
				<% foreach (string target in TravelTool.EliteNowTarget)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %>游</a></li>
					<%} %>
			
			</ul><!-- close vacations-search-form -->
		</div><!-- close vacations-search-form -->
		
	
	</div><!-- close vacations-search -->
<div class="vacations-side-box">
		<div class="vacations-side-tp"><h2>热门目的地线路</h2></div>
		<div class="vacations-side-bd">
			<div class="vacations-side-dest">
				<h3>国内</h3>
				<ul>
				<% foreach (string target in TravelTool.ChinaTargets)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
					
					
				</ul>
				<h3>港澳台</h3>
				<ul>
				<% foreach (string target in TravelTool.ChinaOnboardTargets)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
				<h3>海岛</h3>
				<ul>
					<% foreach (string target in TravelTool.Islands)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
				<h3>东南亚</h3>
				<ul>
					<% foreach (string target in TravelTool.Asias)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
				<h3>日本/韩国/朝鲜</h3>
				<ul>
				<% foreach (string target in TravelTool.JpKrs)
       { %>
					<li><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a></li>
					<%} %>
				</ul>
				<h3>欧美</h3>
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

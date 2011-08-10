<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelLocal.aspx.cs" Inherits="TravelLocal" %>
<%@ OutputCache Duration="300000" VaryByParam="*"%>
<%@ Register src="Ascx/Foot.ascx" tagname="Foot" tagprefix="uc1" %>
<%@ Register src="Ascx/head.ascx" tagname="head" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=ThisCity %>旅游线路 <%=ThisCity %>旅游报价</title>
<meta name="keywords" content="<%=ThisCity %>热门旅游线路 <%=ThisCity %>旅游报价" />
<meta name="description" content="128旅行网提供城市出发的热门旅游线路查询，各类精品旅行团线路一网打尽，包括城市国内游，城市周边游，价格优惠超乎您的想象。" />

<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/vacations.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <uc2:head ID="head2" runat="server" />

  
<div class="vacations-content">
<div class="vacations-main">
	<div class="breadcrumb">
		<strong>您当前所处的位置：</strong>
		<a href="/">度假首页</a>
		<a rel="nofollow" href="<%=makeList("local",">国内") %>">国内旅游线路</a>
	</div>
	<div class="vacations-main-box">
		<div class="vacations-main-tp"><h2><%=ThisCity %>国内旅游线路</h2></div>
		<div class="vacations-main-bd">
			<ul class="vacations-city-list">
				<li><strong>切换出发城市：</strong></li>
				<%foreach(string city in citys){ %>
				<li><a href="tourfrom_<%= Server.UrlEncode(city) %>.html"><%=city %></a></li>
				<%} %>
				
			</ul>

			<h3 class="heading3"><%=ThisCity %><strong>本周热门</strong>线路</h3>
			<table cellpadding="0" cellspacing="0" border="0">
				<tr><th style=" text-align: center;">排名</th><th>标题</th><th>天数</th><th style="padding: 0 10px 0 5px; text-align: right;">价格</th></tr>
				
				 <%   m = hotdata.GetElementsByTagName("lineName").Count;
          if (m > itemqty) { m = itemqty; }
          for (int i = 1; i < m; i++)
          {            
                        %>
					<tr> 			
				<td class="num"><%=i+1 %></td><td class="title"><a href="traveldetail_<%=  hotdata.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=hotdata.GetElementsByTagName("lineName")[i].InnerText%></a></td><td><%=hotdata.GetElementsByTagName("countTime")[i].InnerText%></td><td class="price">￥<%=hotdata.GetElementsByTagName("prePrice")[i].InnerText%>元</td></tr>
	<%} %>
				
			</table>

			<h3 class="heading3"><%=ThisCity %>国内精品<strong>旅游团</strong>线路</h3>
			<div class="vacations-box1"><%if (chinadata.GetElementsByTagName("lineName").Count > 1)
                                 { %>
								<div class="vacations-box1-1"><a href="traveldetail_<%=  chinadata.GetElementsByTagName("infoId")[0].InnerText%>.html"><img src="<%=  chinadata.GetElementsByTagName("img")[0].InnerText%>" width="230" height="230"><span><%=chinadata.GetElementsByTagName("lineName")[0].InnerText%></span></a></div>	<%} %>
				<ul class="vacations-box1-2">
					
				 <%   m = chinadata.GetElementsByTagName("lineName").Count;
          if (m > itemqty) { m = itemqty; }
          for (int i = 1; i < m; i++)
          {                    
                        %>
				<li><a href="traveldetail_<%=  chinadata.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=chinadata.GetElementsByTagName("lineName")[i].InnerText%></a><strong>￥<%=chinadata.GetElementsByTagName("prePrice")[i].InnerText%>元</strong></li>
	<%} %>
					
					<li class="more"><a href="<%= makeList("local","国内") %>">>>更多国内游线路>></a></li>
				</ul>
			</div><!-- close box1 -->

		

			<h3 class="heading3"><%=ThisCity  %>精品<strong>周边游</strong>线路</h3>
			<div class="vacations-box1">
			<%if(neardata.GetElementsByTagName("lineName").Count>1){ %>
				<div class="vacations-box1-1"><a href="traveldetail_<%=  neardata.GetElementsByTagName("infoId")[0].InnerText%>.html"><img src="<%=  neardata.GetElementsByTagName("img")[0].InnerText%>" width="230" height="230"><span><%=neardata.GetElementsByTagName("lineName")[0].InnerText%></span></a></div>
				<%} %>
				<ul class="vacations-box1-2">
					
				 <%   m = neardata.GetElementsByTagName("lineName").Count;
          if (m > itemqty) { m = itemqty; }	     	                       
				    for (int i = 1; i < m; i++){                     
                        %>
				<li><a href="traveldetail_<%=  neardata.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=neardata.GetElementsByTagName("lineName")[i].InnerText%></a><strong>￥<%=neardata.GetElementsByTagName("prePrice")[i].InnerText%>元</strong></li>
	<%} %>
					<li class="more"><a href="<%= makeList("local","周边") %>">>>更多国内游线路>></a></li>
				</ul>
			</div><!-- close box1 -->

		</div>
	</div><!-- close vacations-main-box -->
	</div><!-- close vacations-main -->

<div class="vacations-side">
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
		<li><a rel="nofollow"  href="<%=makeList("local",">国内") %>">国内游</a></li>
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
		<div class="vacations-side-tp"><h2>特惠旅游线路</h2></div>
		<div class="vacations-side-bd">
			<ul class="vacations-side-line">
			 <%  
                                 m = discountdatas.GetElementsByTagName("lineName").Count;
                     
				    for (int i = 0; i < 7; i++)
       {  
                    
                        %>
					
				
				<li>
					<img width="58" height="48" src="<%=discountdatas.GetElementsByTagName("img")[i].InnerText%>">
					<p><span class="price">￥<%=discountdatas.GetElementsByTagName("prePrice")[i].InnerText%></span><a href="traveldetail_<%=  discountdatas.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=discountdatas.GetElementsByTagName("lineName")[i].InnerText%></a></p>
				</li>
	<%} %>
			</ul>
		</div>		
	</div><!-- close vacations-side-box -->


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

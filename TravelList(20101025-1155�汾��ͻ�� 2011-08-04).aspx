<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelList.aspx.cs" Inherits="TravelList" %>
<%@ OutputCache Duration="300000" VaryByParam="*"%>
<%@ Register src="Ascx/Foot.ascx" tagname="Foot" tagprefix="uc1" %>
<%@ Register src="Ascx/head.ascx" tagname="head" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>由<%=ThisCity %>出发至<%=TargetCity%>的旅游线路</title>
<title>度假 旅游线路 国内游 周边游 出境游在线查询预订-128旅行网</title>
<meta name="keywords" content="<%=ThisCity %>旅游线路  <%=ThisCity %>旅游报价 <%=ThisCity %>旅游预订" />
<meta name="description" content="128旅行网旅游度假频道，提供城市出发的数万条旅游度假线路，包括至各大城市国内游、出境游、周边游，在线查询优惠价格，直接电话咨询旅行社可争取更低折扣。" />

<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/vacations.css" rel="stylesheet" type="text/css" />
</head>

<body><uc2:head ID="head1" runat="server" />


<div class="vacations-content">
<div class="vacations-mainwrapper">
	<div class="breadcrumb">
		<strong>您当前所处的位置：</strong>
		<a href="/">度假首页</a>
		<a  rel="nofollow"  href="<%=TravelTool.makeSerchUrl(ThisCity,"") %>"><%=ThisCity %>旅游线路</a>
	</div>

	<h1>由<span><%=ThisCity %></span>出发<span style="display:<%if (TargetCity == "") { Response.Write("none"); } %> ;">至<%=TargetCity%></span>的旅游线路</h1>

	<div class="vacations-tuijian">
		<strong>推荐目的地:</strong>
	<% foreach (string target in TravelTool.EliteTarget)
       { %><a href="<%=TravelTool.makeSerchUrl(target) %>"><%=target %></a>
					<%} %>
					
	</div><!-- close vacations-tuijian -->

	<div class="vacations-filter">
		

		<div class="vacations-filter-item">
			<strong class="hd">线路类型：</strong>
			<span class="bd">
				<a rel="nofollow" href="<%=makeList("local","") %>" >不限</a>
				<a rel="nofollow" href="<%=makeList("local","周边") %>">周边</a>
				<a rel="nofollow" href="<%=makeList("local","国内") %>">国内</a>
				<a rel="nofollow" href="<%=makeList("local","港澳") %>">港澳</a>
				<a rel="nofollow" href="<%=makeList("local","出境") %>">出境</a>
				<a rel="nofollow" href="<%=makeList("local","自由行") %>">自由行</a>
				
				
				
			</span>
		</div>

		<div class="vacations-filter-item">
			<strong class="hd">价格范围：</strong>
			<span class="bd">
				<a rel="nofollow" href="<%=makeList("price","0","500000") %>">不限</a>
				<a rel="nofollow" href="<%=makeList("price","0","100") %>">100以下</a>
				<a rel="nofollow" href="<%=makeList("price","100","300") %>">100-300</a>
				<a rel="nofollow" href="<%=makeList("price","300","500") %>">300-500</a>
				<a rel="nofollow" href="<%=makeList("price","500","1000") %>">500-1000</a>
				<a rel="nofollow"  href="<%=makeList("price","1000","1500") %>">1000-1500</a>
				<a rel="nofollow" href="<%=makeList("price","1500","2000") %>">1500-2000</a>
				<a rel="nofollow" href="<%=makeList("price","2000","3000") %>">2000-3000</a>
				<a rel="nofollow" href="<%=makeList("price","3000","5000") %>">3000-5000</a>
				<a rel="nofollow" href="<%=makeList("price","5000","7000") %>">5000-7000</a>
				<a rel="nofollow" href="<%=makeList("price","7000","10000") %>">7000-10000</a>
				<a rel="nofollow" href="<%=makeList("price","10000","20000") %>">1万-2万</a>
				<a rel="nofollow" href="<%=makeList("price","20000","40000") %>">2万-4万</a>
				<a rel="nofollow" href="<%=makeList("price","40000","70000") %>">4万-7万</a>
				<a rel="nofollow" href="<%=makeList("price","100000","400000") %>">10万以上</a>
			</span>
		</div>

		<div class="vacations-filter-item">
			<strong class="hd">行程天数：</strong>
			<span class="bd">
				<a rel="nofollow" href="<%=makeList("day","30") %>" >不限</a>
				<a rel="nofollow" href="<%=makeList("day","1") %>">1天</a>
				<a rel="nofollow" href="<%=makeList("day","2") %>">2天</a>
				<a rel="nofollow" href="<%=makeList("day","3") %>">3天</a>
				<a rel="nofollow" href="<%=makeList("day","4") %>">4天</a>
				<a rel="nofollow" href="<%=makeList("day","5") %>">5天</a>
				<a rel="nofollow" href="<%=makeList("day","6") %>">6天</a>
				<a rel="nofollow" href="<%=makeList("day","7") %>">7天</a>
				<a rel="nofollow" href="<%=makeList("day","8") %>">8天</a>
				<a rel="nofollow" href="<%=makeList("day","9") %>">9天</a>
				<a rel="nofollow" href="<%=makeList("day","10") %>">10天</a>
				<a rel="nofollow" href="<%=makeList("day","11") %>">11天</a>
				<a rel="nofollow" href="<%=makeList("day","12") %>">12天</a>
				<a rel="nofollow" href="<%=makeList("day","13") %>">13天</a>
				<a rel="nofollow" href="<%=makeList("day","14") %>">14天</a>
				<a rel="nofollow" href="<%=makeList("day","15") %>">15天</a>
				<a rel="nofollow" href="<%=makeList("day","16") %>">16天</a>
				<a rel="nofollow" href="<%=makeList("day","17") %>">17天</a>
				<a rel="nofollow" href="<%=makeList("day","18") %>">18天</a>
				<a rel="nofollow" href="<%=makeList("day","19") %>">19天</a>
				<a rel="nofollow" href="<%=makeList("day","20") %>">20天</a>
			</span>
		</div>

	
	
	

	</div><!-- close vacations-filter -->

	<%--<div class="vacations-filter-box">
		<div class="acount">共有2342条线路符合筛选</div>
		<div class="sequence"><strong>排序：</strong><a href="" class="actived">推荐度高的靠前</a><a href="#">价格低的靠前</a><a href="#">天数多的靠前</a></div>
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
						<span><strong>行程天数: </strong><em><%=node.ChildNodes[10].InnerText%>天</em></span>
					
						<span><strong>旅行社: </strong> <em><%=node.ChildNodes[5].InnerText%></em></span>
					</div>
					<div class="detailinfo">
						<strong>亮点特色：</strong>
						<p><%=node.ChildNodes[14].InnerText%></p>
					</div>
				</div>
				<div class="price">
					<p class="price-1"><strong>￥<%=node.ChildNodes[12].InnerText%></strong>起</p>
					<p class="price-2"><span>预定/咨询：</span><strong>4008-870-672转<%=node.ChildNodes[9].InnerText%></strong></p>
				</div>
			</div>
		</div>

<%}
   } %>


	</div><!-- close vacations-list -->

	<div class="vacations-page">
		<a rel="nofollow" href="<%=makeList("page","1") %>">首页</a>
		<a rel="nofollow" href="<%=makeList("page",(int.Parse(pagenum)-1).ToString()) %>">上一页</a>
		<a rel="nofollow" href="<%=makeList("page","1") %>" >1</a>
		<a rel="nofollow"  href="<%=makeList("page","2") %>">2</a>
		<a rel="nofollow" href="<%=makeList("page","3") %>">3</a>
		<a rel="nofollow" href="<%=makeList("page","4") %>">4</a>
		<a  rel="nofollow" href="<%=makeList("page","5") %>">5</a>
		<a rel="nofollow"  href="<%=makeList("page","6") %>">6</a>
		<a rel="nofollow"  href="<%=makeList("page","7") %>">7</a>
		<a rel="nofollow"  href="<%=makeList("page","8") %>">8</a>
		<a rel="nofollow"  href="<%=makeList("page","9") %>">9</a>
		<a rel="nofollow"  href="<%=makeList("page",(int.Parse(pagenum)+1).ToString()) %>">下一页</a>
		
		
	</div>

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
			<li><a rel="nofollow" href="<%=makeList("local",">国内") %>">国内游</a></li>
			<li><a rel="nofollow" href="<%=makeList("local","出境") %>">出境游</a></li>
			<li><a rel="nofollow" href="<%=makeList("local","周边") %>">周边游</a></li>
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



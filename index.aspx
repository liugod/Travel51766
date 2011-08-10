<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" EnableViewState="false" %>
<%@ OutputCache Duration="300000" VaryByParam="*"%>
<%@ Register src="Ascx/Foot.ascx" tagname="Foot" tagprefix="uc1" %>
<%@ Register src="Ascx/head.ascx" tagname="head" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ȼ� ������· ������ �ܱ��� ���������߲�ѯԤ��-128������</title>
<meta name="keywords" content="������· �ȼ� ��������" />
<meta name="description" content="128���������ζȼ�Ƶ�����ṩ���������ζȼ���·������������й����Ρ������Ρ��ܱ��Σ����߲�ѯ�Żݼ۸�ֱ�ӵ绰��ѯ���������ȡ�����ۿۡ�" />
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/vacations.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
   function showUL(ulid,showdivname)
		    {
		       $("#"+showdivname).children().hide();
		       $("#"+ulid).show();
		       
		       
		    }
		    function activedThis(obj,ulname)
		    {
		        var jqobj = $(obj);
		     
		         $("#"+ulname).children().removeClass('actived');
		         jqobj.toggleClass('actived');	        
		        
		    }

</script>
</head>

<body>
 <uc2:head ID="head2" runat="server" />
 
  
   
<script type="text/javascript" src="/js/RandomimgPlayer.js"></script>
<script type="text/javascript" src="/js/jquery-extend-AdAdvance.js"></script>
<script type="text/javascript" src="/js/jquery-extend-TrunAd2.js"></script>

<div class="vacations-content">
<div class="vacations-main">
	<div class="vacations-focus" id="play_list">
	    
			<%
	    
        
        for (int i = 0; i < adList.DocumentElement.ChildNodes.Count; i++)
   {
        %>
        <a class="track" name="h-focus-0<%=i+1 %>" target=_blank href="<%= adList.DocumentElement.ChildNodes[i]["url"].InnerText %>"><img src="<%= adList.DocumentElement.ChildNodes[i]["PicPath"].InnerText  %>"></a>
        <%
            
   
   }
       
        %>
	<div class="focus-num-bg"></div>
	<ul class="focus-num" id="play_text"></ul>
	<script type="text/javascript">
		$('#play_list').TrunAd2();
	</script>
	
		<!-- focus END -->
		
	</div><!-- close vacations-focus -->

	<div class="vacations-main-box heavy">
		<div class="vacations-main-tp">
			<h2>����������·</h2>
			<ul class="vacations-tabs" id="chinatab">
				<li class="actived" onmouseover="javascript:showUL('chinabj','chinaall');activedThis(this,'chinatab');"><a href="javascript:showUL('chinabj')">��������</a></li>
				<li onmouseover="javascript:showUL('chinagz','chinaall');activedThis(this,'chinatab');"><a href="javascript:showUL('chinagz')">���ݳ���</a></li>
				<li onmouseover="javascript:showUL('chinash','chinaall');activedThis(this,'chinatab');"><a href="javascript:showUL('chinash')">�Ϻ�����</a></li>
				<li onmouseover="javascript:showUL('chinasz','chinaall');activedThis(this,'chinatab');"><a href="javascript:showUL('chinasz')">���ڳ���</a></li>
				<li class="more"><a rel="nofollow"   href="<%=makeList("local","����") %>">����</a></li>
			</ul>
		</div>
		<div class="vacations-main-bd">
			<div class="vacations-box1" id="chinaall">
			<div id="chinabj">
			<%if (ChinaDataBJ.GetElementsByTagName("img").Count > 0)
     { %>
				<div class="vacations-box1-1"  ><a href="traveldetail_<%=ChinaDataBJ.GetElementsByTagName("infoId")[0].InnerText%>.html"><img src="<%=ChinaDataBJ.GetElementsByTagName("img")[0].InnerText%>" width="230" height="230"><span><%=ChinaDataBJ.GetElementsByTagName("lineName")[0].InnerText%></span></a></div>
				<%} %>
				
				<ul class="vacations-box1-2" >
				<%  	    
				    m = ChinaDataBJ.GetElementsByTagName("lineName").Count;
                    if (m > itemqty) { m = itemqty; }		    
				    for (int i = 1; i < m; i++)
       { 
                    
                        %>
					<li><a href="traveldetail_<%=ChinaDataBJ.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=ChinaDataBJ.GetElementsByTagName("lineName")[i].InnerText%></a><strong>��<%=ChinaDataBJ.GetElementsByTagName("prePrice")[i].InnerText%>Ԫ</strong></li>
					<%} %>
				
					<li class="more"><a rel="nofollow"  href="<%=makeList("local","����") %>">>>�����������·>></a></li>
				</ul>
				</div>
				<div id="chinagz" style="display:none">
				<%if (ChinaDataGZ.GetElementsByTagName("img").Count > 0)
      { %>
				<div class="vacations-box1-1" ><a href="traveldetail_<%=ChinaDataGZ.GetElementsByTagName("infoId")[0].InnerText%>.html"><img src="<%=ChinaDataGZ.GetElementsByTagName("img")[0].InnerText%>" width="230" height="230"><span><%=ChinaDataGZ.GetElementsByTagName("lineName")[0].InnerText%></span></a></div>
				<%} %>
					<ul class="vacations-box1-2" >
				<%  	    
				    m = ChinaDataGZ.GetElementsByTagName("lineName").Count;
                    if (m > itemqty) { m = itemqty; }		    
				    for (int i = 1; i < m; i++)
       { 
                    
                        %>
					<li><a href="traveldetail_<%=ChinaDataGZ.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=ChinaDataGZ.GetElementsByTagName("lineName")[i].InnerText%></a><strong>��<%=ChinaDataGZ.GetElementsByTagName("prePrice")[i].InnerText%>Ԫ</strong></li>
					<%} %>
				
					<li class="more"><a rel="nofollow"  href="<%=makeList("local","����") %>">>>�����������·>></a></li>
				</ul>
				</div>
				<div id="chinash" style="display:none">
					<%if (ChinaDataSH.GetElementsByTagName("img").Count > 0)
      { %>
				<div class="vacations-box1-1" ><a href="traveldetail_<%=ChinaDataSH.GetElementsByTagName("infoId")[0].InnerText%>.html"><img src="<%=ChinaDataSH.GetElementsByTagName("img")[0].InnerText%>" width="230" height="230"><span><%=ChinaDataSH.GetElementsByTagName("lineName")[0].InnerText%></span></a></div>
				<%} %>
					<ul class="vacations-box1-2" >
				<%  	     
                    m = ChinaDataSH.GetElementsByTagName("lineName").Count;
                    if (m > itemqty) { m = itemqty; }		    
				    for (int i = 1; i < m; i++)
       { 
                    
                        %>
					<li><a href="traveldetail_<%=ChinaDataSH.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=ChinaDataSH.GetElementsByTagName("lineName")[i].InnerText%></a><strong>��<%=ChinaDataSH.GetElementsByTagName("prePrice")[i].InnerText%>Ԫ</strong></li>
					<%} %>
				
					<li class="more"><a rel="nofollow"  href="<%=makeList("local","����") %>">>>�����������·>></a></li>
				</ul>
				</div>
				<div  id="chinasz" style="display:none">
					<%if (ChinaDataSZ.GetElementsByTagName("img").Count > 0)
       { %>
				<div class="vacations-box1-1" ><a href="traveldetail_<%=ChinaDataSZ.GetElementsByTagName("infoId")[0].InnerText%>.html"><img src="<%=ChinaDataSZ.GetElementsByTagName("img")[0].InnerText%>" width="230" height="230"><span><%=ChinaDataSZ.GetElementsByTagName("lineName")[0].InnerText%></span></a></div>
				<%} %>
				<ul class="vacations-box1-2">
				<%  	    
				    m = ChinaDataSZ.GetElementsByTagName("lineName").Count;
                    if (m > itemqty) { m = itemqty; }		    
				    for (int i = 1; i < m; i++)
       { 
                    
                        %>
					<li><a href="traveldetail_<%=ChinaDataSZ.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=ChinaDataSZ.GetElementsByTagName("lineName")[i].InnerText%></a><strong>��<%=ChinaDataSZ.GetElementsByTagName("prePrice")[i].InnerText%>Ԫ</strong></li>
					<%} %>
				
					<li class="more"><a rel="nofollow"  href="<%=makeList("local","����") %>">>>�����������·>></a></li>
				</ul>
				</div>
			</div><!-- close box1 -->
			<div class="vacations-box2" >
				<h3>��������Ŀ�ĵ���·</h3>
				<a class="prev" href="javascript:void(0)">��һ��Ŀ�ĵ�</a>
				<ul>
				    <%  
                        m = ChinaDataPIC.GetElementsByTagName("lineName").Count;
                        if (m > picqty) { m = picqty; }		    
				    for (int i = 1; i < m; i++)
       {  
                    
                        %>
					<li><a href="traveldetail_<%=  ChinaDataPIC.GetElementsByTagName("infoId")[i].InnerText%>.html"><img src="<%=ChinaDataPIC.GetElementsByTagName("img")[i].InnerText%>" width="100" height="75"><%=ChinaDataPIC.GetElementsByTagName("passBy")[i].InnerText%></a></li>
					<%} %>
					
				</ul>
				<a class="next" href="javascript:void(0)">��һ��Ŀ�ĵ�</a>
			</div>
		</div>
	</div><!-- close vacations-main-box -->


	<div class="vacations-main-box">
		<div class="vacations-main-tp">
			<h2>����������·</h2>
			<ul class="vacations-tabs" id="outtab">
				<li class="actived" onmouseover="javascript:showUL('out1','outall');activedThis(this,'outtab');"><a href="javascript:showUL('chinabj')">��������</a></li>
				<li onmouseover="javascript:showUL('out2','outall');activedThis(this,'outtab');"><a href="javascript:showUL('chinagz')">���ݳ���</a></li>
				<li onmouseover="javascript:showUL('out3','outall');activedThis(this,'outtab');"><a href="javascript:showUL('chinash')">�Ϻ�����</a></li>
				<li onmouseover="javascript:showUL('out4','outall');activedThis(this,'outtab');"><a href="javascript:showUL('chinasz')">���ڳ���</a></li>
				<li class="more"><a rel="nofollow"  href="<%=makeList("local","����") %>">����</a></li>
			</ul>
		</div>
		<div class="vacations-main-bd">
			<div class="vacations-box1" id="outall">
			<%  int tmpi = 0;
                foreach (System.Xml.XmlDocument outdata in outdatas)
                {
                    tmpi++;
			    	     %>
			<div  id="out<%=tmpi %>" <%if(tmpi>1){ %> style="display:none;" <%} %>>
				
				<div class="vacations-box1-1"><a href="traveldetail_<%=outdata.GetElementsByTagName("infoId")[0].InnerText%>.html"><img src="<%=outdata.GetElementsByTagName("img")[0].InnerText%>" width="230" height="230"><span><%=outdata.GetElementsByTagName("lineName")[0].InnerText%></span></a></div>
			
				<ul class="vacations-box1-2">
					<%  m = outdata.GetElementsByTagName("lineName").Count;
         if (m > itemqty) { m = itemqty; }
         for (int i = 1; i < m; i++)
         { 
                    
                        %>
					<li><a href="traveldetail_<%=outdata.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=outdata.GetElementsByTagName("lineName")[i].InnerText%></a><strong>��<%=outdata.GetElementsByTagName("prePrice")[i].InnerText%>Ԫ</strong></li>
					<%} %>
					<li class="more"><a rel="nofollow"  href="<%=makeList("local","����") %>">>>�����������·>></a></li>
				</ul>
				</div>
				<% } %>
			</div><!-- close box1 -->
			<div class="vacations-box2">
				<h3>��������Ŀ�ĵ���·</h3>
				<a class="prev" href="javascript:void(0)">��һ��Ŀ�ĵ�</a>
				<ul>
				    <%  
                        m = OutDataPIC.GetElementsByTagName("lineName").Count;
                        if (m > picqty) { m = picqty; }		    
				    for (int i = 1; i < m; i++)
       {  
                    
                        %>
					<li><a href="traveldetail_<%=  OutDataPIC.GetElementsByTagName("infoId")[i].InnerText%>.html"><img src="<%=OutDataPIC.GetElementsByTagName("img")[i].InnerText%>" width="100" height="75"><%=OutDataPIC.GetElementsByTagName("passBy")[i].InnerText%></a></li>
					<%} %>
				</ul>
				<a class="next" rel="nofollow"   href="<%=makeList("local","����") %>">��һ��Ŀ�ĵ�</a>
			</div>
		</div>
	</div><!-- close vacations-main-box -->


	<div class="vacations-main-box">
		<div class="vacations-main-tp">
			<h2>�ܱ�������·</h2>
				<ul class="vacations-tabs" id="localtab">
				<li class="actived" onmouseover="javascript:showUL('local1','localall');activedThis(this,'localtab');"><a href="javascript:showUL('chinabj')">��������</a></li>
				<li onmouseover="javascript:showUL('local2','localall');activedThis(this,'localtab');"><a href="javascript:showUL('chinagz')">���ݳ���</a></li>
				<li onmouseover="javascript:showUL('local3','localall');activedThis(this,'localtab');"><a href="javascript:showUL('chinash')">�Ϻ�����</a></li>
				<li onmouseover="javascript:showUL('local4','localall');activedThis(this,'localtab');"><a href="javascript:showUL('chinasz')">���ڳ���</a></li>
				<li class="more"><a  rel="nofollow"  href="<%=makeList("local","�ܱ�") %>">����</a></li>
			</ul>
		</div>
		<div class="vacations-main-bd">
				<div class="vacations-box1" id="localall">
			<%   tmpi = 0;
        foreach (System.Xml.XmlDocument outdata in localdatas)
                {
                    tmpi++;
			    	     %>
			<div id="local<%=tmpi %>" <%if(tmpi>1){ %> style="display:none;" <%} %>>
				<div class="vacations-box1-1"><a href="traveldetail_<%=outdata.GetElementsByTagName("infoId")[0].InnerText%>.html"><img src="<%=outdata.GetElementsByTagName("img")[0].InnerText%>" width="230" height="230"><span><%=outdata.GetElementsByTagName("lineName")[0].InnerText%></span></a></div>
				<ul class="vacations-box1-2">
					<%  m = outdata.GetElementsByTagName("lineName").Count;
         if (m > itemqty) { m = itemqty; }
         for (int i = 1; i < m; i++)
         { 
                    
                        %>
					<li><a href="traveldetail_<%=outdata.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=outdata.GetElementsByTagName("lineName")[i].InnerText%></a><strong>��<%=outdata.GetElementsByTagName("prePrice")[i].InnerText%>Ԫ</strong></li>
					<%} %>
					<li class="more"><a rel="nofollow"   href="<%=makeList("local","�ܱ�") %>">>>�����ܱ�����·>></a></li>
				</ul>
				</div>
				<% } %>
			</div><!-- close box1 -->
			<div class="vacations-box2">
				<h3>�ܱ�����Ŀ�ĵ���·</h3>
				<a class="prev" href="javascript:void(0)">��һ��Ŀ�ĵ�</a>
				<ul>
				 <%  
                     m = NearDataPIC.GetElementsByTagName("lineName").Count;
                        if (m > picqty) { m = picqty; }		    
				    for (int i = 1; i < m; i++)
       {  
                    
                        %>
					<li><a href="traveldetail_<%=  NearDataPIC.GetElementsByTagName("infoId")[i].InnerText%>.html"><img src="<%=NearDataPIC.GetElementsByTagName("img")[i].InnerText%>" width="100" height="75"><%=NearDataPIC.GetElementsByTagName("passBy")[i].InnerText%></a></li>
					<%} %>
				</ul>
				<a class="next"  href="javascript:void(0)">��һ��Ŀ�ĵ�</a>
			</div>
		</div>
	</div><!-- close vacations-main-box -->

</div><!-- close vacations-main -->

<div class="vacations-side">
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
		<li><a  rel="nofollow"  href="<%=makeList("local",">����") %>">������</a></li>
			<li><a rel="nofollow"  href="<%=makeList("local","����") %>">������</a></li>
			<li><a rel="nofollow"   href="<%=makeList("local","�ܱ�") %>">�ܱ���</a></li>
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
		<div class="vacations-side-tp"><h2>�ػ�������·</h2></div>
		<div class="vacations-side-bd">
			<ul class="vacations-side-line">
							 <%  
                                 m = discountdatas.GetElementsByTagName("lineName").Count;
                     
				    for (int i = 0; i < 7; i++)
       {  
                    
                        %>
					
				
				<li>
					<img width="58" height="48" src="<%=discountdatas.GetElementsByTagName("img")[i].InnerText%>">
					<p><span class="price">��<%=discountdatas.GetElementsByTagName("prePrice")[i].InnerText%></span><a target=_blank href="traveldetail_<%=  discountdatas.GetElementsByTagName("infoId")[i].InnerText%>.html"><%=discountdatas.GetElementsByTagName("lineName")[i].InnerText%></a></p>
				</li>
	<%} %>
				
			</ul>
		</div>		
	</div><!-- close vacations-side-box -->


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



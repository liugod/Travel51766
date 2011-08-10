<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="Ascx_head" %>

<div class="header">
    <div class="header_top">
			<div class="logo"><a target="_blank" href="http://www.128uu.com"><img alt="" src="/bg/logo-default.png"></a></div>
			<div class="hotline"><img src="/bg/bg.gif" /></div>
			<div class="userbar">
				<ul class="links">
					<li class="signin"><a href="http://www.128uu.com/login.html" target="_blank">登录</a></li>
					<li class="signup"><a href="http://www.128uu.com/reg.html" target="_blank">注册</a></li>
					<li class="pay"><a href="http://www.128uu.com/pay.html" target="_blank">网上支付</a></li>
					<!--<li class="mobile"><a href="http://www.128uu.com/">手机版</a></li>-->
					<li class="big5"><a href="http://big5.128uu.com/">繁体版</a></li>
				</ul>
			</div>
    </div>

	<div class="global_nav">
		<ul id="globalNav">
			<li><a href="http://www.128uu.com/" target="_self">首页</a></li>
		<li id="chain"><a href="http://www.128uu.com/chain-all.html"  target="_self" onfocus="this.blur()">连锁酒店</a></li>
		<li id="metro"><a href="http://www.128uu.com/metrocity_20.html"  target="_self" onfocus="this.blur()">地铁酒店</a></li>
		<li id="exam"><a href="http://www.128uu.com/examcity.html" target="_self" onfocus="this.blur()">学校酒店</a></li>
		<li id="airport"><a href="http://www.128uu.com/airport_list.html" target="_self" onfocus="this.blur()">机场酒店</a></li>
		<li id="station"><a href="http://www.128uu.com/station_list.html" target="_self" onfocus="this.blur()">火车站酒店</a></li>		<li id="vacations"><a href="http://vacations.128uu.com" target="_self" onfocus="this.blur()">旅游度假</a></li>
		<li id="destinations"><a href="http://destinations.128uu.com/" target="_self" onfocus="this.blur()">目的地指南</a></li>
		<li id="help"><a href="http://www.128uu.com/help/helpcenter.asp" target="_self">帮助中心</a></li>
		</ul>
	</div>
	<!-- global_nav end -->
	
	<!-- global_search start -->
	<form action="http://www.128uu.com/function/settime.asp" method="post" name="searchForm" id="searchForm" onsubmit="SearchForm(searchForm)" />
    <input id="today" type="hidden" value="2011-6-22"/>
	<div class="searchbar">
		<div class="form_item citys">
			<input id="hCity" type="text" value="中文/拼音" onfocus=showSearch(this) onblur=showSearch(this,1) onclick="suggest.display(this,'cityName',event,$('#intime')[0])" onkeyup="suggest.display(this,'cityName',event,$('#intime')[0])" />
			<input id="index_cityId" type="hidden" name="cid" value="20" /> 
             <div class="default_citys_list" id="show_citys" style="display: none;">
			</div><!-- default_citys_list end -->
		</div>
		<div class="form_item intime">
        <input id="intime" name="intime" type="text" value="<%=inTime %>" readonly="readonly" onFocus="var outtime=$dp.$('outtime');WdatePicker({onpicked:function(){outtime.focus();},minDate:'#F{$dp.$D(\'today\')}'})" class="hasDatepicker" />
        </div>
		<div class="form_item outtime">
        <input id="outtime" name="outtime" type="text" value="<%=outTime %>" readonly="readonly" onFocus="
        var map_name=$dp.$('map_name');WdatePicker({onpicked:function(){map_name.focus();},minDate:'#F{$dp.$D(\'intime\')}'})" class="hasDatepicker" />
        </div>
		<div class="form_item keyword">
        <input autocomplete="off" id="map_name" type="text" value="" name="map_name" /></div>
		<div class="form_item button"><a href="javascript:void(0)" onclick="SearchForm(searchForm);"></a></div>
	</div>	
	</form>
	<!-- global_search end -->
</div><!-- header end -->
<style id="ks-suggest-style">.ks-suggest-container{background:white;border:1px solid #999;z-index:99999}.ks-suggest-shim{z-index:99998}.ks-suggest-container li{color:#404040;padding:1px 0 2px;font-size:12px;line-height:18px;float:left;width:100%}.ks-suggest-container .ks-selected{background-color:#39F;cursor:default}.ks-suggest-key{float:left;text-align:left;padding-left:5px}.ks-suggest-result{float:right;text-align:right;padding-right:5px;color:green}.ks-suggest-container .ks-selected span{color:#FFF;cursor:default}.ks-suggest-footer{padding:0 5px 5px}.ks-suggest-closebtn{float:right}.ks-suggest-container li,.ks-suggest-footer{overflow:hidden;zoom:1;clear:both}.ks-suggest-container{*margin-left:2px;_margin-left:-2px;_margin-top:-3px}</style>
<!------------------------------------------------>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
<script src="http://union.128uu.com/javascript/kissy-min.js" type="text/javascript" charset="utf-8"></script>
<script src="http://union.128uu.com/javascript/main.js" type="text/javascript" charset="utf-8"></script>
<script src="/javascript/date/WdatePicker.js" type="text/javascript"></script>
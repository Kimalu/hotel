<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
    <title>中国酒店预订网(Chinahotel.com.cn):酒店预订,宾馆住宿,在线预定查询酒店最低价格.</title>
    <meta name="google-site-verification" content="skQBm-5S6OTiyePJfSt6XvThIoyQiIEvg1guHAHvkBw"/>
    <meta name="y_key" content="e0b230e24e197f89"/>
    <meta name="alexaVerifyID" content="SiqV3BqDrkQgg6NJReCPhS3MMyY"/>
    <meta name="keywords" content="酒店预订,宾馆预订,酒店预定,酒店查询,酒店价格,在线预定,北京酒店,上海酒店,广州酒店,杭州酒店,厦门酒店,台湾自由行,旅游景点,旅游指南"/>
    <meta name="description"
          content="Chinahotel中国酒店预订网提供上海酒店,北京酒店,广州酒店,杭州酒店,厦门酒店,台湾酒店,自由行等全国20000多家星级酒店2-6折优惠房价及在线预订及电话预订服务.并提供旅游景点 旅游指南等多种服务"/>
    <link href="2010css/ch_index0.css" rel="stylesheet" type="text/css"/>
    <link href="css/smoothness/jquery-ui-1.9.0.custom.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.9.0.custom.js"></script>
    <script type="text/javascript">
    var allCityPinYin;
    function init(){
    	getCityPinYin();
    }
    
    function getCityPinYin(){
    	//TODO  try getJson without eval
	   	$.post("${basePath}city/getAllCityPinYin", function(data) {
	   		allCityPinYin=eval(data);
	   		bindAutoComplete();
	   	})
    }
    function bindAutoComplete(){
    	$( "#h_name" ).autocomplete({
			source: allCityPinYin
		});
    }
	$(function() {
		$("#smq_str_date").datepicker();
		$("#smq_end_date").datepicker(); 
		init();
	});
    </script>
</head>
<body>
<div class="topp_nav">
    <div class="top_class">
        <div class="top_class_lef">
            <p><em>订房热线:</em>400-889-9093(免长话费),<em>预订电话:</em> 0592-5199895</p>
        </div>
        <div class="top_class_rig">
            <ul>
                <li><a href="/help/about.html" rel="nofollow">关于我们</a></li>
                <li><a href="/map.html">网站导航</a></li>
                <li><a href="http://tw.chinahotel.com.cn/chinahotels_login.php" rel="nofollow">会员注册</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>


<!--chinahotel start -->
<div class="chinahotel">


<div class="text_nav">

    <div class="text_nav_logo"><a href="/"><img src="2010images/logo.jpg" alt="Chinahotel"/></a>

        <div>
            <a href="http://cn.chinahotel.com.cn/"><img src="2010images/cn.gif" class="text_nav_img"
                                                        alt="cn.chinahotel.com.cn"/></a>
            <a href="http://tw.chinahotel.com.cn/"><img src="2010images/tw.gif" class="text_nav_img"
                                                        alt="tw.chinahotel.com.cn"/></a>
            <a href="http://jp.chinahotel.com.cn/"><img src="2010images/jp.gif" class="text_nav_img"
                                                        alt="jp.chinahotel.com.cn"/></a>
            <a href="http://en.chinahotel.com.cn/"><img src="2010images/en.gif" class="text_nav_img"
                                                        alt="en.chinahotel.com.cn"/></a>
            <a href="http://www.chinahotel.com.cn/"><img src="2010images/us.gif" class="text_nav_img"
                                                         alt="en.chinahotel.com.cn"/></a>
        </div>

    </div>


    <div class="text_nav_text">
        <ul>
            <li>
                <a href="http://shanghai.chinahotel.com.cn/" rel="nofollow">
                    上海酒店</a>
            </li>
            <li>
                <a href="http://beijing.chinahotel.com.cn/" rel="nofollow">
                    北京酒店</a>
            </li>
            <li>
                <a href="http://tianjin.chinahotel.com.cn/" rel="nofollow">
                    天津酒店</a>
            </li>
            <li>
                <a href="http://chongqing.chinahotel.com.cn/" rel="nofollow">
                    重庆酒店</a>
            </li>
            <li>
                <a href="http://.chinahotel.com.cn/" rel="nofollow">
                    香港酒店</a>
            </li>
            <li>
                <a href="http://zhejiang.chinahotel.com.cn/" rel="nofollow">
                    浙江酒店</a>
            </li>
            <li>
                <a href="http://jiangsu.chinahotel.com.cn/" rel="nofollow">
                    江苏酒店</a>
            </li>
            <li>
                <a href="http://fujian.chinahotel.com.cn/" rel="nofollow">
                    福建酒店</a>
            </li>
            <li>
                <a href="http://hainan.chinahotel.com.cn/" rel="nofollow">
                    海南酒店</a>
            </li>
            <li>
                <a href="http://guangdong.chinahotel.com.cn/" rel="nofollow">
                    广东酒店</a>
            </li>
            <li>
                <a href="http://guangxi.chinahotel.com.cn/" rel="nofollow">
                    广西酒店</a>
            </li>
        </ul>
        
        <ul>
            <li>
                <a href="http://hunan.chinahotel.com.cn/" rel="nofollow">
                    湖南酒店</a>
            </li>
            <li>
                <a href="http://hubei.chinahotel.com.cn/" rel="nofollow">
                    湖北酒店</a>
            </li>
            <li>
                <a href="http://shandong.chinahotel.com.cn/" rel="nofollow">
                    山东酒店</a>
            </li>
            <li>
                <a href="http://shanxi.chinahotel.com.cn/" rel="nofollow">
                    山西酒店</a>
            </li>
            <li>
                <a href="http://henan.chinahotel.com.cn/" rel="nofollow">
                    河南酒店</a>
            </li>
            <li>
                <a href="http://hebei.chinahotel.com.cn/" rel="nofollow">
                    河北酒店</a>
            </li>
            <li>
                <a href="http://sichuan.chinahotel.com.cn/" rel="nofollow">
                    四川酒店</a>
            </li>
            <li>
                <a href="http://anhui.chinahotel.com.cn/" rel="nofollow">
                    安徽酒店</a>
            </li>
            <li>
                <a href="http://jiangxi.chinahotel.com.cn/" rel="nofollow">
                    江西酒店</a>
            </li>
            <li>
                <a href="http://yunnan.chinahotel.com.cn/" rel="nofollow">
                    云南酒店</a>
            </li>
            <li>
                <a href="http://.chinahotel.com.cn/" rel="nofollow">
                    贵州酒店</a>
            </li>
        </ul>
        <div class="clear"></div>

        <h2>中国酒店预订</h2></div>

</div>

<div class="menu_nav">
    <ul>
        <li class="onho"><a href="/index.php">首页</a></li>
        <li><a href="/ChinaHotels.html">酒店预订</a></li>
        <li><a href="/Beijing-Hotels.html">北京酒店</a></li>
        <li><a href="/Shanghai-Hotels.html">上海酒店</a></li>
        <li><a href="/Guangzhou-Hotels.html">广州酒店</a></li>
        <li><a href="/Taiwan-Hotels.html">台湾酒店</a></li>
        <li><a href="/Xiamen-Hotels.html">厦门酒店</a></li>
        <li><a href="/chinahotels_tehui.php">特惠酒店</a></li>
        <li><a href="/China-Destinations.html">旅游目的地</a></li>

    </ul>
</div>
<!--
<div class="notice">


 <p>公告：因为本公司的服务器升级维护，决定于11月10号清晨00:00-06:00期间，部分用户在某个时间段内可能无法访问CHINAHOTEL网站和提供相应的订房服务，升级完成后，我们将为您提供更迅速而高质量的服务，由此给您带来的不便敬请谅解！</p></div>
-->
<div class="cont">
<!-- left start-->
<div class="cont_lef">

    <div class="cont_lef_nav">
        <ul>
            <li><a href="/ChinaHotels.html"><span>酒店宾馆预订</span></a></li>
            <li><a href="/China-Attractions.html"><span>旅游热门景点</span></a></li>
            <li><a href="/China-Destinations.html"><span>热门城市列表</span></a></li>
            <li class="ft"><a href="/ChinaHotels.html"><span>在线酒店预订</span></a></li>
        </ul>
    </div>


    <div class="cont_index_lef">

        <div class="cont_lef_top"><h3>推荐酒店预订</h3></div>
        <div class="cont_lef_con">
            <div class="cont_lef_ninfo"><p>最理想的城市、最优惠的酒店，是我们的服务更是您的选择。</p></div>
            <ul class="cont_lef_nlist">

                <li class="cont_lef_ls1"><a href="/Hotels-1282.html" title="东莞豪门大饭店">东莞豪门大饭店</a></li>

                <li class="cont_lef_ls2"><a href="/Hotels-14234.html" title="泉州金星大酒店">泉州金星大酒店</a></li>

                <li class="cont_lef_ls3"><a href="/Hotels-673.html" title="上海迦南酒店">上海迦南酒店</a></li>

                <li class="cont_lef_ls4"><a href="/Hotels-2017.html" title="深圳富临大酒店">深圳富临大酒店</a></li>

                <li class="cont_lef_ls5"><a href="/Hotels-4215.html" title="星程新族酒店">星程新族酒店</a></li>

                <li class="cont_lef_ls6"><a href="/Hotels-579.html" title="上海光力新时空公寓酒店">上海光力新时空公寓酒店</a></li>

                <li class="cont_lef_ls7"><a href="/Hotels-4666.html" title="上海东航之星田园风光酒店">上海东航之星田园风光酒店</a></li>

                <li class="cont_lef_ls8"><a href="/Hotels-1150.html" title="福州最佳西方财富酒店">福州最佳西方财富酒店</a></li>

                <li class="cont_lef_ls9"><a href="/Hotels-3202.html" title="深圳北方大酒店">深圳北方大酒店</a></li>

                <li class="cont_lef_ls10"><a href="/Hotels-30.html" title="上海天诚大酒店">上海天诚大酒店</a></li>


            </ul>
            <p class="cont_lef_nlink"><a href="/Beijing-Hotels.html">>>更多推荐酒店预订</a></p>
        </div>

    </div>


    <div class="cont_index_lef">
        <div class="cont_lef_top"><h3>热门酒店预订</h3></div>
        <div class="cont_lef_con">
            <div class="cont_lef_ninfo"><p>我们拥有最热门的酒店资讯，为您提供最佳的酒店预订服务</p></div>
            <ul class="cont_lef_nlist">
                <li class="cont_lef_ls1"><a href="/Hotels-160.html" title="上海瑞泰虹桥酒店">上海瑞泰虹桥酒店</a></li>
                <li class="cont_lef_ls2"><a href="/Hotels-1172.html" title="珠海粤海酒店">珠海粤海酒店</a></li>
                <li class="cont_lef_ls3"><a href="/Hotels-82.html" title="上海古北湾大酒店">上海古北湾大酒店</a></li>
                <li class="cont_lef_ls4"><a href="/Hotels-561.html" title="上海虹桥衡园服务式公寓">上海虹桥衡园服务式公寓</a></li>
                <li class="cont_lef_ls5"><a href="/Hotels-1119.html" title="厦门闽南大酒店">厦门闽南大酒店</a></li>
                <li class="cont_lef_ls6"><a href="/Hotels-279.html" title="上海东亚饭店">上海东亚饭店</a></li>
                <li class="cont_lef_ls7"><a href="/Hotels-2022.html" title="上海徐汇瑞峰酒店">上海徐汇瑞峰酒店</a></li>
                <li class="cont_lef_ls8"><a href="/Hotels-93.html" title="上海国际贵都大饭店">上海国际贵都大饭店</a></li>
                <li class="cont_lef_ls9"><a href="/Hotels-94.html" title="上海宾馆">上海宾馆</a></li>
                <li class="cont_lef_ls10"><a href="/Hotels-91.html" title="上海虹桥宾馆">上海虹桥宾馆</a></li>
            </ul>
            <p class="cont_lef_nlink"><a href="/Shanghai-Hotels.html">>>更多热门酒店预订</a></p>
        </div>

    </div>


    <div class="cont_index_lef">

        <div class="cont_lef_top"><h3>快捷酒店预订</h3></div>
        <div class="cont_lef_con">
            <div class="cont_lef_ninfo"><p>最理想的城市、最优惠的酒店，是我们的服务更是您的选择。</p></div>
            <ul class="cont_lef_nlist">

                <li class="cont_lef_ls1"><a href="http://homeinntangdynastyhotel.chinahotel.com.cn/"
                                            title="如家快捷酒店（西安大明宫店）" target="_blank" rel="nofollow">如家快捷酒店（西安大明宫</a></li>

                <li class="cont_lef_ls2"><a href="http://hangzhouleisurehotel.chinahotel.com.cn/index.php?lang=cn"
                                            title="杭州朗逸轩快捷酒店" target="_blank" rel="nofollow">杭州朗逸轩快捷酒店</a></li>

                <li class="cont_lef_ls3"><a href="http://homeinnshanghailongd.chinahotel.com.cn/index.php?lang=cn"
                                            title="如家快捷酒店（上海龙东大道店）" target="_blank" rel="nofollow">如家快捷酒店（上海龙东大</a></li>

                <li class="cont_lef_ls4"><a href="http://homeinndongdajie.chinahotel.com.cn/index.php?lang=cn"
                                            title="如家快捷酒店（郑州东大街店）" target="_blank" rel="nofollow">如家快捷酒店（郑州东大街</a></li>

                <li class="cont_lef_ls5"><a href="http://homeinnshanghaizhoup.chinahotel.com.cn/index.php?lang=cn"
                                            title="如家快捷酒店（上海周浦店）" target="_blank" rel="nofollow">如家快捷酒店（上海周浦店</a></li>

                <li class="cont_lef_ls6"><a href="http://homeinntianjinwestra.chinahotel.com.cn/index.php?lang=cn"
                                            title="如家快捷酒店（天津西站店）" target="_blank" rel="nofollow">如家快捷酒店（天津西站店</a></li>

                <li class="cont_lef_ls7"><a href="http://hantingexpressjinanl.chinahotel.com.cn/index.php?lang=cn"
                                            title="汉庭快捷酒店（济南历山路店）" target="_blank" rel="nofollow">汉庭快捷酒店（济南历山路</a></li>

                <li class="cont_lef_ls8"><a href="http://shunjiaexpresshoteldongdajie.chinahotel.com.cn/"
                                            title="顺家快捷酒店（西安东大街店）" target="_blank" rel="nofollow">顺家快捷酒店（西安东大街</a></li>

                <li class="cont_lef_ls9"><a href="http://fuzhouwuyiroaderinn.chinahotel.com.cn/index.php?lang=cn"
                                            title="如家快捷酒店（福州五一路温泉二店）" target="_blank" rel="nofollow">如家快捷酒店（福州五一路</a>
                </li>

                <li class="cont_lef_ls10"><a href="http://hemeihotelsd.chinahotel.com.cn/index.php?lang=cn"
                                             title="如家快捷酒店（青岛火车站店）(原-青岛贵州路店)" target="_blank" rel="nofollow">如家快捷酒店（青岛火车站</a>
                </li>


            </ul>
            <p class="cont_lef_nlink"><a href="/Guangzhou-Hotels.html">快捷酒店预订</a></p>
        </div>
    </div>
</div>
<!-- left end-->

<div class="cont_mr">


<div class="page_title">
    <h1>China Hotel中国酒店预订</h1>

    <p>
        Chinahotel中国酒店预订网是中国领先的在线酒店预订网站,向全球旅行者提供酒店预订,宾馆预订,酒店报价查询,自由行,台湾酒店,特惠酒店及旅游景点,旅游指南在内的全方位旅行服务.Chinahotel中国酒店预订网完善的酒店预订系统,让您预订酒店客房更加轻松快捷,轻松旅行从Chinahotel中国酒店预订网开始!</p>
</div>
<!-- mid start -->
<div class="cont_mid">

<div class="search_tab">

    <div class="cont_mid_search">
        <form name="sysform_smq" method="get" id="sysform_smq" action="">
            <input type="hidden" name="more" value="0"/>
            <input type="hidden" name="select5" value="1"/>
            <h4><span>酒店预订查询</span></h4>
            <ul>
                <li>
                    <div class="cont_mid_simg01l"></div>
                    <div class="cont_mid_simg01r">
                    
                        <h3>您出行的目的地是？</h3>
						<div>
	                        <p>选择城市:</p>
	                        <input type="text" size="60" class="input_w1 bc1" name="h_name" id="h_name" title="type &quot;a&quot;"/>
	                        <input type="hidden" name="h_id" id="h_id"/>
	                        <input type="hidden" name="h_name2" id="h_name2"/>
	                        <input type="hidden" name="lang" id="lang" value="0"/>
                        </div>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <div class="cont_mid_simg02l"></div>
                    <div class="cont_mid_simg02r">
                        <h3>您出行的时间是？</h3>
                         <p>入住日期：</p>
                         <input type="text" id="smq_str_date">
 						<p>离店日期：</p>
 						<input type="text" id="smq_end_date">
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <div class="cont_mid_simg03l"></div>
                    <div class="cont_mid_simg03r">
                        <h3>您心中理想的酒店是？ （可选填）</h3>

                        <p> 酒店名称:</p>
                        <input type="text" id="has14_hotel_name" name="has14_hotel_name" size="60"/>
                    </div>
                    <div class='clear'></div>
                    <iframe class='iframecal' id='CalFrame' name='CalFrame' marginheight='0' marginwidth='0'
                            scrolling='no' src='2010inc/CN_calendar.htm' frameborder='0'></iframe>
                    <div class="clear"></div>
                </li>
            </ul>
            <div class="ser_bton"><span class="ser_bspan"><input type="button" value="查询酒店"
                                                                 onclick="submit_for()"/></span></div>
        </form>
        <div class="clear"></div>
    </div>


</div>
<!--sss-->

<div class="index_mid_htab">

<div class="index_mid_htop"><h3>酒店预订</h3>

    <p>无论您是为家庭旅游预订酒店或者为您的出差选择住所，China Hotel中国酒店预订网都有最合适您的酒店预订</p></div>
<div class="index_mid_hcon">


<div class="cont_mid_chl" id="tab-title">
    <span class="selected">上海酒店</span>
    <span>北京酒店</span>
    <span>广州酒店</span>
    <span>深圳酒店</span>
    <span>大连酒店</span>
    <span>苏州酒店</span>
    <span>杭州酒店</span>
    <span>西安酒店</span>
    <span>天津酒店</span>
    <span>厦门酒店</span>

</div>

<div id="tab-content">
<ul>


    <li>
        <a href="/Hotels-174.html" title="上海东方世纪宾馆  虹桥地区">
            <span class="hotelname"> 上海东方世纪宾馆</span>
            <span class="localname"> 虹桥地区 </span>
            <span class="price">CNY 458</span></a>
    </li>

    <li>
        <a href="/Hotels-4099.html" title="莫泰168（上海外滩店）  外滩地区">
            <span class="hotelname"> 莫泰168（上海外滩店）</span>
            <span class="localname"> 外滩地区 </span>
            <span class="price">CNY 208</span></a>
    </li>

    <li>
        <a href="/Hotels-680.html" title="薇爱精品时尚酒店（吴中店）  虹桥地区">
            <span class="hotelname"> 薇爱精品时尚酒店（吴中店）</span>
            <span class="localname"> 虹桥地区 </span>
            <span class="price">CNY 560</span></a>
    </li>

    <li>
        <a href="/Hotels-56.html" title="上海外滩海湾大厦酒店（原海湾世纪阁）  外滩附近">
            <span class="hotelname"> 上海外滩海湾大厦酒店（原海湾世纪阁）</span>
            <span class="localname"> 外滩附近 </span>
            <span class="price">CNY 499</span></a>
    </li>

    <li>
        <a href="/Hotels-561.html" title="上海虹桥衡园服务式公寓  虹桥地区">
            <span class="hotelname"> 上海虹桥衡园服务式公寓</span>
            <span class="localname"> 虹桥地区 </span>
            <span class="price">CNY 398</span></a>
    </li>

    <li>
        <a href="/Hotels-91.html" title="上海虹桥宾馆  虹桥地区">
            <span class="hotelname"> 上海虹桥宾馆</span>
            <span class="localname"> 虹桥地区 </span>
            <span class="price">CNY 399</span></a>
    </li>

    <li>
        <a href="/Hotels-532.html" title="上海雅舍宾馆  徐家汇、打浦桥地区">
            <span class="hotelname"> 上海雅舍宾馆</span>
            <span class="localname"> 徐家汇、打浦 </span>
            <span class="price">CNY 258</span></a>
    </li>

    <li>
        <a href="/Hotels-138.html" title="上海长航美林阁大酒店  浦东陆家嘴金融贸易区">
            <span class="hotelname"> 上海长航美林阁大酒店</span>
            <span class="localname"> 浦东陆家嘴金 </span>
            <span class="price">CNY 298</span></a>
    </li>

    <li>
        <a href="/Hotels-487.html" title="上海曼哈顿商务酒店  外滩附近">
            <span class="hotelname"> 上海曼哈顿商务酒店</span>
            <span class="localname"> 外滩附近 </span>
            <span class="price">CNY 298</span></a>
    </li>
    <li><p><a href="/Shanghai-Hotels.html">更多上海酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-787.html" title="北京港澳中心瑞士酒店  东二环工人体育场地区">
            <span class="hotelname"> 北京港澳中心瑞士酒店</span>
            <span class="localname"> 东二环工人体 </span>
            <span class="price">CNY 624</span></a>
    </li>

    <li>
        <a href="/Hotels-4283.html" title="北京饭店  天安门、王府井地区">
            <span class="hotelname"> 北京饭店</span>
            <span class="localname"> 天安门、王府 </span>
            <span class="price">CNY 800</span></a>
    </li>

    <li>
        <a href="/Hotels-4295.html" title="北京大雨澳斯特酒店  望京地区">
            <span class="hotelname"> 北京大雨澳斯特酒店</span>
            <span class="localname"> 望京地区 </span>
            <span class="price">CNY 369</span></a>
    </li>

    <li>
        <a href="/Hotels-185.html" title="北京大悦城酒店?公寓  西单、金融街地区">
            <span class="hotelname"> 北京大悦城酒店?公寓</span>
            <span class="localname"> 西单、金融街 </span>
            <span class="price">CNY 788</span></a>
    </li>

    <li>
        <a href="/Hotels-4253.html" title="北京富邦国际酒店  北京站、建国门、国贸地区">
            <span class="hotelname"> 北京富邦国际酒店</span>
            <span class="localname"> 北京站、建国 </span>
            <span class="price">CNY 278</span></a>
    </li>

    <li>
        <a href="/Hotels-893.html" title="北京国际竹藤大厦  望京地区">
            <span class="hotelname"> 北京国际竹藤大厦</span>
            <span class="localname"> 望京地区 </span>
            <span class="price">CNY 388</span></a>
    </li>

    <li>
        <a href="/Hotels-836.html" title="北京赛特饭店  北京站、建国门、国贸地区">
            <span class="hotelname"> 北京赛特饭店</span>
            <span class="localname"> 北京站、建国 </span>
            <span class="price">CNY 398</span></a>
    </li>

    <li>
        <a href="/Hotels-969.html" title="北京福建大厦  亚运村、奥运村商圈">
            <span class="hotelname"> 北京福建大厦</span>
            <span class="localname"> 亚运村、奥运 </span>
            <span class="price">CNY 598</span></a>
    </li>

    <li>
        <a href="/Hotels-518.html" title="北京长富宫饭店  北京站、建国门、国贸地区">
            <span class="hotelname"> 北京长富宫饭店</span>
            <span class="localname"> 北京站、建国 </span>
            <span class="price">CNY 1000</span></a>
    </li>
    <li><p><a href="/Beijing-Hotels.html">更多北京酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-1169.html" title="广州流花宾馆  广州火车站，广交会流花展馆">
            <span class="hotelname"> 广州流花宾馆</span>
            <span class="localname"> 广州火车站， </span>
            <span class="price">CNY 528</span></a>
    </li>

    <li>
        <a href="/Hotels-1241.html" title="广州华厦大酒店  北京路步行街，海珠广场">
            <span class="hotelname"> 广州华厦大酒店</span>
            <span class="localname"> 北京路步行街 </span>
            <span class="price">CNY 565</span></a>
    </li>

    <li>
        <a href="/Hotels-1202.html" title="广州地中海国际酒店  天河体育中心，火车东站">
            <span class="hotelname"> 广州地中海国际酒店</span>
            <span class="localname"> 天河体育中心 </span>
            <span class="price">CNY 688</span></a>
    </li>

    <li>
        <a href="/Hotels-2638.html" title="亨富涞酒店（广州三元里店）   白云区商业区">
            <span class="hotelname"> 亨富涞酒店（广州三元里店）</span>
            <span class="localname"> 白云区商业区 </span>
            <span class="price">CNY 148</span></a>
    </li>

    <li>
        <a href="/Hotels-1217.html" title="广州润都酒店  天河体育中心，火车东站">
            <span class="hotelname"> 广州润都酒店</span>
            <span class="localname"> 天河体育中心 </span>
            <span class="price">CNY 338</span></a>
    </li>

    <li>
        <a href="/Hotels-3121.html" title="广州东方宾馆  火车站、越秀公园附近">
            <span class="hotelname"> 广州东方宾馆</span>
            <span class="localname"> 火车站、越秀 </span>
            <span class="price">CNY 628</span></a>
    </li>

    <li>
        <a href="/Hotels-3336.html" title="广州冰花酒店  火车东站、天河体育中心">
            <span class="hotelname"> 广州冰花酒店</span>
            <span class="localname"> 火车东站、天 </span>
            <span class="price">CNY 200</span></a>
    </li>

    <li>
        <a href="/Hotels-1240.html" title="广州建国酒店(原广州天伦万怡大酒店）  天河体育中心，火车东站">
            <span class="hotelname"> 广州建国酒店(原广州天伦万怡大酒店）</span>
            <span class="localname"> 天河体育中心 </span>
            <span class="price">CNY 600</span></a>
    </li>

    <li>
        <a href="/Hotels-1216.html" title="广东南洋长胜酒店  天河体育中心，火车东站">
            <span class="hotelname"> 广东南洋长胜酒店</span>
            <span class="localname"> 天河体育中心 </span>
            <span class="price">CNY 368</span></a>
    </li>
    <li><p><a href="/Guangzhou-Hotels.html">更多广州酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-4972.html" title="深圳华安国际大酒店（原华安康年国际大酒店）  罗湖地区">
            <span class="hotelname"> 深圳华安国际大酒店（原华安康年国际大</span>
            <span class="localname"> 罗湖地区 </span>
            <span class="price">CNY 708</span></a>
    </li>

    <li>
        <a href="/Hotels-1286.html" title="深圳罗湖大酒店  罗湖地区">
            <span class="hotelname"> 深圳罗湖大酒店</span>
            <span class="localname"> 罗湖地区 </span>
            <span class="price">CNY 390</span></a>
    </li>

    <li>
        <a href="/Hotels-3207.html" title="深圳大梅沙雅兰酒店  盐田（大、小梅沙）地区">
            <span class="hotelname"> 深圳大梅沙雅兰酒店</span>
            <span class="localname"> 盐田（大、小 </span>
            <span class="price">CNY 530</span></a>
    </li>

    <li>
        <a href="/Hotels-2017.html" title="深圳富临大酒店  罗湖地区">
            <span class="hotelname"> 深圳富临大酒店</span>
            <span class="localname"> 罗湖地区 </span>
            <span class="price">CNY 488</span></a>
    </li>

    <li>
        <a href="/Hotels-3221.html" title="深圳金銮富众酒店  蛇口（南山）地区">
            <span class="hotelname"> 深圳金銮富众酒店</span>
            <span class="localname"> 蛇口（南山） </span>
            <span class="price">CNY 368</span></a>
    </li>

    <li>
        <a href="/Hotels-3245.html" title="深圳芙蓉宾馆  罗湖地区">
            <span class="hotelname"> 深圳芙蓉宾馆</span>
            <span class="localname"> 罗湖地区 </span>
            <span class="price">CNY 328</span></a>
    </li>

    <li>
        <a href="/Hotels-3202.html" title="深圳北方大酒店  华强北地区">
            <span class="hotelname"> 深圳北方大酒店</span>
            <span class="localname"> 华强北地区 </span>
            <span class="price">CNY 328</span></a>
    </li>

    <li>
        <a href="/Hotels-3206.html" title="深圳大梅沙芭堤雅酒店  盐田（大、小梅沙）地区">
            <span class="hotelname"> 深圳大梅沙芭堤雅酒店</span>
            <span class="localname"> 盐田（大、小 </span>
            <span class="price">CNY 348</span></a>
    </li>

    <li>
        <a href="/Hotels-1285.html" title="深圳南侨商务酒店  蛇口（南山）地区">
            <span class="hotelname"> 深圳南侨商务酒店</span>
            <span class="localname"> 蛇口（南山） </span>
            <span class="price">CNY 226</span></a>
    </li>
    <li><p><a href="/Shenzhen-Hotels.html">更多深圳酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-2625.html" title="大连新海天国际酒店  大连开发区,金石滩国家旅游">
            <span class="hotelname"> 大连新海天国际酒店</span>
            <span class="localname"> 大连开发区, </span>
            <span class="price">CNY 398</span></a>
    </li>

    <li>
        <a href="/Hotels-2623.html" title="大连海尊快捷假日酒店  商业金融中心区">
            <span class="hotelname"> 大连海尊快捷假日酒店</span>
            <span class="localname"> 商业金融中心 </span>
            <span class="price">CNY 468</span></a>
    </li>

    <li>
        <a href="/Hotels-3874.html" title="大连宜必思酒店  商业金融中心区">
            <span class="hotelname"> 大连宜必思酒店</span>
            <span class="localname"> 商业金融中心 </span>
            <span class="price">CNY 199</span></a>
    </li>

    <li>
        <a href="/Hotels-11839.html" title="川王府阳光酒店（大连中山路店）  商业金融中心区">
            <span class="hotelname"> 川王府阳光酒店（大连中山路店）</span>
            <span class="localname"> 商业金融中心 </span>
            <span class="price">CNY 227</span></a>
    </li>

    <li>
        <a href="/Hotels-1682.html" title="大连凯伦饭店  大连开发区,金石滩国家旅游">
            <span class="hotelname"> 大连凯伦饭店</span>
            <span class="localname"> 大连开发区, </span>
            <span class="price">CNY 520</span></a>
    </li>

    <li>
        <a href="/Hotels-1680.html" title="大连香洲大饭店  商业金融中心区">
            <span class="hotelname"> 大连香洲大饭店</span>
            <span class="localname"> 商业金融中心 </span>
            <span class="price">CNY 518</span></a>
    </li>

    <li>
        <a href="/Hotels-3876.html" title="莫泰168（大连友好广场店）  商业金融中心区">
            <span class="hotelname"> 莫泰168（大连友好广场店）</span>
            <span class="localname"> 商业金融中心 </span>
            <span class="price">CNY 246</span></a>
    </li>

    <li>
        <a href="/Hotels-1679.html" title="大连富丽华南山花园酒店  商业金融中心区">
            <span class="hotelname"> 大连富丽华南山花园酒店</span>
            <span class="localname"> 商业金融中心 </span>
            <span class="price">CNY 350</span></a>
    </li>

    <li>
        <a href="/Hotels-3882.html" title="大连盛世年华大酒店  商业金融中心区">
            <span class="hotelname"> 大连盛世年华大酒店</span>
            <span class="localname"> 商业金融中心 </span>
            <span class="price">CNY 288</span></a>
    </li>
    <li><p><a href="/Dalian-Hotels.html">更多大连酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-2848.html" title="苏州南园宾馆  盘门地区">
            <span class="hotelname"> 苏州南园宾馆</span>
            <span class="localname"> 盘门地区 </span>
            <span class="price">CNY 498</span></a>
    </li>

    <li>
        <a href="/Hotels-5671.html" title="苏州亚致酒店  苏州新区商业区">
            <span class="hotelname"> 苏州亚致酒店</span>
            <span class="localname"> 苏州新区商业 </span>
            <span class="price">CNY 369</span></a>
    </li>

    <li>
        <a href="/Hotels-4607.html" title="苏州高新区中豪商务酒店  苏州新区商业区">
            <span class="hotelname"> 苏州高新区中豪商务酒店</span>
            <span class="localname"> 苏州新区商业 </span>
            <span class="price">CNY 208</span></a>
    </li>

    <li>
        <a href="/Hotels-2698.html" title="苏州旅居姑苏饭店  观前街地区（市中心）">
            <span class="hotelname"> 苏州旅居姑苏饭店</span>
            <span class="localname"> 观前街地区（ </span>
            <span class="price">CNY 288</span></a>
    </li>

    <li>
        <a href="/Hotels-1567.html" title="苏州乐乡饭店  观前街地区（市中心）">
            <span class="hotelname"> 苏州乐乡饭店</span>
            <span class="localname"> 观前街地区（ </span>
            <span class="price">CNY 328</span></a>
    </li>

    <li>
        <a href="/Hotels-4970.html" title="苏州雅戈尔雷迪森广场  苏州工业园区商业区">
            <span class="hotelname"> 苏州雅戈尔雷迪森广场</span>
            <span class="localname"> 苏州工业园区 </span>
            <span class="price">CNY 568</span></a>
    </li>

    <li>
        <a href="/Hotels-5214.html" title="苏州四季商旅酒店  观前街地区（市中心）">
            <span class="hotelname"> 苏州四季商旅酒店</span>
            <span class="localname"> 观前街地区（ </span>
            <span class="price">CNY 355</span></a>
    </li>

    <li>
        <a href="/Hotels-1533.html" title="富驿时尚酒店（苏州观前店）  观前街地区（市中心）">
            <span class="hotelname"> 富驿时尚酒店（苏州观前店）</span>
            <span class="localname"> 观前街地区（ </span>
            <span class="price">CNY 219</span></a>
    </li>

    <li>
        <a href="/Hotels-1641.html" title="苏州和乔丽晶公寓酒店  苏州工业园区商业区">
            <span class="hotelname"> 苏州和乔丽晶公寓酒店</span>
            <span class="localname"> 苏州工业园区 </span>
            <span class="price">CNY 518</span></a>
    </li>
    <li><p><a href="/Suzhou-Hotels.html">更多苏州酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-1968.html" title="杭州新侨饭店  西湖景区">
            <span class="hotelname"> 杭州新侨饭店</span>
            <span class="localname"> 西湖景区 </span>
            <span class="price">CNY 468</span></a>
    </li>

    <li>
        <a href="/Hotels-1929.html" title="杭州欧陆风情商务假日酒店  火车城站">
            <span class="hotelname"> 杭州欧陆风情商务假日酒店</span>
            <span class="localname"> 火车城站 </span>
            <span class="price">CNY 270</span></a>
    </li>

    <li>
        <a href="/Hotels-3472.html" title="杭州大华饭店  西湖景区">
            <span class="hotelname"> 杭州大华饭店</span>
            <span class="localname"> 西湖景区 </span>
            <span class="price">CNY 1020</span></a>
    </li>

    <li>
        <a href="/Hotels-4886.html" title="杭州西湖饭店  火车城站">
            <span class="hotelname"> 杭州西湖饭店</span>
            <span class="localname"> 火车城站 </span>
            <span class="price">CNY 150</span></a>
    </li>

    <li>
        <a href="/Hotels-4800.html" title="杭州西湖国宾馆  西湖景区">
            <span class="hotelname"> 杭州西湖国宾馆</span>
            <span class="localname"> 西湖景区 </span>
            <span class="price">CNY 1080</span></a>
    </li>

    <li>
        <a href="/Hotels-1970.html" title="杭州玉皇山庄  西湖景区">
            <span class="hotelname"> 杭州玉皇山庄</span>
            <span class="localname"> 西湖景区 </span>
            <span class="price">CNY 518</span></a>
    </li>

    <li>
        <a href="/Hotels-1947.html" title="杭州华辰国际饭店  西湖景区">
            <span class="hotelname"> 杭州华辰国际饭店</span>
            <span class="localname"> 西湖景区 </span>
            <span class="price">CNY 398</span></a>
    </li>

    <li>
        <a href="/Hotels-3461.html" title="杭州仁和饭店  西湖景区">
            <span class="hotelname"> 杭州仁和饭店</span>
            <span class="localname"> 西湖景区 </span>
            <span class="price">CNY 380</span></a>
    </li>

    <li>
        <a href="/Hotels-1964.html" title="杭州米兰洲际酒店  文教区">
            <span class="hotelname"> 杭州米兰洲际酒店</span>
            <span class="localname"> 文教区 </span>
            <span class="price">CNY 398</span></a>
    </li>
    <li><p><a href="/Hangzhou-Hotels.html">更多杭州酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-1708.html" title="西安宾馆  南部地区">
            <span class="hotelname"> 西安宾馆</span>
            <span class="localname"> 南部地区 </span>
            <span class="price">CNY 688</span></a>
    </li>

    <li>
        <a href="/Hotels-1721.html" title="西安铁通商务酒店  南部地区">
            <span class="hotelname"> 西安铁通商务酒店</span>
            <span class="localname"> 南部地区 </span>
            <span class="price">CNY 428</span></a>
    </li>

    <li>
        <a href="/Hotels-1714.html" title="西安钟楼饭店  市中心地区">
            <span class="hotelname"> 西安钟楼饭店</span>
            <span class="localname"> 市中心地区 </span>
            <span class="price">CNY 758</span></a>
    </li>

    <li>
        <a href="/Hotels-6156.html" title="西安蜗客尚品酒店  高新技术开发区">
            <span class="hotelname"> 西安蜗客尚品酒店</span>
            <span class="localname"> 高新技术开发 </span>
            <span class="price">CNY 418</span></a>
    </li>

    <li>
        <a href="/Hotels-1706.html" title="西安秦都酒店  市中心地区">
            <span class="hotelname"> 西安秦都酒店</span>
            <span class="localname"> 市中心地区 </span>
            <span class="price">CNY 328</span></a>
    </li>

    <li>
        <a href="/Hotels-3853.html" title="西安颐和宫大酒店  南部地区">
            <span class="hotelname"> 西安颐和宫大酒店</span>
            <span class="localname"> 南部地区 </span>
            <span class="price">CNY 398</span></a>
    </li>

    <li>
        <a href="/Hotels-3837.html" title="陕西南方酒店（案板街店）（原陕西南方酒店）  市中心地区">
            <span class="hotelname"> 陕西南方酒店（案板街店）（原陕西南方</span>
            <span class="localname"> 市中心地区 </span>
            <span class="price">CNY 378</span></a>
    </li>

    <li>
        <a href="/Hotels-3856.html" title="西安志诚丽柏酒店  西部地区">
            <span class="hotelname"> 西安志诚丽柏酒店</span>
            <span class="localname"> 西部地区 </span>
            <span class="price">CNY 485</span></a>
    </li>

    <li>
        <a href="/Hotels-1704.html" title="西安古都新世界大酒店  市中心地区">
            <span class="hotelname"> 西安古都新世界大酒店</span>
            <span class="localname"> 市中心地区 </span>
            <span class="price">CNY 518</span></a>
    </li>
    <li><p><a href="/Xian-Hotels.html">更多西安酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-3168.html" title="天津赛象酒店  南开区商业区">
            <span class="hotelname"> 天津赛象酒店</span>
            <span class="localname"> 南开区商业区 </span>
            <span class="price">CNY 508</span></a>
    </li>

    <li>
        <a href="/Hotels-4012.html" title="天津喜来登大酒店  河西区商业区">
            <span class="hotelname"> 天津喜来登大酒店</span>
            <span class="localname"> 河西区商业区 </span>
            <span class="price">CNY 805</span></a>
    </li>

    <li>
        <a href="/Hotels-1839.html" title="天津惠中酒店  滨海新区商业区">
            <span class="hotelname"> 天津惠中酒店</span>
            <span class="localname"> 滨海新区商业 </span>
            <span class="price">CNY 498</span></a>
    </li>

    <li>
        <a href="/Hotels-1836.html" title="天津滨江万丽酒店  和平区（市中心）">
            <span class="hotelname"> 天津滨江万丽酒店</span>
            <span class="localname"> 和平区（市中 </span>
            <span class="price">CNY 423</span></a>
    </li>

    <li>
        <a href="/Hotels-1844.html" title="天津泰达国际酒店暨会馆  滨海新区">
            <span class="hotelname"> 天津泰达国际酒店暨会馆</span>
            <span class="localname"> 滨海新区 </span>
            <span class="price">CNY 598</span></a>
    </li>

    <li>
        <a href="/Hotels-3182.html" title="天津格林园酒店  滨海新区商业区">
            <span class="hotelname"> 天津格林园酒店</span>
            <span class="localname"> 滨海新区商业 </span>
            <span class="price">CNY 540</span></a>
    </li>

    <li>
        <a href="/Hotels-1850.html" title="天津体育宾馆  南开区">
            <span class="hotelname"> 天津体育宾馆</span>
            <span class="localname"> 南开区 </span>
            <span class="price">CNY 260</span></a>
    </li>

    <li>
        <a href="/Hotels-4621.html" title="天津维多利亚国际大酒店  望海楼、古文化街地区">
            <span class="hotelname"> 天津维多利亚国际大酒店</span>
            <span class="localname"> 望海楼、古文 </span>
            <span class="price">CNY 438</span></a>
    </li>

    <li>
        <a href="/Hotels-4658.html" title="如家快捷酒店（天津武清京津路店）  武清开发区">
            <span class="hotelname"> 如家快捷酒店（天津武清京津路店）</span>
            <span class="localname"> 武清开发区 </span>
            <span class="price">CNY 189</span></a>
    </li>
    <li><p><a href="/Tianjin-Hotels.html">更多天津酒店</a></p></li>
</ul>

<ul class="hide">


    <li>
        <a href="/Hotels-2135.html" title="厦门福佑大饭店（原厦门福佑戴斯大饭店）   中山路，轮渡区">
            <span class="hotelname"> 厦门福佑大饭店（原厦门福佑戴斯大饭店</span>
            <span class="localname"> 中山路，轮渡 </span>
            <span class="price">CNY 368</span></a>
    </li>

    <li>
        <a href="/Hotels-2609.html" title="如家快捷酒店（厦门莲坂店）  松柏小区">
            <span class="hotelname"> 如家快捷酒店（厦门莲坂店）</span>
            <span class="localname"> 松柏小区 </span>
            <span class="price">CNY 170</span></a>
    </li>

    <li>
        <a href="/Hotels-1159.html" title="厦门海上花园酒店  鼓浪屿风景区">
            <span class="hotelname"> 厦门海上花园酒店</span>
            <span class="localname"> 鼓浪屿风景区 </span>
            <span class="price">CNY 1298</span></a>
    </li>

    <li>
        <a href="/Hotels-1119.html" title="厦门闽南大酒店  白鹭洲风景区">
            <span class="hotelname"> 厦门闽南大酒店</span>
            <span class="localname"> 白鹭洲风景区 </span>
            <span class="price">CNY 368</span></a>
    </li>

    <li>
        <a href="/Hotels-1130.html" title="厦门亚洲海湾大酒店  环岛路风景区">
            <span class="hotelname"> 厦门亚洲海湾大酒店</span>
            <span class="localname"> 环岛路风景区 </span>
            <span class="price">CNY 798</span></a>
    </li>

    <li>
        <a href="/Hotels-3689.html" title="厦门华侨大厦  中山路、轮渡区">
            <span class="hotelname"> 厦门华侨大厦</span>
            <span class="localname"> 中山路、轮渡 </span>
            <span class="price">CNY 328</span></a>
    </li>

    <li>
        <a href="/Hotels-4024.html" title="厦门东南亚大酒店  火车站附近">
            <span class="hotelname"> 厦门东南亚大酒店</span>
            <span class="localname"> 火车站附近 </span>
            <span class="price">CNY 378</span></a>
    </li>

    <li>
        <a href="/Hotels-5020.html" title="厦门万佳东方酒店  中山路，轮渡区">
            <span class="hotelname"> 厦门万佳东方酒店</span>
            <span class="localname"> 中山路，轮渡 </span>
            <span class="price">CNY 198</span></a>
    </li>

    <li>
        <a href="/Hotels-2614.html" title="厦门菲特利酒店  中山路、轮渡区">
            <span class="hotelname"> 厦门菲特利酒店</span>
            <span class="localname"> 中山路、轮渡 </span>
            <span class="price">CNY 168</span></a>
    </li>
    <li><p><a href="/Xiamen-Hotels.html">更多厦门酒店</a></p></li>
</ul>

</div>


<div class="clear"></div>
</div>


</div>
<!--end-->

</div>

<!--mid end -->
<!--rig start -->
<div class="cont_rig">
    <div class="cont_rig_cal">
        <h3>订房热线</h3>
        <span>TEL: 400-8899-093 (In China)</span><br/>
        <span>TEL: +86-0592-5199895</span><br/>

        <p>China Hotel中国酒店预订网预订中心客服人员周一至周五(8:00-22:00)、周六至周日(9:00-18:00)竭诚为您提供酒店预订、咨询服务</p>

        <h3>客服热线</h3>
        <span class="calr">QQ:1004703194</span><br/>
        <span class="calr">Msn:surehighservice@hotmail.com</span>

    </div>

    <div class="cont_rig_timg">

        <ul class="rig_hotel_unfo">
            <li><em>1</em> <a href="pa110530/"> 三亚金银岛特惠套餐</a></li>
            <li><em>2</em> <a href="pa100618/"> 武悦-印象特惠套餐</a></li>
            <li><em>3</em> <a href="expo/"> 上海世博会特惠酒店专题</a></li>
            <li><em>4</em> <a href="ch_guangzhou.php"> 广交会特惠酒店专题</a></li>
            <li><em>5</em> <a href="promotion/"> 中国特惠酒店"严选"特辑</a></li>
            <li><em>6</em> <a href="chinahotels_tehui.php"> Chinahotel网站特惠酒店专辑</a></li>

        </ul>
        <!--
            <p><a href="/ch_guangzhou.php"><img src="2010images/th01.gif" alt="" /></a></p>
            <p><a href="http://beijing.chinahotel.com.cn/"><img src="2010images/th02.gif" alt="" /></a></p>
         -->
    </div>

    <div class="index_rtb">
        <div class="index_rtb_top"><h3>旅游指南</h3></div>
        <div class="index_rtb_con">
            <ul>
                <li class="cont_rig_rsf"><a href="/China-Attractions.html"><span>热门旅游景点</span></a></li>
                <li class="cont_rig_rs"><a href="/chinahotels_city.php"><span>热门旅游城市</span></a></li>
                <li class="cont_rig_rsf"><a href="/chinahotels_hotel_map.php"><span>电子地图查询</span></a></li>
                <li class="cont_rig_rs"><a href="2010car"><span>代驾租车服务</span></a></li>
                <li class="cont_rig_rsf"><a href="2010wea"><span>全国天气预报</span></a></li>
            </ul>
        </div>

    </div>


</div>

<div class="clear"></div>
<!-- S-->

<div class="index_sub">
    <div class="index_sub_top"><h3>中国热门旅游推荐</h3></div>
    <div class="index_sub_con">

        <div id="cnav-title" class="index_sub_ntop"><h2>中国旅游指南</h2> <span class="selected">旅游目的地</span>
            <span>旅游景点指南</span></div>

        <div id="cnav-content">


            <div class="index_sub_ncon">
                <p class="index_sub_note">计划出行旅游吗？China Hotel中国酒店预订网为您提供丰富的中国城市资讯，为您决定出游目的地提供详细的讯息。</p>

                <div class="index_sub_lefcon">
                    <a href="/Destinations-Shanghai.html"> <img src="2010images/shanghai.jpg" width="200" height="150"
                                                                alt=" 上海">
                        上海 </a>
                </div>
                <div class="index_sub_rigcon">
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Beijing.html" title="北京">
                            <img src="/images/location/2_0_s.jpg" width="100" height="75" alt="北京"/></a>

                        <p><a href="/Destinations-Beijing.html" title="北京">北京</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Guangzhou.html" title="广州">
                            <img src="/images/location/12_122_s.jpg" width="100" height="75" alt="广州"/></a>

                        <p><a href="/Destinations-Guangzhou.html" title="广州">广州</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Shenzhen.html" title="深圳">
                            <img src="/images/location/12_137_s.jpg" width="100" height="75" alt="深圳"/></a>

                        <p><a href="/Destinations-Shenzhen.html" title="深圳">深圳</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Dalian.html" title="大连">
                            <img src="/images/location/27_259_s.jpg" width="100" height="75" alt="大连"/></a>

                        <p><a href="/Destinations-Dalian.html" title="大连">大连</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Suzhou.html" title="苏州">
                            <img src="/images/location/9_87_s.jpg" width="100" height="75" alt="苏州"/></a>

                        <p><a href="/Destinations-Suzhou.html" title="苏州">苏州</a></p></div>
                    <div class="clear"></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Hangzhou.html" title="杭州">
                            <img src="/images/location/8_34_s.jpg" width="100" height="75" alt="杭州"/></a>

                        <p><a href="/Destinations-Hangzhou.html" title="杭州">杭州</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Xian.html" title="西安">
                            <img src="/images/location/25_250_s.jpg" width="100" height="75" alt="西安"/></a>

                        <p><a href="/Destinations-Xian.html" title="西安">西安</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Tianjin.html" title="天津">
                            <img src="/images/location/3_0_s.jpg" width="100" height="75" alt="天津"/></a>

                        <p><a href="/Destinations-Tianjin.html" title="天津">天津</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Xiamen.html" title="厦门">
                            <img src="/images/location/10_112_s.jpg" width="100" height="75" alt="厦门"/></a>

                        <p><a href="/Destinations-Xiamen.html" title="厦门">厦门</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Destinations-Sanya.html" title="三亚">
                            <img src="/images/location/11_117_s.jpg" width="100" height="75" alt="三亚"/></a>

                        <p><a href="/Destinations-Sanya.html" title="三亚">三亚</a></p></div>

                </div>
                <div class="clear"></div>
                <p class="index_sub_lmore"><a href="/China-Destinations.html">更多城市</a></p>
            </div>

            <div class="hide index_sub_ncon">
                <p class="index_sub_note">China Hotel中国酒店预订网为您提供丰富的旅游景点资讯，观光城市景点图片信息</p>

                <div class="index_sub_lefcon">
                    <a href="/expo/"> <img src="2010images/shibo.jpg" width="200" height="150" alt="上海世博"></a>

                    <p><a href="/expo/">上海世博</a></p>
                </div>
                <div class="index_sub_rigcon">
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-378.html" title="岳麓书院"><img src="/images/scene/S00037801.jpg" width="100"
                                                                          height="75" alt="岳麓书院"/></a>

                        <p><a href="/Attractions-378.html" title="岳麓书院">岳麓书院</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-1.html" title="上海动物园"><img src="/images/scene/S00000101.jpg" width="100"
                                                                         height="75" alt="上海动物园"/></a>

                        <p><a href="/Attractions-1.html" title="上海动物园">上海动物园</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-37.html" title="北京八达岭长城"><img src="/images/scene/S00003701.jpg"
                                                                            width="100" height="75" alt="北京八达岭长城"/></a>

                        <p><a href="/Attractions-37.html" title="北京八达岭长城">北京八达岭长城</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-588.html" title="乾陵"><img src="/images/scene/S00058801.jpg" width="100"
                                                                        height="75" alt="乾陵"/></a>

                        <p><a href="/Attractions-588.html" title="乾陵">乾陵</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-94.html" title="鼓山"><img src="/images/scene/S00009401.jpg" width="100"
                                                                       height="75" alt="鼓山"/></a>

                        <p><a href="/Attractions-94.html" title="鼓山">鼓山</a></p></div>
                    <div class="clear"></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-135.html" title="白云山"><img src="/images/scene/S00013501.jpg" width="100"
                                                                         height="75" alt="白云山"/></a>

                        <p><a href="/Attractions-135.html" title="白云山">白云山</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-313.html" title="漓江"><img src="/images/scene/S00031301.jpg" width="100"
                                                                        height="75" alt="漓江"/></a>

                        <p><a href="/Attractions-313.html" title="漓江">漓江</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-415.html" title="趵突泉公园"><img src="/images/scene/S00041501.jpg" width="100"
                                                                           height="75" alt="趵突泉公园"/></a>

                        <p><a href="/Attractions-415.html" title="趵突泉公园">趵突泉公园</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-238.html" title="杭州"><img src="/images/scene/S00023801.jpg" width="100"
                                                                        height="75" alt="杭州"/></a>

                        <p><a href="/Attractions-238.html" title="杭州">杭州</a></p></div>
                    <div class="index_sub_riginfo">
                        <a href="/Attractions-545.html" title="独乐寺"><img src="/images/scene/S00054501.jpg" width="100"
                                                                         height="75" alt="独乐寺"/></a>

                        <p><a href="/Attractions-545.html" title="独乐寺">独乐寺</a></p></div>

                </div>
                <div class="clear"></div>
                <p class="index_sub_lmore"><a href="/China-Attractions.html"> >更多景点</a></p>

            </div>

        </div>

    </div>

</div>

<!--E -->


<div class="index_sub">
    <div class="index_sub_top"><h3>热门地区酒店:</h3></div>
    <div class="index_sub_con">
        <div class="index_sub_destinations ">
            <p>无论您喜欢全世界范围的连锁酒店或者温馨的酒店，你将在中国酒店预订网找到你想要的酒店。中国酒店预订网为成千上万的旅行者提供了酒店预订，帮助全世界的旅行者更好的计划他们的行程。 </p>
        </div>

        <div class="cont_mid_fav">

            <ul class="first">

                <li><b>华东地区酒店</b></li>
                <li><a href="/Shanghai-Hotels.html">上海酒店预定</a></li>
                <li><a href="/Jiangsu-Hotels.html">江苏酒店预定</a></li>
                <li><a href="/Zhejiang-Hotels.html">浙江酒店预定</a></li>
                <li><a href="/Anhui-Hotels.html">安徽酒店预定</a></li>
                <li><a href="/Jiangxi-Hotels.html">江西酒店预定</a></li>
            </ul>


            <ul class="first">

                <li><b>华南地区酒店</b></li>
                <li><a href="/Guangdong-Hotels.html">广东酒店预定</a></li>
                <li><a href="/Fujian-Hotels.html">福建酒店预定</a></li>
                <li><a href="/TaiWan-Hotels.html">台湾酒店预定</a></li>
                <li><a href="/Guangxi-Hotels.html">广西酒店预定</a></li>
                <li><a href="/Hainan-Hotels.html">海南酒店预定</a></li>
            </ul>


            <ul class="first">

                <li><b>华北地区酒店</b></li>
                <li><a href="/Beijing-Hotels.html">北京酒店预定</a></li>
                <li><a href="/Tianjin-Hotels.html">天津酒店预定</a></li>
                <li><a href="/Hebei-Hotels.html">河北酒店预定</a></li>
                <li><a href="/Shandong-Hotels.html">山东酒店预定</a></li>
                <li><a href="/Henan-Hotels.html">河南酒店预定</a></li>
            </ul>


            <ul class="first">

                <li><a href="/Shanxi-Hotels.html">陕西酒店预定</a></li>
                <li><a href="/Inner-Mongolia-Hotels.html">内蒙古酒店预定</a></li>
                <li><b>中部地区酒店</b></li>
                <li><a href="/Hubei-Hotels.html">湖北酒店预定</a></li>
                <li><a href="/Hunan-Hotels.html">湖南酒店预定</a></li>
                <li><b>西南地区酒店</b></li>
            </ul>


            <ul class="first">

                <li><a href="/Sichuan-Hotels.html">四川酒店预定</a></li>
                <li><a href="/Chongqing-Hotels.html">重庆酒店预定</a></li>
                <li><a href="/Guizhou-Hotels.html">贵州酒店预定</a></li>
                <li><a href="/Yunnan-Hotels.html">云南酒店预定</a></li>
                <li><a href="/Tibet-Hotels.html">西藏酒店预定</a></li>
                <li><b>东北地区酒店</b></li>
            </ul>


            <ul class="first">

                <li><a href="/Liaoning-Hotels.html">辽宁酒店预定</a></li>
                <li><a href="/Jilin-Hotels.html">吉林酒店预定</a></li>
                <li><a href="/Heilongjiang-Hotels.html">黑龙江酒店预定</a></li>
                <li><b>西北地区酒店</b></li>
                <li><a href="/Shanxi-Hotels.html">陕西酒店预定</a></li>
                <li><a href="/Gansu-Hotels.html">甘肃酒店预定</a></li>
            </ul>


            <ul class="first">

                <li><a href="/Ningxia-Hotels.html">宁夏酒店预定</a></li>
                <li><a href="/Qinghai-Hotels.html">青海酒店预定</a></li>
            </ul>


            <div class="clear"></div>

        </div>


    </div>
</div>


</div>


</div>


<div class="clear"></div>
</div>
<!--chinahotel end -->
<div class="foot">


  <span>
   <a href="/ChinaHotels.html">中国酒店预订</a> |
   <a href="/China-Attractions.html">中国旅游景点</a> |
   <a href="/chinahotels_hotel_map.php">酒店电子地图</a>|
   <a href="/chinahotels_tehui.php">特惠酒店专题</a> |
   <a href="/expo/">上海世博</a>  |
   <a href="http://www.ezhotel.com.tw">台湾酒店</a>
  |<a href="/Sitemap_Hotels.html">中国酒店大全</a>
  |<a href="/Sitemap_Scenerys.html">国内景点指南</a>
  |<a href="/Sitemap_Citys.html">旅游城市指南</a>

  </span><br/>

    <b>联络我们</b>: <a href="mailto:chinahotel@chinahotelbooking.net">chinahotel@chinahotelbooking.net</a>,
    <b>传真</b>:(+86 0592) 5199892 <b>电话:</b> 4008899093| (+86 0592) 5199895 | 5199101 | 5199891<br/>
    Copyright 2004-2011 <a href="http://www.surehigh.com.tw/">SUREHIGH TECHNOLOGIES</a> Co.Ltd China Hotel Booking
    沪ICP备06016217号
    <script src="http://s95.cnzz.com/stat.php?id=4231238&web_id=4231238&show=pic" language="JavaScript"></script>

</div>

<script type="text/javascript" src="2010css/systemall.js?20100122"></script>
<script type="text/javascript" src="2010css/homecn.js?20100122"></script>
<script type="text/javascript" src="2010css/cityinfo.php"></script>
<script type="text/javascript" src="2010css/CN_timeControl.js"></script>
<script type="text/javascript" src="2010inc/index.js"></script>
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js'
    type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    try{
    var pageTracker = _gat._getTracker("UA-373133-29");
    pageTracker._setDomainName("chinahotel.com.cn");
    pageTracker._initData();
    pageTracker._trackPageview();
    }catch(e){}
</script>


<div id="comm100_FloatImageButton">
    <div>
        <div id="comm100_LiveChatDiv"></div>
        <a href="http://www.comm100.cn/livechat/" onclick="comm100_Chat();return false;" target="_blank" title="??????"
           rel="nofollow"><img id="comm100_ButtonImage"
                               src="http://chatserver.comm100.cn/BBS.aspx?siteId=80022779&&planId=593" border="0px"
                               alt="??????"/></a>
        <script src="http://chatserver.comm100.cn/js/LiveChat.js?siteId=80022779&planId=593"
                type="text/javascript"></script>
    </div>
</div>


<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F8eede753e92ff6605afa92fa899651fd'
    type='text/javascript'%3E%3C/script%3E"));
</script>


</body>


</html>
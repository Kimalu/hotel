<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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

    <%--  catcomplete  <style>
        .ui-autocomplete-category {
            font-weight: bold;
            padding: .2em .4em;
            margin: .8em 0 .2em;
            line-height: 1.5;
        }
    </style>--%>

    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.0.custom.js"></script>
    <%--  catcomplete   <script>
        $.widget( "custom.catcomplete", $.ui.autocomplete, {
            _renderMenu: function( ul, items ) {
                var that = this,
                        currentCategory = "";
                $.each( items, function( index, item ) {
                    if ( item.category != currentCategory ) {
                        ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
                        currentCategory = item.category;
                    }
                    that._renderItemData( ul, item );
                });
            }
        });
    </script>--%>
    <script type="text/javascript">
        var allCityPinYin;
        function init() {
            getCityPinYin();
        }

        function getCityPinYin() {
            //TODO  try getJson without eval

            $.post("${basePath}city/getAllCityPinYin", function (data) {
                allCityPinYin = eval(data);
                /*    catcomplete            allCityPinYin=[
                 { id: "anders", value:"shanghai",category: "" },
                 { id: "andreas", value:"beijing",category: "" },
                 { id: "antal", value:"tianjin",category: "" },
                 { id: "annhhx10", value:"xiamen",category: "Products" },
                 { id: "annk K12", value:"liaoning",category: "Products" },
                 { id: "annttop C13", value:"fuzhou",category: "Products" },
                 { id: "anders andersson", value:"putian",category: "People" },
                 { id: "andreas andersson", value:"quanzhou",category: "People" },
                 { id: "andreas johnson", value:"zhangzhou",category: "People" }
                 ];*/
                bindAutoComplete();
            })
        }
        function bindAutoComplete() {
            //后面需要改写成有分类的 category
            $("#h_name").autocomplete({
                //   $("#h_name").catcomplete({
                source:allCityPinYin,
                /* focus:function( event, ui ) {
                 $( "#h_name" ).change();
                 },*/
                select:function (event, ui) {
                    $('#cityId').val(ui.item.id);
                    //alert(ui.item.value);
                    /* return true;*/
                }
            });
        }

        $(function () {
            $("#smq_str_date").datepicker({
               // defaultDate: "+1w",
                minDate: 0,
                changeMonth: true,
                numberOfMonths: 2,
                onClose: function( selectedDate ) {
                    $( "#smq_end_date" ).datepicker( "option", "minDate", selectedDate );
                }
            });
            $("#smq_end_date").datepicker({
                minDate: 0,
                changeMonth: true,
                numberOfMonths: 2,
                onClose: function( selectedDate ) {
                    $( "#smq_str_date" ).datepicker( "option", "maxDate", selectedDate );
                }
            });
            init();
        });

        function submit_for() {
            alert($('#cityId').val());
        }


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


    </div>
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
                        <form name="sysform_smq" method="get" id="sysform_smq" action="${basePath}">
                            <input type="hidden" name="select5" value="1"/>
                            <h4><span>酒店预订查询</span></h4>
                            <ul>
                                <li>
                                    <div class="cont_mid_simg01l"></div>
                                    <div class="cont_mid_simg01r">

                                        <h3>您出行的目的地是？</h3>

                                        <div>
                                            <p>选择城市:</p>
                                            <input type="text" size="60" class="input_w1 bc1" name="h_name" id="h_name"
                                                   title="type &quot;a&quot;"/>
                                            <input type="hidden" name="cityId" id="cityId"/>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </li>
                                <li>
                                    <div class="cont_mid_simg02l"></div>
                                    <div class="cont_mid_simg02r">
                                        <h3>您出行的时间是？</h3>

                                        <div class="checkinBox">
                                            <p>入住日期：</p>
                                            <input type="text" id="smq_str_date">
                                        </div>
                                        <div class="checkinBox">
                                            <p>离店日期：</p>
                                            <input type="text" id="smq_end_date">
                                        </div>
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
                                    <div class="clear"></div>
                                </li>
                            </ul>
                            <div class="ser_bton"><span class="ser_bspan">
                <input type="button" value="查询酒店" onclick="submit_for()"/>
            </span>
                            </div>
                        </form>
                        <div class="clear"></div>
                    </div>


                </div>
                <!--sss-->

                <div class="index_mid_htab">

                    <div class="index_mid_htop"><h3>酒店预订</h3>

                        <p>无论您是为家庭旅游预订酒店或者为您的出差选择住所，China Hotel中国酒店预订网都有最合适您的酒店预订</p></div>


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


            <!--E -->


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
<script type="text/javascript" src="2010css/CN_timeControl.js"></script>
<script type="text/javascript" src="2010inc/index.js"></script>
<script type="text/javascript">
    try {
        var pageTracker = _gat._getTracker("UA-373133-29");
        pageTracker._setDomainName("chinahotel.com.cn");
        pageTracker._initData();
        pageTracker._trackPageview();
    } catch (e) {
    }
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


</body>


</html>
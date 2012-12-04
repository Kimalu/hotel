<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="google-site-verification" content="AolagKSs8MfdIEAANjXDfN_jEotfFwi37K9Evjyy1Zc">
    <meta name="baidu_union_verify" content="287fefe6386a7cd508ffcb1ed64fee1d">
    <title>
        Yangzhou Rujia Hotel: Hotels Yangzhou, China, Yangzhou Hotel Reservation, Discount Yangzhou Hotels in China
    </title>

    <meta name="description"
          content="Hotels in Yangzhou, China: online reservation Yangzhou  hotels with great discounts, GUARANTEED LOWEST Yangzhou Hotel for 3-5 Star Hotels at China Hotel.">
    <meta name="keywords"
          content="Yangzhou Hotels, Yangzhou Hotel China, Yangzhou hostels,  hotels Yangzhou, Yangzhou hotel booking, Yangzhou luxury hotels, Yangzhou hotels map, Yangzhou hotel reviews, Yangzhou hotel map, Yangzhou airport hotel, accommodation, discount, deals">
    <meta name="google-site-verification" content="AolagKSs8MfdIEAANjXDfN_jEotfFwi37K9Evjyy1Zc">


    <link href="Search_files/index.css" rel="stylesheet" type="text/css">
    <link href="Search_files/search.css" rel="stylesheet" type="text/css">
    <link href="Search_files/jquery.css" rel="stylesheet" type="text/css">


    <!-- <link rel="stylesheet" href="../../Content/css.css" /> -->
    <script src="Search_files/ga.js" async="" type="text/javascript"></script>
    <script src="Search_files/jquery-1.js"></script>
    <script src="Search_files/jquery_002.js" type="text/javascript"></script>

    <script src="Search_files/Top.js" type="text/javascript"></script>

</head>
<body>
<div class="top">
    <div>
        <h2>Welcome to Chinahotel.com</h2>
        <ul>
            <li>
         <span>
         <img src="Search_files/SCn_L.gif" id="lanview" alt="cn.chinahotel.com" title="cn.chinahotel.com"
              onclick="ChangeLanguage('cn');" style="cursor: pointer;">

         </span>


                <div id="loginState" style=" display:inline;"><a
                        href="http://www.chinahotel.com/Register.html">Register</a> <a
                        href="http://www.chinahotel.com/login.html">Login in</a></div>
                <div id="landiv" style="display:none;">
                    <ul>
                        <li><img src="Search_files/En_L.gif" alt="www.chinahotel.com" title="www.chinahotel.com"
                                 onclick="ChangeLanguage('www');" style="cursor: pointer;"></li>
                        <li><img src="Search_files/BCn_L.gif" alt="big5.chinahotel.com" title="big5.chinahotel.com"
                                 onclick="ChangeLanguage('big5');" style="cursor: pointer;"></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>


</div>

<script src="Search_files/LoginState.js" type="text/javascript"></script>
<div id="head">
    <em><a href="http://www.chinahotel.com/index.html"><img src="Search_files/logo.gif" alt="ChinaHotel.com"
                                                            title="ChinaHotel.com"></a></em>
    <ul>
        <li class="nav_r"></li>
        <li><a href="http://www.chinahotel.com/HongKong-Hotels/">HongKong Hotels</a></li>
        <li><a href="http://www.chinahotel.com/Guangzhou-Hotels/">Guangzhou Hotels</a></li>
        <li><a href="http://www.chinahotel.com/Shanghai-Hotels/">Shanghai Hotels</a></li>
        <li><a href="http://www.chinahotel.com/Beijing-Hotels/">Beijing Hotels</a></li>
        <li><a href="http://www.chinahotel.com/AdvancedSearch.html">China Hotels</a></li>
        <li><a href="http://www.chinahotel.com/index.html">Home</a></li>
    </ul>
    <div class="clear"></div>
</div>


<script src="Search_files/EN_timeControl.js"></script>

<script src="Search_files/jquery.js" type="text/javascript"></script>
<script src="Search_files/keywordAutocomplete.js" type="text/javascript"></script>
<script src="Search_files/jquery_003.js"></script>
<script src="Search_files/Search.js"></script>

<div class="page-nav"><span>You are here:</span> <a href="http://www.chinahotel.com/index.html">Home</a> &gt; Hotel
    Search
</div>

<a name="atop" id="atop"></a>

<div id="content">
    <div id="left">
        <div class="search_1">

            <form id="kform" method="post" action="Search.html">
                <ul id="SearchUl">

                    <li><input id="keytype" name="keytype" value="hotels" type="hidden">
                        <input id="keyvalue" name="keyvalue" value="9442" type="hidden"><input autocomplete="off"
                                                                                               class="search_1_search_input ac_input"
                                                                                               id="keyword"
                                                                                               name="keyword"
                                                                                               value="Yangzhou Rujia Hotel"
                                                                                               type="text">
                        <a href="javascript:SubmitForm();"><img src="Search_files/search_button_2.gif" alt="Search"
                                                                title="Search" class="search_1_search_img"></a></li>
                    <li>
          <span>Check-in:<input class="search_1_date_input" value="2012-12-04" name="Checkin" id="Checkin"
                                onclick='showCalendar("Checkin",false,"Checkin"),cancelBubble(event);'
                                readonly="readonly" type="text">
          <iframe class="iframecal" id="CalFrame" name="CalFrame" marginheight="0" marginwidth="0"
                  src="Search_files/EN_calendar.htm" frameborder="0" height="200" scrolling="no" width="304"></iframe>
                Check-out:<input class="search_1_date_input" value="2012-12-05" id="Checkout" name="Checkout"
                                 onclick='showCalendar("Checkout",false,"Checkout"),cancelBubble(event);'
                                 readonly="readonly" type="text">

          </span>
                    </li>
                    <li>
                        <span><b>District:</b><a
                                href="http://www.chinahotel.com/Search.html?keytype=area&amp;keyvalue=1451&amp;keyword=Guangling">Guangling</a>  <a
                                href="http://www.chinahotel.com/Search.html?keytype=area&amp;keyvalue=1452&amp;keyword=Hanjiang">Hanjiang</a>  <a
                                href="http://www.chinahotel.com/Search.html?keytype=area&amp;keyvalue=1453&amp;keyword=Weiyang">Weiyang</a>  <a
                                href="http://www.chinahotel.com/Search.html?keytype=area&amp;keyvalue=1454&amp;keyword=Wenhe">Wenhe</a>  </span>
                    </li>
                    <li>
                        <span><b>Commercial:</b><a
                                href="http://www.chinahotel.com/Search.html?keytype=area&amp;keyvalue=1455&amp;keyword=City%20Center">City
                            Center</a>  <a
                                href="http://www.chinahotel.com/Search.html?keytype=area&amp;keyvalue=1456&amp;keyword=Slender%20West%20Lake%20area">Slender
                            West Lake area</a>   <a onclick="javascript:$('#more_com').show();$('#more_dis').hide();"
                                                    style="cursor: pointer;"><font
                                color="red">more&gt;&gt;&gt;</font></a> <div id="more_com" class="morePanel"><a
                                onclick="javascript:$('#more_com').hide();" title="Close" style="cursor: pointer;"><img
                                src="Search_files/xx.htm"></a><a
                                href="http://www.chinahotel.com/Search.html?keytype=area&amp;keyvalue=1457&amp;keyword=Yangzhou%20New%20Area">Yangzhou
                            New Area</a></div></span>
                    </li>
                    <li>
                        <span>Hotel Keywords:<input id="rekey" class="search_1_input_t" value="Search in results..."
                                                    onclick="if(this.value=='Search in results...') this.value='';"
                                                    type="text"> <input class="search_1_btn" value="Go"
                                                                        onclick="SearchGrep();" type="button"></span>
                    </li>

                </ul>
            </form>
        </div>
        <div class="clear"></div>
        <div class="tab">
            <strong>List View</strong><a href="http://www.chinahotel.com/Maps/Yangzhou-hotels.htm" target="_blank">Map
            View</a>
            <span>Results for your search (<em id="hcount">1</em> hotels found)</span>
        </div>

        <div>
            <ul class="sort">
                <li>Sort by:</li>
                <li><a href="javascript:SortPop()" id="pop">Popularity</a></li>
                <li><a href="javascript:SortPrice()" id="price">Price</a></li>
                <li><a href="javascript:SortRating()" id="rating">Hotel Rating</a></li>
            </ul>

            <div class="clear"></div>
        </div>

        <!-- 列表 开始 -->
        <table border="1">

                <tr>
                    <td>酒店名称</td>
                    <td>酒店位置</td>
                    <td>剩余房间数</td>
                    <td>房间价格</td>
                    <td>星级</td>
                    <td>评分</td>
                    <td>email</td>
                    <td>电话</td>

                </tr>
             <c:forEach items="${page.list}" var="hotel">
                 <tr>
                     <td>${hotel.brand.name.chs}</td>
                     <td>${hotel.address.chs}</td>
                     <td>3</td>
                     <td></td> <%--TODO hotel持有roomList--%>
                     <td>${hotel.brand.level}</td>
                     <td>${hotel.brand.score}</td>
                     <td>${hotel.email}</td>
                     <td>${hotel.tel}</td>
                 </tr>

             </c:forEach>

        </table>



        <%--<div id="Searchresult">
            <div class="result">
                <div class="hotelslist">
                    <ul class="hl-u1">
                        <li class="hl-name"><a
                                href="http://www.chinahotel.com/Yangzhou-Rujia_Hotel-Yangzhou.html?checkin=2012-12-04&amp;checkout=2012-12-05">Yangzhou
                            Rujia Hotel</a></li>
                        <li class="hl-location"><span><strong>Location: </strong>City Center</span>[<a
                                href="http://www.chinahotel.com/Maps/9442.html" target="_blank">Map</a>]
                        </li>
                        <li class="hl-info"><span><strong>Opened: </strong>2006</span><span><strong>Number of
                            rooms: </strong>69</span></li>
                    </ul>
                    <ul class="hl-u3">
                        <li class="hl-price"><em>Lowest:</em><a
                                href="http://www.chinahotel.com/hotels/9442.html?checkin=2012-12-04&amp;checkout=2012-12-05">CNY
                            <strong>118</strong></a></li>
                    </ul>
                    <ul class="hl-u2">
                        <li><span><div style="width: 0px;"></div></span>0</li>
                    </ul>
                </div>
            </div>
        </div>

        <div id="hiddenresult" style="display: none;">
            <div class="result">
                <div class="hotelslist">
                    <ul class="hl-u1">
                        <li class="hl-name"><a
                                href="http://www.chinahotel.com/Yangzhou-Rujia_Hotel-Yangzhou.html?checkin=2012-12-04&amp;checkout=2012-12-05">Yangzhou
                            Rujia Hotel</a></li>
                        <li class="hl-location"><span><strong>Location: </strong>City Center</span>[<a
                                href="http://www.chinahotel.com/Maps/9442.html" target="_blank">Map</a>]
                        </li>
                        <li class="hl-info"><span><strong>Opened: </strong>2006</span><span><strong>Number of
                            rooms: </strong>69</span></li>
                    </ul>
                    <ul class="hl-u3">
                        <li class="hl-price"><em>Lowest:</em><a
                                href="http://www.chinahotel.com/hotels/9442.html?checkin=2012-12-04&amp;checkout=2012-12-05">CNY
                            <strong>118</strong></a></li>
                    </ul>
                    <ul class="hl-u2">
                        <li><span><div style="width:0px"></div></span>0</li>
                    </ul>
                </div>
            </div>
        </div>--%>
        <!-- 列表 结束 -->

        <div>
            <div id="Pagination" class="pagination"><span class="current prev">Prev</span><span class="current">1</span><span
                    class="current next">Next</span></div>
            <div class="clear"></div>
        </div>
    </div>
    <div id="right">
        <div class="time">
            <h2>Beijing Time(GMT+8)</h2>

            <h3>2012-12-04 20:14:14</h3>
            <h4>Tuesday</h4>
        </div>
        <div class="line_1"></div>
        <div class="filter">
            <dl>
                <dt>Star rating</dt>

                <dd><input id="5st" name="star" value="5" onclick="FilterList();" type="checkbox"><label for="5st">5-star</label>
                </dd>
                <dd><input id="4st" name="star" value="4" onclick="FilterList();" type="checkbox"><label for="4st">4-star</label>
                </dd>
                <dd><input id="3st" name="star" value="3" onclick="FilterList();" type="checkbox"><label for="3st">3-star
                    and down</label></dd>
            </dl>
        </div>
        <div class="filter">
            <dl>
                <dt>Price</dt>

                <dd><input id="1p" name="price" value="0-300" onclick="FilterList();" type="checkbox"><label for="1p">0
                    ~ 300</label></dd>
                <dd><input id="2p" name="price" value="300-500" onclick="FilterList();" type="checkbox"><label for="2p">300
                    ~ 500</label></dd>
                <dd><input id="3p" name="price" value="500-800" onclick="FilterList();" type="checkbox"><label for="3p">500
                    ~ 800</label></dd>
                <dd><input id="4p" name="price" value="800-1500" onclick="FilterList();" type="checkbox"><label
                        for="4p">800 ~ 1500</label></dd>
                <dd><input id="5p" name="price" value="1500-1000000" onclick="FilterList();" type="checkbox"><label
                        for="5p">1500+</label></dd>

            </dl>
        </div>
        <div class="filter">
            <dl>
                <dt>Amenities</dt>


                <dd><input id="1s" name="Amenities" value="pick-up service" onclick="FilterList();"
                           type="checkbox"><label for="1s">Airport shuttle</label></dd>
                <dd><input id="2s" name="Amenities" value="net" onclick="FilterList();" type="checkbox"><label for="2s">Internet</label>
                </dd>
                <dd><input id="3s" name="Amenities" value="park place" onclick="FilterList();" type="checkbox"><label
                        for="3s">Parking</label></dd>
                <dd><input id="4s" name="Amenities" value="fitness" onclick="FilterList();" type="checkbox"><label
                        for="4s">Fitness Room</label></dd>
                <dd><input id="5s" name="Amenities" value="swimming pool" onclick="FilterList();" type="checkbox"><label
                        for="5s">Swinmming Pool</label></dd>
                <dd><input id="6s" name="Amenities" value="restaurant" onclick="FilterList();" type="checkbox"><label
                        for="6s">Restaurant</label></dd>
            </dl>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div id="wattingdiv" class="loading" style="position: absolute; top: 384px; left: 511.5px; display: none;">Watting
    Search.....
</div>

<script type="text/javascript">

    var json = [
        {"HotelID":9442, "HotelName":"Yangzhou Rujia Hotel", "HotelUrlName":"Yangzhou-Rujia_Hotel-Yangzhou", "CommercialName":"City Center", "Rating":0, "SetUpYear":"2006", "RoomNumber":69, "LowPrice":118, "AreaID":250, "LandMarkString":"moring call service,ticket,safety box,conference,laudary,luggage,pulic area of wirless net,park place for free,express service", "CustomerScore":0.0, "Address":"No.196 Weiyang Road"}
    ];


    BindData(json);


</script>


<div id="footer">
    <p><a><img src="Search_files/startssl.gif" alt="STARTSSL" title="STARTSSL"></a><a
            href="http://www.chinahotel.com/Aboutus.html">About Chinahotel</a> <a
            href="http://www.chinahotel.com/Contactus.html">Contact Us</a><a
            href="http://www.chinahotel.com/sitemap.html">Sitemap</a><a href="http://www.chinahotel.com/Privacy.html">Privacy</a><a
            href="http://www.chinahotel.com/Disclaimers.html">Terms of Use</a><a
            href="http://www.chinahotel.com/Help.html">FAQ &amp; HELP</a><a
            href="http://www.chinahotel.com/Feedback.html">Feedback</a></p>

    <p>2010 © ChinaHotel,Inc. All Rights Reserved.</p>
</div>

<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-3157859-13']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();

</script>


<div class="ac_results" style="display: none; width: 516px;"></div>
</body>
</html>
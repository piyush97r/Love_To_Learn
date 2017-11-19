<%-- 
    Document   : Profile_Home
    Created on : Nov 19, 2017, 12:22:05 PM
    Author     : Suhail.Siddiq
--%>

<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Home</title>
<!--        <link rel="stylesheet" href="Profile_Home.css" />
        <script type="text/javascript" src="min.js"></script>
        <script type="text/javascript" src="Profile_Home.js"></script>-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="min.css">
        <script src="min.js"></script>
        <script src="min2.js"></script>
    </head>
    <body>
        <%
            String Name = session.getAttribute("DisplayName").toString();
            System.out.println("The Name is" + Name);
            String Id = session.getAttribute("UserId").toString();
            System.out.println("The Id is " + Id);
        %>


        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">OnlineShopping</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#home">Home</a></li>
                    <li><a href="#product">Product
                        </a></li>          <li><a href="#service">Services</a></li>
                    <li><a href="#shop">Shop</a></li>

                </ul> <ul class="nav navbar-nav navbar-right">
                    <li><a href="#signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="#login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </nav>
        <div id = "home" class="container" align="justify">
            <h3>Online Shopping</h3>
            <p>Online contracts are classified as distance contracts, which means that the trader (service provider, seller) and the consumer (natural person who is acting for purposes which are outside his trade, business or profession), in lack of their simultaneous, actual and physical presence enter into contract not by meeting in person (e.g. in commercial premises, market, open-air market, via trade agent etc.), but only in an electronic way.</p>
            <center> <image src = "http://1.bp.blogspot.com/-AfaC9aIKQHw/T0EOvV1w0vI/AAAAAAAAAAM/7KnryXyrIQM/s1600/shop+online+logo.jpg">
                </div>
                <div id="product" class="container" align="justify">
                    <h2> Product</h2>
                    <p>Consumers find a product of interest by visiting the website of the retailer directly or by searching among alternative vendors using a shopping search engine. Once a particular product has been found on the website of the seller, most online retailers use shopping cart software to allow the consumer to accumulate multiple items and to adjust quantities, like filling a physical shopping cart or basket in a conventional store. A "checkout" process follows (continuing the physical-store analogy) in which payment and delivery information is collected, if necessary. Some stores allow consumers to sign up for a permanent online account so that some or all of this information only needs to be entered once. The consumer often receives an e-mail confirmation once the transaction is complete. Less sophisticated stores may rely on consumers to phone or e-mail their orders (although full credit card numbers, expiry date, and Card Security Code,[18] or bank account and routing number should not be accepted by e-mail, for reasons of security). 
                    </p>
                </div>

                <div id="service" class="container" align="justify">
                    <h2> Services</h2>
                    <p>  Online shoppers commonly use a credit card or a PayPal account in order to make payments. However, some systems enable users to create accounts and pay by alternative means, such as:
                    <ol>
                        <li>Billing to mobile phones and landlines</li>
                        <li>Cash on delivery (C.O.D.)
                        <li> Cheque/ Check</li>
                        <li> Debit card</li>
                        <li> Direct debit in some countries</li>
                        <li> Electronic money of various types</li>
                        <li> Gift cards</li>
                        <li>Postal money order</li>
                        <li> Wire transfer/delivery on payment</li>
                        <li> Invoice, especially popular in some markets/countries, such as Switzerland</li>
                    </ol>
                    <p>Some online shops will not accept international credit cards. Some require both the purchaser's billing and shipping address to be in the same country as the online shop's base of operation. Other online shops allow customers from any country to send gifts anywhere. The financial part of a transaction may be processed in real time (e.g. letting the consumer know their credit card was declined before they log off), or may be done later as part of the fulfillment process.</p>
                </div>

                <div id="shop" class="container" align="justify">
                    <h3>Shop</h3>
                    <p>Simple shopping cart systems allow the off-line administration of products and categories. The shop is then generated as HTML files and graphics that can be uploaded to a webspace. The systems do not use an online database. A high-end solution can be bought or rented as a stand-alone program or as an addition to an enterprise resource planning program. It is usually installed on the company's web server and may integrate into the existing supply chain so that ordering, payment, delivery, accounting and warehousing can be automated to a large extent. Other solutions allow the user to register and create an online shop on a portal that hosts multiple shops simultaneously from one back office. Examples are Big Commerce, Shopify and FlickRocket. Open source shopping cart packages include advanced platforms such as Interchange, and off-the-shelf solutions such as Magento, osCommerce, Shopgate, PrestaShop, and Zen Cart. Commercial systems can also be tailored so the shop does not have to be created from scratch. By using an existing framework, software modules for various functionalities required by a web shop can be adapted and combined.
                    </p>
                </div>
                </body>
                </html>

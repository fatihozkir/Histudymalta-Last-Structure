<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SiteProje.Yonetim.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="img/favicon.png"/>

    <title>Yönetim Paneli</title>

    <!-- Bootstrap CSS -->
    <link href="/Content/Admin/css/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- bootstrap theme -->
    <link href="/Content/Admin/css/bootstrap-theme.css" rel="stylesheet"/>
    <!--external css-->
    <!-- font icon -->
    <link href="/Content/Admin/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="/Content/Admin/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="/Content/Admin/css/style.css" rel="stylesheet"/>
    <link href="/Content/Admin/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="/Content/Admin/js/html5shiv.js"></script>
    <script src="/Content/Admin/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-img3-body">
     <div class="container">
    <form id="form1" class="login-form"  runat="server">
    
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
                <asp:TextBox ID="txtKullaniciAdi" cssclass="form-control"  required placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
             
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                 <asp:TextBox ID="txtSifre" cssclass="form-control"  required placeholder="Şifre" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <label class="checkbox">
                <asp:CheckBox ID="chkBeniHatirla" Text="Beni Hatırla" runat="server" />
                
            </label>
            <asp:Button ID="btnGiris" Cssclass="btn btn-primary btn-lg btn-block" runat="server" Text="Giriş" OnClick="btnGiris_Click" />
           <span style="text-align:center; color:red; font-weight:bold;"><asp:Label ID="lblBilgi" runat="server" ></asp:Label></span> 
        </div>
     

    
    </form>
         </div>
</body>
</html>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace SiteProje
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.Add("Home", new Route("Home", new PageRouteHandler("~/Default.aspx")));
            RouteTable.Routes.Add("Teachers", new Route("Teachers", new PageRouteHandler("~/Pages/Ogretmens/OgretmenListe.aspx")));
            RouteTable.Routes.Add("TeacherDetails", new Route("TeacherDetails/{AdSoyad}-{OgretmenId}", new PageRouteHandler("~/Pages/Ogretmens/OgretmenDetay.aspx")));
            RouteTable.Routes.Add("Courses", new Route("Courses", new PageRouteHandler("~/Pages/Kurslar/KursListele.aspx")));
            RouteTable.Routes.Add("CourseDetail", new Route("CourseDetail/{Baslik}-{HizmetId}", new PageRouteHandler("~/Pages/Kurslar/KursDetay.aspx")));
            RouteTable.Routes.Add("SubCourseDetail", new Route("SubCourseDetail/{Baslik}-{AltHizmetId}", new PageRouteHandler("~/Pages/Kurslar/KursDetay.aspx")));
            RouteTable.Routes.Add("ConstantContent", new Route("ConstantContent/{Baslik}-{SabitIcerikId}", new PageRouteHandler("~/Pages/SabitIceriks/SabitIcerikDetay.aspx")));
            RouteTable.Routes.Add("Contact", new Route("Contact", new PageRouteHandler("~/Pages/SabitIceriks/Contact.aspx")));
            RouteTable.Routes.Add("Login", new Route("Login", new PageRouteHandler("~/Pages/Kullanici/Giris.aspx")));
            RouteTable.Routes.Add("Account", new Route("Account", new PageRouteHandler("~/Pages/Kullanici/Hesabim.aspx")));
            RouteTable.Routes.Add("Logout", new Route("Logout", new PageRouteHandler("~/Pages/Kullanici/Cikis.aspx")));
            RouteTable.Routes.Add("Cart", new Route("MyCart", new PageRouteHandler("~/Pages/Sepet/Sepet.aspx")));
            RouteTable.Routes.Add("PayementAccount", new Route("PayementAccount/{Baslik}-{RandevuUyeId}", new PageRouteHandler("~/Pages/Sepet/Odeme.aspx")));
            RouteTable.Routes.Add("PayementCart", new Route("PayementCart/{Baslik}-{AltHizmetId}", new PageRouteHandler("~/Pages/Sepet/Odeme.aspx")));
            RouteTable.Routes.Add("Blogs", new Route("Blogs", new PageRouteHandler("~/Pages/Blogs/BlogListele.aspx")));
            RouteTable.Routes.Add("BlogContextDetail", new Route("BlogContextDetail/{Baslik}-{CokluIcerikId}", new PageRouteHandler("~/Pages/Blogs/BlogDetay.aspx")));
            RouteTable.Routes.Add("VerifyMail", new Route("VerifyMail/VerifyCode-{Guid}", new PageRouteHandler("~/Pages/Kullanici/Dogrulama.aspx")));
        }
    }
}
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using enty=SiteProjeORM.Entity;

namespace SiteProje.Yonetim.UserControls.Mesaj
{
    public partial class MesajDetay : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            enty.Mesaj msg=Mesajs.MesajGetir(int.Parse(Request.QueryString["MesajId"]));
            LabelAd.Text = msg.Ad;
            LabelSoyad.Text = msg.Soyad;
            LabelIpAdres.Text = msg.IpAdres;
            LabelMailAdres.Text = msg.Mail;
            LabelMesajTarihi.Text = msg.MesajTarihi.ToString();
            LiteralMesaj.Text = msg.GonderilenMesaj;
            
        }
    }
}
using SiteProjeORM;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.Randevu
{
    public partial class RandevuOgrenciListe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        protected void DataListRandevular_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Onay")
            {
                string[] arg = e.CommandArgument.ToString().Split('-');
                int RandevuUyeId = int.Parse(arg[0].ToString());
                int UyeId = int.Parse(arg[1].ToString());
                string randevuBaslik = arg[2].ToString();
                string ogrenciBilgi = "Sayın " + arg[3].ToString() + Environment.NewLine;
                string ogretmenBilgi = arg[4].ToString() + " adlı öğretmenden aldığınız " + Environment.NewLine;
                string baslangic = arg[5].ToString();
                string bitis = arg[6].ToString();
                string randevuTarihi = arg[7].ToString() + "." + arg[8].ToString() + "." + arg[9] + " tarihli " + Environment.NewLine;
                RandevuUyes.RandevuOnayla(RandevuUyeId);
                string uyeMail = Uyes.UyeMailAdresAl(UyeId);
                string mesaj = ogrenciBilgi + ogretmenBilgi + randevuTarihi + randevuBaslik + " onaylanmıştır." + Environment.NewLine + " Ders ile ilgili bilgiler " + Environment.NewLine + "Başlangıç Saati: " + baslangic + Environment.NewLine + "Bitiş Saati: " + bitis + Environment.NewLine + " şeklindedir." + Environment.NewLine + "İyi Dersler." + Environment.NewLine + "openmindatelier.com";
                Tools.MailGonder(uyeMail, randevuBaslik + " Ders Bilgilendirme Maili ", mesaj);
                DataListRandevular.DataBind();
            }
            else if (e.CommandName == "Sil")
            {
                RandevuUyes.RandevuRed(int.Parse(e.CommandArgument.ToString()));
                DataListRandevular.DataBind();
            }
        }
    }
}
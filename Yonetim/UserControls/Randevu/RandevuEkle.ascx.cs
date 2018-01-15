using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ent=SiteProjeORM.Entity;
namespace SiteProje.Yonetim.UserControls.Randevu
{
    public partial class RandevuEkle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            calendar.SelectedDate = DateTime.Now.Date;
            for (int i = 1; i <=24; i++)
            {
                DrpBaslangic.Items.Add(i.ToString());
                DrpBitis.Items.Add(i.ToString());

            }
            for (int i = 0; i <= 55; i+=5)
            {
                DrpBaslangicDakika.Items.Add(i.ToString());
                DrpBitisDakika.Items.Add(i.ToString());
            }
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            ent.Randevu rndv = new ent.Randevu();
            rndv.AltHizmetId = int.Parse(DropDownList1AltHizmet.SelectedValue);
            rndv.RandevuTarihi = calendar.SelectedDate;
            rndv.BaslangicSaati = DrpBaslangic.SelectedValue+":"+DrpBaslangicDakika.SelectedValue;
            rndv.BitisSaati = DrpBitis.SelectedValue + ":" + DrpBitisDakika.SelectedValue;
            Randevus.RandevuEkle(rndv);
            LtrBilgi.Text = "<div class=\"alert alert-success fade in\"> Randevu Eklendi !</div>";

        }
    }
}
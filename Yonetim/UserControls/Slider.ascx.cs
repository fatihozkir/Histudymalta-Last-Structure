using SiteProjeORM;
using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls
{
    public partial class Slider : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnYaziEkle_Click(object sender, EventArgs e)
        {
            string icerik = txtSliderYazi.Text;
            SliderYazi Sy = new SliderYazi();
            Sy.Icerik = icerik;
            switch (DrpIcerikTur.SelectedValue)
            {
                case "0":
                    Sy.BuyukBaslik = true;
                    break;
                case "1":
                    Sy.BuyukAltBaslik = true;
                    break;
                case "2":
                    Sy.DegisenYazi = true;
                    break;
            }
            Sliders.SliderYaziEkle(Sy);
            txtSliderYazi.Text = string.Empty;
            GridViewBuyukBaslik.DataBind();
            GridViewBuyukBaslikAlti.DataBind();
            GridViewDegisenYazi.DataBind();
        }

        protected void BtnSliderEkle_Click(object sender, EventArgs e)
        {
            if (FileUploadResim.HasFile)
            {
                string baslik = Tools.KarakterTemizle(txtBaslik.Text);
                string resimUrl = Tools.ResimIslem(FileUploadResim.PostedFile, baslik);
                Sliders.SliderResimEkle(resimUrl);
                GridViewResimler.DataBind();
            }
        }

        protected void GridViewResimler_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Sil")
            {
                string[] arg = e.CommandArgument.ToString().Split('!');
                Sliders.SliderResimSil(int.Parse(arg[0]));
                File.Delete(Server.MapPath("/Upload/Images/Medium/" + arg[1]));
                File.Delete(Server.MapPath("/Upload/Images/Big/" + arg[1]));
                File.Delete(Server.MapPath("/Upload/Images/Small/" + arg[1]));
                GridViewResimler.DataBind();
            }
            
        }

        protected void GridViewBuyukBaslik_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridViewDegisenYazi.DataBind();
            GridViewBuyukBaslikAlti.DataBind();
        }

        protected void GridViewBuyukBaslikAlti_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridViewDegisenYazi.DataBind();
            GridViewBuyukBaslik.DataBind();
        }

        protected void GridViewDegisenYazi_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridViewBuyukBaslikAlti.DataBind();
            GridViewBuyukBaslik.DataBind();
        }
    }
}
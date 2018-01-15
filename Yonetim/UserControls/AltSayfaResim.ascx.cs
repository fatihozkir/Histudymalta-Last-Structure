using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SiteProjeORM;
using SiteProjeORM.Facade;

namespace SiteProje.Yonetim.UserControls
{
    public partial class AltSayfaResim : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSliderEkle_Click(object sender, EventArgs e)
        {
            if (FileUploadResim.HasFile)
            {
                string baslik = Tools.KarakterTemizle(txtBaslik.Text);
                string resimUrl = Tools.ResimIslem(FileUploadResim.PostedFile, baslik);
                int Secenek = int.Parse(DrpDownSecenek.SelectedValue.ToString());
                switch (Secenek)
                {
                    case 0:
                        Sliders.HakkimdaResimEkle(resimUrl);
                        break;
                    case 1:
                        Sliders.KursListeResimEkle(resimUrl);
                        break;
                    case 2:
                        Sliders.KursDetayResimEkle(resimUrl);
                        break;
                    case 3:
                        Sliders.BlogListeResimEkle(resimUrl);
                        break;
                    case 4:
                        Sliders.BlogDetayResimEkle(resimUrl);
                        break;
                    case 5:
                        Sliders.IletisimResimEkle(resimUrl);
                        break;
                }
                txtBaslik.Text = string.Empty;
                GridView1.DataBind();
            }
        }
    }
}
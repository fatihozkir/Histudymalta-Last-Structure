using SiteProjeORM;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.UserControls
{
    public partial class Social : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataTable Dt = Tools.IcerikListele("Select FacebookUrl,TwitterUrl,InstagramUrl from Iletisim");
                 if (Dt.Rows[0]["FacebookUrl"].ToString() != "-")
                {
                    LinkBtnFacebook.PostBackUrl = Dt.Rows[0]["FacebookUrl"].ToString();
                }

                if (Dt.Rows[0]["InstagramUrl"].ToString() != "-")
                {
                    LinkBtnInstagram.PostBackUrl = Dt.Rows[0]["InstagramUrl"].ToString();
                }

                if (Dt.Rows[0]["TwitterUrl"].ToString() != "-")
                {
                    LinkBtnTwitter.PostBackUrl = Dt.Rows[0]["TwitterUrl"].ToString();
                }

                
                
                
            }
            catch (Exception)
            {
                return;
            }
            
        }
    }
}
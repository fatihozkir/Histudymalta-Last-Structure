using SiteProjeORM;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region SeoMetaTag
            DataTable dtMeta = Tools.IcerikListele("Select Tag from AltHizmetlerMetaTag ");
            string metaKey = "";
            for (int i = 0; i < dtMeta.Rows.Count; i++)
            {
                if (i != dtMeta.Rows.Count - 1)
                {
                    metaKey += dtMeta.Rows[i]["Tag"] + ",";
                }
                else
                {
                    metaKey += dtMeta.Rows[i]["Tag"];
                }

            }
            LtrMeta.Text += "<meta name=\"keywords\" content=\"" + metaKey + "\" />";
            #endregion
        }
        [WebMethod]
        public static string Index()
        {
            return  Sliders.ResimleriGetir();
        }
    }
}
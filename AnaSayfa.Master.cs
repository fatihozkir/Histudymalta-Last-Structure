using SiteProjeORM;
using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje
{
    public partial class AnaSayfa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                LtrBilgi.Text = string.Empty;
            }
            try
            {
                #region SosyalMedya
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

                #endregion
                #region blogOnIzleme

                DataTable DtBlogs = CokluIceriklers.CokluIcerikListeleAnasayfa();
                int sayi = DtBlogs.Rows.Count;
                switch (sayi)
                {
                    case 1:
                        PanelIcerik0.Visible = true;
                        break;
                    case 2:
                        PanelIcerik0.Visible = true;
                        PanelIcerik1.Visible = true;
                        break;
                    case 3:
                        PanelIcerik0.Visible = true;
                        PanelIcerik1.Visible = true;
                        PanelIcerik2.Visible = true;
                        break;
                    case 4:
                        PanelIcerik0.Visible = true;
                        PanelIcerik1.Visible = true;
                        PanelIcerik2.Visible = true;
                        PanelIcerik3.Visible = true;
                        break;
                    case 5:
                        PanelIcerik0.Visible = true;
                        PanelIcerik1.Visible = true;
                        PanelIcerik2.Visible = true;
                        PanelIcerik3.Visible = true;
                        PanelIcerik4.Visible = true;
                        break;
                    case 6:
                        PanelIcerik0.Visible = true;
                        PanelIcerik1.Visible = true;
                        PanelIcerik2.Visible = true;
                        PanelIcerik3.Visible = true;
                        PanelIcerik4.Visible = true;
                        PanelIcerik5.Visible = true;
                        break;


                }
                #region 0.Icerik
                ImgIcerik0.ImageUrl = "/Upload/Images/Medium/" + DtBlogs.Rows[0]["MansetResim"].ToString();
                LblIcerik0Tarih.Text = DtBlogs.Rows[0]["Gun"].ToString() + "/" + DtBlogs.Rows[0]["Ay"].ToString() + "/" + DtBlogs.Rows[0]["Yil"].ToString();
                ImgIcerik0.AlternateText = LinkBtn0Baslik.Text = DtBlogs.Rows[0]["Baslik"].ToString();

                LinkBtn0Baslik.PostBackUrl =
                LinkBtnIcerik01.PostBackUrl =
                LinkBtn0Icerik.PostBackUrl =
                LinkBtn0Incele.PostBackUrl =

                "/BlogContextDetail/" + Tools.KarakterTemizle(DtBlogs.Rows[0]["Baslik"].ToString()) + "-"
                + DtBlogs.Rows[0]["CokluIcerikId"].ToString();

                LinkBtn0Icerik.Text = DtBlogs.Rows[0]["Icerik"].ToString().Length > 60 ? DtBlogs.Rows[0]["Icerik"].ToString().Substring(0, 59) + "..." : DtBlogs.Rows[0]["Icerik"].ToString();
                #endregion

                #region 1.Icerik
                LinkBtn1Baslik.Text = DtBlogs.Rows[1]["Baslik"].ToString();
                LinkBtn1Baslik.PostBackUrl = "/BlogContextDetail/" + Tools.KarakterTemizle(DtBlogs.Rows[1]["Baslik"].ToString()) + "-"
        + DtBlogs.Rows[1]["CokluIcerikId"].ToString();




                #endregion

                #region 2.Icerik
                ImgIcerik2.ImageUrl = "Content/Language/img/blog/img1.jpg"; //"/Upload/Images/Medium/" + DtBlogs.Rows[2]["MansetResim"].ToString();
                LblIcerik2Tarih.Text = DtBlogs.Rows[2]["Gun"].ToString() + "/" + DtBlogs.Rows[2]["Ay"].ToString() + "/" + DtBlogs.Rows[2]["Yil"].ToString();
                ImgIcerik2.AlternateText = LinkBtnBaslik2.Text = DtBlogs.Rows[2]["Baslik"].ToString();
                LinkBtnIcerik2.PostBackUrl = LinkBtnBaslik2.PostBackUrl = LinkBtn4Incele.PostBackUrl = "/BlogContextDetail/" + Tools.KarakterTemizle(DtBlogs.Rows[2]["Baslik"].ToString()) + "-" + DtBlogs.Rows[2]["CokluIcerikId"].ToString();

                #endregion

                #region 3.Icerik
                ImgIcerik3.ImageUrl = "/Upload/Images/Medium/" + DtBlogs.Rows[3]["MansetResim"].ToString();
                LblIcerik3Tarih.Text = DtBlogs.Rows[3]["Gun"].ToString() + "/" + DtBlogs.Rows[3]["Ay"].ToString() + "/" + DtBlogs.Rows[3]["Yil"].ToString();
                LinkBtn3Baslik.Text = DtBlogs.Rows[3]["Baslik"].ToString();
                LinkBtn3Incele.PostBackUrl = LinkBtn3Icerik.PostBackUrl = LinkBtn3Baslik.PostBackUrl = "/BlogContextDetail/" + Tools.KarakterTemizle(DtBlogs.Rows[3]["Baslik"].ToString()) + "-"
                + DtBlogs.Rows[3]["CokluIcerikId"].ToString();
                LinkBtn3Icerik.Text = DtBlogs.Rows[3]["Icerik"].ToString().Length > 60 ? DtBlogs.Rows[3]["Icerik"].ToString().Substring(0, 59) + "..." : DtBlogs.Rows[3]["Icerik"].ToString();
                #endregion

                #region 4.Icerik
                ImgIcerik4.ImageUrl = "/Upload/Images/Medium/" + DtBlogs.Rows[4]["MansetResim"].ToString();
                LblIcerik4Tarih.Text = DtBlogs.Rows[4]["Gun"].ToString() + "/" + DtBlogs.Rows[4]["Ay"].ToString() + "/" + DtBlogs.Rows[4]["Yil"].ToString();
                LinkBtn4Baslik.PostBackUrl = LinkBtn4Incele.PostBackUrl = "/BlogContextDetail/" + Tools.KarakterTemizle(DtBlogs.Rows[4]["Baslik"].ToString()) + "-" + DtBlogs.Rows[4]["CokluIcerikId"].ToString();
                LinkBtn4Baslik.Text = DtBlogs.Rows[4]["Baslik"].ToString();
                #endregion

                #region 5.Icerik
                LinkBtn5Baslik.PostBackUrl = "/BlogContextDetail/" + Tools.KarakterTemizle(DtBlogs.Rows[5]["Baslik"].ToString()) + "-" + DtBlogs.Rows[5]["CokluIcerikId"].ToString();
                LinkBtn5Baslik.Text = DtBlogs.Rows[5]["Baslik"].ToString();
                #endregion

                #endregion



            }
            catch (Exception)
            {
                return;
            }
            finally
            {
                if (Session["UyeId"] != null)
                {
                    int id = int.Parse(Session["UyeId"].ToString());
                    Uye u = Uyes.UyeBilgileriGetir(id);
                    LinkBtnHesap.Text = "Welcome Dear: " + u.Ad + " " + u.Soyad;

                    LinkBtnHesap.Visible = true;
                    PanelUnLogin.Visible = false;
                }
                try
                {
                    DataTable DtBuyukBaslik = Sliders.SliderBuyukBaslikGetir();
                    DataTable DtBuyukAltBaslik = Sliders.SliderBuyukAltBaslikGetir();
                    DataTable DtDegisenYazi = Sliders.SliderDegisenYaziGetir();
                    RepeaterDegisenYazi.DataSource = DtDegisenYazi;
                    RepeaterDegisenYazi.DataBind();
                    LtrBuyukBaslik.Text = DtBuyukBaslik.Rows[0]["Icerik"].ToString();
                    LtrBuyukAltBaslik.Text = DtBuyukAltBaslik.Rows[0]["Icerik"].ToString();

                }
                catch (Exception)
                {

                }
            }

            
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            Mesaj msg = new Mesaj();
            msg.Ad = txtIsım.Text;
            msg.Soyad = txtSoyad.Text;
            msg.Mail = txtMail.Text;
            msg.GonderilenMesaj = txtMesaj.Text;
            Mesajs.MesajGonder(msg);
            txtIsım.Text = txtMail.Text = txtMesaj.Text = txtSoyad.Text = string.Empty;
            LtrBilgi.Text = "<span class=\"nicdark_second_font nicdark_bg_green nicdark_padding_5 nicdark_border_radius_3 nicdark_color_white nicdark_display_inline_block\">Message sent to us.<br>Thank You For This.</span>";
        }
    }
}
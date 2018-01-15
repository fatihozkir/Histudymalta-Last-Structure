using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Web;
using draw = System.Drawing;
using System.IO;
using System.Net.Mail;
using System.Net;

namespace SiteProjeORM
{
    public static class Tools
    {
		//Singleton Pattern
        private static SqlConnection baglanti;
        private static object BaglantiKontrol=new object();
        public static SqlConnection Baglanti()
        {
            try
            {
                if (baglanti == null)
                {
                    lock (BaglantiKontrol)
                    {
                        if (baglanti == null)
                        {
                            baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["EducationConnectionString"].ConnectionString);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
           
            return baglanti;
        }
        public static DataTable IcerikListele(string komut)
        {
            SqlDataAdapter SDap = new SqlDataAdapter(komut, Baglanti());
            DataTable DT = new DataTable();
            SDap.Fill(DT);
            return DT;
        } 
        public static bool ExecuteNonQuery(SqlCommand komut)
        {
            try
            {
                if (komut.Connection.State!=System.Data.ConnectionState.Open)
                {
                    komut.Connection.Open();
                }
                return komut.ExecuteNonQuery() > 0;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                if (komut.Connection.State==System.Data.ConnectionState.Open)
                {
                    komut.Connection.Close();
                }
            }
        }
     
        public static string ResimIslem(HttpPostedFile resim, string Baslik)
        {
           
            string DosyaTipi = resim.ContentType.ToString();
            if (DosyaTipi == "image/png" || DosyaTipi == "image/jpeg")
            {

                string resimAdi = resim.FileName;
                string url = KarakterTemizle(Baslik) + "_" + Guid.NewGuid() + Path.GetExtension(resimAdi);
                resim.SaveAs(HttpContext.Current.Server.MapPath("/Upload/Images/") + url);

                int donusum = 1024;

                draw.Bitmap bmp = new draw.Bitmap(HttpContext.Current.Server.MapPath("/Upload/Images/") + url);



                using (draw.Bitmap ResOrj = bmp)
                {
                    double ResimYukseklik = ResOrj.Height;
                    double ResimGenislik = ResOrj.Width;
                    double oran = 0;
                    oran = ResimGenislik / ResimYukseklik;
                    if (ResimGenislik >= donusum)
                    {

                        ResimGenislik = donusum;
                        ResimYukseklik = donusum / oran;
                        draw.Size yeniDegerler = new draw.Size((int) ResimGenislik, (int) ResimYukseklik);

                        draw.Bitmap yeniResim = new draw.Bitmap(ResOrj, yeniDegerler);
                        FligranEkle(yeniResim);
                        yeniResim.Save(HttpContext.Current.Server.MapPath("/Upload/Images/Big/") + url);

                        yeniResim.Dispose();
                        ResOrj.Dispose();
                        bmp.Dispose();

                    }
                    else
                    {
                        resim.SaveAs(HttpContext.Current.Server.MapPath("/Upload/Images/Big/") + url);
                    }
                }

                donusum = 650;
                bmp = new draw.Bitmap(HttpContext.Current.Server.MapPath("/Upload/Images/") + url);
                using (draw.Bitmap ResOrj = bmp)
                {
                    double ResimYukseklik = ResOrj.Height;
                    double ResimGenislik = ResOrj.Width;
                    double oran = 0;
                    oran = ResimGenislik / ResimYukseklik;
                    if (ResimGenislik >= donusum)
                    {
                        ResimGenislik = donusum;
                        ResimYukseklik = donusum / oran;
                        draw.Size yeniDegerler = new draw.Size((int) ResimGenislik, (int) ResimYukseklik);

                        draw.Bitmap yeniResim = new draw.Bitmap(ResOrj, yeniDegerler);
                        FligranEkle(yeniResim);
                        yeniResim.Save(HttpContext.Current.Server.MapPath("/Upload/Images/Medium/") + url);

                        yeniResim.Dispose();
                        ResOrj.Dispose();
                        bmp.Dispose();

                    }
                    else
                    {
                        resim.SaveAs(HttpContext.Current.Server.MapPath("/Upload/Images/Medium/") + url);
                    }
                }

                donusum = 100;
                bmp = new draw.Bitmap(HttpContext.Current.Server.MapPath("/Upload/Images/") + url);
                using (draw.Bitmap ResOrj = bmp)
                {
                    double ResimYukseklik = ResOrj.Height;
                    double ResimGenislik = ResOrj.Width;
                    double oran = 0;
                    oran = ResimGenislik / ResimYukseklik;
                    if (ResimGenislik >= donusum)
                    {
                        ResimGenislik = donusum;
                        ResimYukseklik = donusum / oran;
                        draw.Size yeniDegerler = new draw.Size((int) ResimGenislik, (int) ResimYukseklik);

                        draw.Bitmap yeniResim = new draw.Bitmap(ResOrj, yeniDegerler);
                        FligranEkle(yeniResim);
                        yeniResim.Save(HttpContext.Current.Server.MapPath("/Upload/Images/Small/") + url);

                        yeniResim.Dispose();
                        ResOrj.Dispose();
                        bmp.Dispose();

                    }
                    else
                    {
                        resim.SaveAs(HttpContext.Current.Server.MapPath("/Upload/Images/Small/") + url);
                    }
                }


                FileInfo fi = new FileInfo(HttpContext.Current.Server.MapPath("/Upload/Images/") + url);
                fi.Delete();

                return url;
            }
            else
            {
                throw new Exception("Hatalı Resim Formatı !");
            }
        }
        private static void FligranEkle(draw.Bitmap bmp)
        {
            draw.Graphics graf = draw.Graphics.FromImage(bmp);

            draw.SolidBrush firca = new draw.SolidBrush(draw.Color.FromArgb(25, 0, 0, 0));


            double kosegen = Math.Sqrt(bmp.Width * bmp.Width + bmp.Height * bmp.Height);
            draw.Rectangle kutu = new draw.Rectangle();

            kutu.X = (int) (kosegen / 10);
            float yazi = (float) (kosegen / "histudymalta.com".Length * 1.2);
            kutu.Y = -(int) (yazi / 1.2);

            draw.Font fnt = new draw.Font("times new roman", yazi, draw.FontStyle.Bold);//font tipi ve boyutu       

            float egim = (float) (Math.Atan2(bmp.Height, bmp.Width) * 180 / System.Math.PI);
            graf.RotateTransform(egim);
            draw.StringFormat sf = new draw.StringFormat();

            graf.DrawString("histudymalta.com", fnt, firca, kutu, sf);
        }
        public static string DosyaIslem(HttpPostedFile dosya,string Baslik)
        {
            string DosyaTipi = dosya.ContentType.ToString();
            
            if (DosyaTipi== "application/pdf" || DosyaTipi== "application/vnd.openxmlformats-officedocument.wordprocessingml.document" || DosyaTipi== "application/vnd.ms-powerpoint" || DosyaTipi == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
            {
                string dosyaAdi = dosya.FileName;
                string url = KarakterTemizle(Baslik) + "_" + Guid.NewGuid() + Path.GetExtension(dosyaAdi);
                switch (DosyaTipi)
                {
                   
                    case "application/vnd.openxmlformats-officedocument.wordprocessingml.document":
                        dosya.SaveAs(HttpContext.Current.Server.MapPath("/Upload/Files/Word/") + url);
                        break;
                    case "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet":
                        dosya.SaveAs(HttpContext.Current.Server.MapPath("/Upload/Files/Excel/") + url);
                        break;
                    case "application/vnd.ms-powerpoint":
                        dosya.SaveAs(HttpContext.Current.Server.MapPath("/Upload/Files/PowerPoint/") + url);
                        break;
                    case "application/pdf":
                        dosya.SaveAs(HttpContext.Current.Server.MapPath("/Upload/Files/Pdf/") + url);
                        break;
                }
                return url;
                
            }
            else
            {
                throw new Exception("Hatalı Dosya Türü !");
            }
        }
        public static string KarakterTemizle(string metin)
        {
            string degerler = metin;
            degerler = degerler.Replace("'", "");
            degerler = degerler.Replace(" ", "");
            degerler = degerler.Replace(".", "");
            degerler = degerler.Replace(",", "");
            degerler = degerler.Replace("<", "");
            degerler = degerler.Replace(">", "");
            degerler = degerler.Replace("&", "");
            degerler = degerler.Replace("[", "");
            degerler = degerler.Replace("]", "");
            degerler = degerler.Replace("ı", "i");
            degerler = degerler.Replace("İ", "i");
            degerler = degerler.Replace("ö", "o");
            degerler = degerler.Replace("ü", "u");
            degerler = degerler.Replace("Ü", "u");
            degerler = degerler.Replace("Ö", "o");
            degerler = degerler.Replace("ç", "c");
            degerler = degerler.Replace("Ç", "c");
            degerler = degerler.Replace("Ş", "s");
            degerler = degerler.Replace("ş", "s");
            degerler = degerler.Replace("Ğ", "g");
            degerler = degerler.Replace("ğ", "g");

            return degerler;

        }
        public static string IpAdresiAl()
        {
            var ipAddress = string.Empty;
            if (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
            {
                ipAddress = System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
            }
            else if (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"] != null &&System.Web.HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"].Length != 0)
            {
                ipAddress = System.Web.HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"];
            }
            else if (System.Web.HttpContext.Current.Request.UserHostAddress.Length != 0)
            {
                ipAddress = System.Web.HttpContext.Current.Request.UserHostName;
            }
            return ipAddress;
        }
        public static bool MailGonder(string Alici,string konu,string mesaj)
        {
            bool drm = true;
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.Credentials = new NetworkCredential("", "");
                MailMessage msg = new MailMessage("", Alici);
                msg.Body = mesaj;
                msg.Subject = konu;
                client.Send(msg);
            }
            catch (Exception ex)
            {
                drm = false;
                throw new Exception(ex.Message + " Hatası Oluştu !");
                
            }
            return drm;
        }


    }
}

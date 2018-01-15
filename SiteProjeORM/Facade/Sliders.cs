using SiteProjeORM.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Facade
{
    public static class Sliders
    {
        public static void SliderResimEkle(string resimUrl)
        {
            SqlCommand resimEkle = new SqlCommand("Insert into SliderResim values(@ResimUrl)",Tools.Baglanti());
            resimEkle.Parameters.AddWithValue("@ResimUrl", resimUrl);
            Tools.ExecuteNonQuery(resimEkle);
        }
        public static void HakkimdaResimEkle(string resimUrl)
        {
            SqlCommand resimEkle = new SqlCommand("Insert into AltSayfaResim(ResimUrl,Hakkimda) values(@ResimUrl,@Hakkimda)", Tools.Baglanti());
            resimEkle.Parameters.AddWithValue("@ResimUrl", resimUrl);
            resimEkle.Parameters.AddWithValue("@Hakkimda", true);
            Tools.ExecuteNonQuery(resimEkle);
        }
        public static string HakkimdaResimGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ResimUrl from AltSayfaResim where Hakkimda=1", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            string resimler = Dt.Rows[0]["ResimUrl"].ToString();
            return resimler;
        }
        public static void KursListeResimEkle(string resimUrl)
        {
            SqlCommand resimEkle = new SqlCommand("Insert into AltSayfaResim(ResimUrl,KursListeleme) values(@ResimUrl,@Hakkimda)", Tools.Baglanti());
            resimEkle.Parameters.AddWithValue("@ResimUrl", resimUrl);
            resimEkle.Parameters.AddWithValue("@Hakkimda", true);
            Tools.ExecuteNonQuery(resimEkle);
        }
        public static string KursListeResimGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ResimUrl from AltSayfaResim where KursListeleme=1", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            string resimler = Dt.Rows[0]["ResimUrl"].ToString();
            return resimler;
        }
        public static void KursDetayResimEkle(string resimUrl)
        {
            SqlCommand resimEkle = new SqlCommand("Insert into AltSayfaResim(ResimUrl,KursDetay) values(@ResimUrl,@Hakkimda)", Tools.Baglanti());
            resimEkle.Parameters.AddWithValue("@ResimUrl", resimUrl);
            resimEkle.Parameters.AddWithValue("@Hakkimda", true);
            Tools.ExecuteNonQuery(resimEkle);
        }
        public static string KursDetayResimGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ResimUrl from AltSayfaResim where KursDetay=1", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            string resimler = Dt.Rows[0]["ResimUrl"].ToString();
            return resimler;
        }
        public static void BlogListeResimEkle(string resimUrl)
        {
            SqlCommand resimEkle = new SqlCommand("Insert into AltSayfaResim(ResimUrl,BlogListeleme) values(@ResimUrl,@Hakkimda)", Tools.Baglanti());
            resimEkle.Parameters.AddWithValue("@ResimUrl", resimUrl);
            resimEkle.Parameters.AddWithValue("@Hakkimda", true);
            Tools.ExecuteNonQuery(resimEkle);
        }
        public static string BlogListeResimGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ResimUrl from AltSayfaResim where BlogListeleme=1", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            string resimler = Dt.Rows[0]["ResimUrl"].ToString();
            return resimler;
        }
        public static void BlogDetayResimEkle(string resimUrl)
        {
            SqlCommand resimEkle = new SqlCommand("Insert into AltSayfaResim(ResimUrl,BlogDetay) values(@ResimUrl,@Hakkimda)", Tools.Baglanti());
            resimEkle.Parameters.AddWithValue("@ResimUrl", resimUrl);
            resimEkle.Parameters.AddWithValue("@Hakkimda", true);
            Tools.ExecuteNonQuery(resimEkle);
        }
        public static string BlogDetayResimGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ResimUrl from AltSayfaResim where BlogDetay=1", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            string resimler = Dt.Rows[0]["ResimUrl"].ToString();
            return resimler;
        }
        public static void IletisimResimEkle(string resimUrl)
        {
            SqlCommand resimEkle = new SqlCommand("Insert into AltSayfaResim(ResimUrl,Iletisim) values(@ResimUrl,@Iletisim)", Tools.Baglanti());
            resimEkle.Parameters.AddWithValue("@ResimUrl", resimUrl);
            resimEkle.Parameters.AddWithValue("@Iletisim", true);
            Tools.ExecuteNonQuery(resimEkle);
        }
        public static string IletisimResimGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ResimUrl from AltSayfaResim where Iletisim=1", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            string resimler = Dt.Rows[0]["ResimUrl"].ToString();
            return resimler;
        }
        public static void SliderYaziEkle(SliderYazi SR)
        {
            SqlCommand yaziEkle = new SqlCommand("Insert into SliderYazi([Icerik],[BuyukBaslik],[BuyukAltBaslik],[DegisenYazi])  Values(@Icerik,@BuyukBaslik,@BuyukAltBaslik,@DegisenYazi)", Tools.Baglanti());
            yaziEkle.Parameters.AddWithValue("@Icerik", SR.Icerik);
            yaziEkle.Parameters.AddWithValue("@BuyukAltBaslik", SR.BuyukAltBaslik);
            yaziEkle.Parameters.AddWithValue("@BuyukBaslik", SR.BuyukBaslik);
            yaziEkle.Parameters.AddWithValue("@DegisenYazi", SR.DegisenYazi);
            Tools.ExecuteNonQuery(yaziEkle);
        }
        public static void SliderResimSil(int Id)
        {
            SqlCommand ResimSil = new SqlCommand("Delete from SliderResim where SliderResimId=@id", Tools.Baglanti());
            ResimSil.Parameters.AddWithValue("@id", Id);
            Tools.ExecuteNonQuery(ResimSil);
        }
        public static void SliderYaziSil(int Id)
        {
            SqlCommand yaziSil = new SqlCommand("Delete from SliderYazi where SliderYaziId=@id", Tools.Baglanti());
            yaziSil.Parameters.AddWithValue("@id", Id);
            Tools.ExecuteNonQuery(yaziSil);
        }
        
        public static DataTable SliderBuyukBaslikGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select Top(1) Icerik from SliderYazi where BuyukBaslik=1 order by SliderYaziId desc", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            return Dt;
        }
        public static DataTable SliderBuyukAltBaslikGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select Top(1) Icerik from SliderYazi where BuyukAltBaslik=1 order by SliderYaziId desc", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            return Dt;
        }
        public static DataTable SliderDegisenYaziGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select Icerik from SliderYazi where DegisenYazi=1 order by SliderYaziId desc", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            return Dt;
        }
        public static string ResimleriGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ResimUrl from SliderResim", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            string resimler = "";
            for (int i = 0; i < Dt.Rows.Count; i++)
            {
                if (i!=Dt.Rows.Count-1)
                {
                    resimler += Dt.Rows[i]["ResimUrl"].ToString().ToString()+"!";
                }
                else
                {
                    resimler += Dt.Rows[i]["ResimUrl"].ToString().ToString();
                }
                
            }
            return resimler;
        }
    }
}

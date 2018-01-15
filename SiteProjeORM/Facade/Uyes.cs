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
    public static class Uyes
    {
        public static string UyeMailAdresAl(int UyeId)
        {
            SqlDataAdapter uyeGetir = new SqlDataAdapter("Select Mail from Uye where UyeId=@UyeId",Tools.Baglanti());
            uyeGetir.SelectCommand.Parameters.AddWithValue("@UyeId", UyeId);
            DataSet ds = new DataSet();
            uyeGetir.Fill(ds);
            string mailAdres="";
            if (!string.IsNullOrEmpty(ds.Tables[0].Rows[0]["Mail"].ToString()))
            {
                mailAdres = ds.Tables[0].Rows[0]["Mail"].ToString();
            }
            return mailAdres;
        }
        public static Uye UyeGiris(string Mail,string Sifre)
        {
            Uye uye = new Uye();
            uye.UyelikOnay = EUyelikOnay.OnayliDegil;
            SqlDataAdapter giris = new SqlDataAdapter("Select UyeId,Onay from Uye where Mail=@Mail and Sifre=@Sifre", Tools.Baglanti());
            giris.SelectCommand.Parameters.AddWithValue("@Mail", Mail);
            giris.SelectCommand.Parameters.AddWithValue("@Sifre", Sifre);
            DataSet ds = new DataSet();
            giris.Fill(ds);
            uye.UyeId = int.Parse(ds.Tables[0].Rows[0]["UyeId"].ToString());
            bool drm=Convert.ToBoolean(ds.Tables[0].Rows[0]["Onay"]);
            if (drm)
            {
                uye.UyelikOnay = EUyelikOnay.Onayli;
            }
            return uye;

        }
        public static Uye UyeBilgileriGetir(int uyeId)
        {
            Uye uye = new Uye();
            SqlDataAdapter dap = new SqlDataAdapter("Select * from Uye Where UyeId=@UyeId",Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@UyeId", uyeId);
            DataSet ds = new DataSet();
            dap.Fill(ds);
            uye.Ad = ds.Tables[0].Rows[0]["Ad"].ToString();
            uye.Soyad = ds.Tables[0].Rows[0]["Soyad"].ToString();
            uye.Mail = ds.Tables[0].Rows[0]["Mail"].ToString();
            uye.Telefon = long.Parse(ds.Tables[0].Rows[0]["Telefon"].ToString());
            bool Onay= bool.Parse(ds.Tables[0].Rows[0]["Onay"].ToString());
            bool Abone = bool.Parse(ds.Tables[0].Rows[0]["Abone"].ToString());
            if (Onay)
            {
                uye.UyelikOnay = EUyelikOnay.Onayli;
            }
            if (Abone)
            {
                uye.Abone = EAbone.Abone;
            }
            return uye;
        }
        public static void UyeKayit(Uye uye)
        {
            SqlCommand kayit = new SqlCommand("Insert into Uye Values(@Ad,@Soyad,@Mail,@Sifre,@Telefon,@Onay,@Abone,@OnayKodu)", Tools.Baglanti());
            kayit.Parameters.AddWithValue("@Ad", uye.Ad);
            kayit.Parameters.AddWithValue("@Soyad", uye.Soyad);
            kayit.Parameters.AddWithValue("@Mail", uye.Mail);
            kayit.Parameters.AddWithValue("@Sifre", uye.Sifre);
            kayit.Parameters.AddWithValue("@Telefon", uye.Telefon);
            kayit.Parameters.AddWithValue("@Onay", uye.UyelikOnay);
            kayit.Parameters.AddWithValue("@Abone", uye.Abone);
            kayit.Parameters.AddWithValue("@OnayKodu", uye.OnayKodu);
            Tools.ExecuteNonQuery(kayit);
        }
        public static bool UyeDogrula(string Mail, string Sifre,string OnayKodu)
        {
            bool drm = false;
            SqlCommand guncelle = new SqlCommand("Update Uye set Onay=1 where Mail=@Mail and Sifre=@Sifre and OnayKodu=@OnayKodu",Tools.Baglanti());
            guncelle.Parameters.AddWithValue("@Mail", Mail);
            guncelle.Parameters.AddWithValue("@Sifre", Sifre);
            guncelle.Parameters.AddWithValue("@OnayKodu", OnayKodu);
            drm = Tools.ExecuteNonQuery(guncelle);
            return drm;
        }
    }
}

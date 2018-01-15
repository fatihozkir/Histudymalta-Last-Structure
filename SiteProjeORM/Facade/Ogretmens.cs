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
    public static class Ogretmens
    {
        public static void OgretmenEkle(Ogretmen ogretmen)
        {
            SqlCommand ekle = new SqlCommand("Insert into Ogretmen(Adi,Soyadi,ResimUrl,Mail,Telefon,SkypeUrl) values(@Adi,@Soyadi,@ResimUrl,@Mail,@Telefon,@SkypeUrl)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@Adi", ogretmen.Ad);
            ekle.Parameters.AddWithValue("@Soyadi", ogretmen.Soyad);
            ekle.Parameters.AddWithValue("@ResimUrl", ogretmen.ResimUrl);
            ekle.Parameters.AddWithValue("@Mail", ogretmen.Mail);
            ekle.Parameters.AddWithValue("@Telefon", ogretmen.Telefon);
            ekle.Parameters.AddWithValue("@SkypeUrl", ogretmen.SkypeURL);
            Tools.ExecuteNonQuery(ekle);

        }
        public static void OgretmenSil(int OgretmenId)
        {
            SqlCommand sil = new SqlCommand("Delete from Ogretmen where OgretmenId=@OgretmenId", Tools.Baglanti());
            sil.Parameters.AddWithValue("@OgretmenId", OgretmenId);
            Tools.ExecuteNonQuery(sil);
        }
        public static void OgretmenGuncelle(Ogretmen ogretmen)
        {
            SqlCommand guncelle = new SqlCommand("Update Ogretmen set Adi=@Adi,Soyadi=@Soyadi,Telefon=@Telefon,ResimUrl=@ResimUrl,Mail=@Mail,SkypeUrl=@SkypeUrl where OgretmenId=@OgretmenId", Tools.Baglanti());
            guncelle.Parameters.AddWithValue("@Adi", ogretmen.Ad);
            guncelle.Parameters.AddWithValue("@Soyadi", ogretmen.Soyad);
            guncelle.Parameters.AddWithValue("@ResimUrl", ogretmen.ResimUrl);
            guncelle.Parameters.AddWithValue("@Mail", ogretmen.Mail);
            guncelle.Parameters.AddWithValue("@Telefon", ogretmen.Telefon);
            guncelle.Parameters.AddWithValue("@SkypeUrl", ogretmen.SkypeURL);
            guncelle.Parameters.AddWithValue("@OgretmenId", ogretmen.OgretmenId);
            Tools.ExecuteNonQuery(guncelle);

        }
        public static Ogretmen OgretmenBilgiGetir(int OgretmenId)
        {
            Ogretmen ogrt = new Ogretmen();
            SqlDataAdapter dap = new SqlDataAdapter("Select Adi,Soyadi,ResimUrl,Mail,Telefon,SkypeUrl,Facebook,Twitter,Instagram,Bilgi from Ogretmen Where OgretmenId=@OgretmenId ", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@OgretmenId",OgretmenId);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ogrt.Ad = dt.Rows[i]["Adi"].ToString();
                ogrt.Soyad= dt.Rows[i]["Soyadi"].ToString();
                ogrt.ResimUrl = dt.Rows[i]["ResimUrl"].ToString();
                ogrt.Mail = dt.Rows[i]["Mail"].ToString();
                ogrt.Telefon = long.Parse(dt.Rows[i]["Telefon"].ToString());
                ogrt.SkypeURL = dt.Rows[i]["SkypeUrl"].ToString();
                ogrt.Bilgi = dt.Rows[i]["Bilgi"].ToString();
                ogrt.Facebook = dt.Rows[i]["Facebook"].ToString();
                ogrt.Twitter = dt.Rows[i]["Twitter"].ToString();
                ogrt.Instagram = dt.Rows[i]["Instagram"].ToString();
            }
            return ogrt;
        }
        public static int SonOgretmenId()
        {
            SqlDataAdapter getir = new SqlDataAdapter("Select OgretmenId from Ogretmen order by OgretmenId desc", Tools.Baglanti());
            DataSet ds = new DataSet();
            getir.Fill(ds);
            return int.Parse(ds.Tables[0].Rows[0]["OgretmenId"].ToString());
        }
       
        public static DataTable OgretmenListele()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select Adi+' '+Soyadi as AdSoyad, Bilgi, ResimUrl,OgretmenId from Ogretmen", Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            return Dt;
        }

        public static DataTable OgretmenAltHizmetListele(int AltHizmet)
        {
            SqlDataAdapter getir = new SqlDataAdapter("Select o.Adi+' '+o.Soyadi as AdSoyad,o.OgretmenId from OgretmenAltHizmet oah inner join Ogretmen o on o.OgretmenId=oah.OgretmenId where oah.AltHizmetId=@AltHizmet", Tools.Baglanti());
            getir.SelectCommand.Parameters.AddWithValue("@AltHizmet", AltHizmet);
            DataTable Dt = new DataTable();
            getir.Fill(Dt);
            return Dt;
        }
    }
}

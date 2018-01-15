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
    public static class OgretmenAltHizmets
    {
        public static void OgretmenAltHizmetEkle(OgretmenAltHizmet altHizmet)
        {
            SqlCommand ekle = new SqlCommand("Insert into OgretmenAltHizmet values(@OgretmenId,@AltHizmetId)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@OgretmenId", altHizmet.OgretmenId);
            ekle.Parameters.AddWithValue("@AltHizmetId", altHizmet.AltHizmetId);
            Tools.ExecuteNonQuery(ekle);
        }
        
        public static void OgretmenAltHizmetSil(int OgretmenAltHizmetId)
        {
            SqlCommand sil = new SqlCommand("Delete from OgretmenAltHizmet where OgretmenAltHizmetId=@OgretmenAltHizmetId", Tools.Baglanti());
            sil.Parameters.AddWithValue("@OgretmenAltHizmetId", OgretmenAltHizmetId);
            Tools.ExecuteNonQuery(sil);
        }
        public static DataTable OgretmenAltHizmetGetir(int OgretmenId)
        {
            OgretmenAltHizmet ogretmenAltHizmet = new OgretmenAltHizmet();
            SqlDataAdapter dap = new SqlDataAdapter("SELECT Ogretmen.Adi+' '+Ogretmen.Soyadi as OgretmenBilgi,AltHizmetler.Baslik, OgretmenAltHizmet.OgretmenAltHizmetId FROM AltHizmetler INNER JOIN OgretmenAltHizmet ON AltHizmetler.AltHizmetId = OgretmenAltHizmet.AltHizmetId inner join Ogretmen on OgretmenAltHizmet.OgretmenId=Ogretmen.OgretmenId WHERE OgretmenAltHizmet.OgretmenId = @OgretmenId", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@OgretmenId", OgretmenId);
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            return Dt;  
        }
        public static DataTable OgretmenAnaDersleri(int OgretmenId)
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select h.Baslik from OgretmenAltHizmet oah inner join AltHizmetler ah on oah.AltHizmetId=ah.AltHizmetId inner join Hizmetler h on ah.HizmetId=h.HizmetId where oah.OgretmenId=@OgretmenId group by h.Baslik", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@OgretmenId", OgretmenId);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            return dt;
        }
        public static DataTable OgretmenDersListele(int OgretmenId)
        {
            SqlDataAdapter getir = new SqlDataAdapter("SELECT AltHizmetler.AltHizmetId,AltHizmetler.Baslik,AltHizmetler.Fiyat FROM AltHizmetler INNER JOIN OgretmenAltHizmet ON AltHizmetler.AltHizmetId = OgretmenAltHizmet.AltHizmetId inner join Ogretmen on OgretmenAltHizmet.OgretmenId=Ogretmen.OgretmenId WHERE OgretmenAltHizmet.OgretmenId = @OgretmenId", Tools.Baglanti());
            getir.SelectCommand.Parameters.AddWithValue("@OgretmenId", OgretmenId);
            DataTable Dt = new DataTable();
            getir.Fill(Dt);
            return Dt;
        }
        public static int OgretmeninVerdigiDersSayisi(int OgretmenId)
        {
            SqlDataAdapter dersSayisi = new SqlDataAdapter("Select Count(OgretmenId) as DersSayisi from OgretmenAltHizmet group by OgretmenId having OgretmenId=@OgretmenId", Tools.Baglanti());
            dersSayisi.SelectCommand.Parameters.AddWithValue("@OgretmenId", OgretmenId);
            DataSet ds = new DataSet();
            dersSayisi.Fill(ds);
            try
            {
                return int.Parse(ds.Tables[0].Rows[0]["DersSayisi"].ToString());
            }
            catch (Exception)
            {

                return 0;
            }
            
            
        }
    }
}

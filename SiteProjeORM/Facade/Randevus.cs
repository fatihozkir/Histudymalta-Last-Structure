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
    public static class Randevus
    {
        public static DataTable UyeOdemeYapilanRandevulariGetir(int UyeId)
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ru.RandevuUyeId,ah.Baslik,Day(r.RandevuTarihi) as Gun,Month(r.RandevuTarihi) as Ay,Year(r.RandevuTarihi) as Yil,ru.Odeme,ah.Fiyat from Uye u inner join RandevuUye ru on u.UyeId=ru.UyeId  inner join Randevu r on r.RandevuId=ru.RandevuId inner join AltHizmetler ah on r.AltHizmetId=ah.AltHizmetId where u.UyeId=@UyeId and ru.Odeme=1 order by ru.RandevuUyeId desc", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@UyeId", UyeId);
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            return Dt;

        }
        public static DataTable UyeOdemeBekleyenRandevulariGetir(int UyeId)
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ru.RandevuUyeId,ah.Baslik,Day(r.RandevuTarihi) as Gun,Month(r.RandevuTarihi) as Ay,Year(r.RandevuTarihi) as Yil,ru.Odeme,ah.Fiyat from Uye u inner join RandevuUye ru on u.UyeId=ru.UyeId  inner join Randevu r on r.RandevuId=ru.RandevuId inner join AltHizmetler ah on r.AltHizmetId=ah.AltHizmetId where u.UyeId=@UyeId and ru.Odeme=0 order by ru.RandevuUyeId desc", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@UyeId", UyeId);
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            return Dt;

        }
        public static DataTable AltHizmeteGoreRandevulariListele(int AltHizmetId)
        {
            SqlDataAdapter getir = new SqlDataAdapter("SELECT BaslangicSaati, Year(RandevuTarihi) as Yil,Month(RandevuTarihi) as Ay,Day(RandevuTarihi) as Gun, BitisSaati, RandevuId FROM Randevu WHERE (AltHizmetId = @AltHizmetId) and Year(RandevuTarihi)=Year(Getdate()) and Month(RandevuTarihi)>=Month(GetDate()) and Day(RandevuTarihi)>=Day(GETDATE())", Tools.Baglanti());
            getir.SelectCommand.Parameters.AddWithValue("@AltHizmetId", AltHizmetId);
            DataTable dt = new DataTable();
            getir.Fill(dt);
            return dt;
        }
        public static void RandevuEkle(Randevu rndv)
        {
            SqlCommand ekle = new SqlCommand("Insert into Randevu Values(@AltHizmetId,@RandevuTarihi,@BaslangicSaati,@BitisSaati)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@AltHizmetId", rndv.AltHizmetId);
            ekle.Parameters.AddWithValue("@RandevuTarihi", rndv.RandevuTarihi);
            ekle.Parameters.AddWithValue("@BaslangicSaati", rndv.BaslangicSaati);
            ekle.Parameters.AddWithValue("@BitisSaati", rndv.BitisSaati);
            Tools.ExecuteNonQuery(ekle);

        }
    }
}

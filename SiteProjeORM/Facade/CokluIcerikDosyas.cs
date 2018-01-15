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
    public static class CokluIcerikDosyas
    {
        public static void DosyaEkle(CokluIcerikDosya CID)
        {
            SqlCommand ekle = new SqlCommand("Insert into CokluIcerikDosya(CokluIcerikId,DosyaUrl) Values(@CokluIcerikId,@DosyaId)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@CokluIcerikId", CID.CokluIcerikId);
            ekle.Parameters.AddWithValue("@DosyaId", CID.DosyaUrl);
            Tools.ExecuteNonQuery(ekle);
        }
        public static void DosyaSil(int DosyaId)
        {
            SqlCommand ekle = new SqlCommand("Delete from CokluIcerikDosya where DosyaId=@DosyaId", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@DosyaId", DosyaId);
            Tools.ExecuteNonQuery(ekle);
        }
        public static DataTable DosyalariListele(int CokluIcerikId)
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select DosyaId,DosyaUrl from CokluIcerikDosya where CokluIcerikId=@CokluIcerikId", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@CokluIcerikId", CokluIcerikId);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            return dt;

        }

    }
}

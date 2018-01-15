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
    public static class Mesajs
    {
        public static Mesaj MesajGetir(int MesajId)
        {
            Mesaj msg = new Mesaj();
            SqlDataAdapter dap = new SqlDataAdapter("Select * from Mesaj where MesajId=@MesajId",Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@MesajId", MesajId);
            DataSet ds = new DataSet();
            dap.Fill(ds);
            msg.Ad = ds.Tables[0].Rows[0]["Ad"].ToString();
            msg.Soyad= ds.Tables[0].Rows[0]["Soyad"].ToString();
            msg.GonderilenMesaj= ds.Tables[0].Rows[0]["Mesaj"].ToString();
            msg.Mail= ds.Tables[0].Rows[0]["Mail"].ToString();
            msg.MesajTarihi= Convert.ToDateTime(ds.Tables[0].Rows[0]["MesajTarihi"].ToString());
            msg.IpAdres= ds.Tables[0].Rows[0]["IpAdres"].ToString();
            return msg;

        }
        public static void MesajSil(int mesajId)
        {
            SqlCommand sil = new SqlCommand("Delete from Mesaj where MesajId=@MesajId",Tools.Baglanti());
            sil.Parameters.AddWithValue("@MesajId", mesajId);
            Tools.ExecuteNonQuery(sil);
        }
        public static void MesajGonder(Mesaj mesaj)
        {
            SqlCommand gonder = new SqlCommand("Insert into Mesaj([Ad],[Soyad],[Mail],[Mesaj],[MesajTarihi],[IpAdres],[Okundu]) Values(@Ad,@Soyad,@Mail,@Mesaj,@MesajTarihi,@IpAdres,@Okundu)", Tools.Baglanti());
            gonder.Parameters.AddWithValue("@Ad", mesaj.Ad);
            gonder.Parameters.AddWithValue("@Soyad", mesaj.Soyad);
            gonder.Parameters.AddWithValue("@Mail", mesaj.Mail);
            gonder.Parameters.AddWithValue("@Mesaj", mesaj.GonderilenMesaj);
            gonder.Parameters.AddWithValue("@MesajTarihi", mesaj.MesajTarihi);
            gonder.Parameters.AddWithValue("@IpAdres", mesaj.IpAdres);
            gonder.Parameters.AddWithValue("@Okundu", mesaj.MesajDurum);
            Tools.ExecuteNonQuery(gonder);
        }
    }
}

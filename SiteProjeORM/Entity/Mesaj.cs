using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class Mesaj
    {
        public int MesajId { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Mail { get; set; }
        public string GonderilenMesaj { get; set; }
        public DateTime MesajTarihi { get; set; }
        public string IpAdres { get; set; }
        public eOkundu MesajDurum { get; set; }
        public Mesaj()
        {
            MesajTarihi = DateTime.Now;
            IpAdres = Tools.IpAdresiAl();
            MesajDurum = eOkundu.Okunmadi;
        }
        
    }
    public enum eOkundu
    {
        Okunmadi,
        Okundu
    }
}

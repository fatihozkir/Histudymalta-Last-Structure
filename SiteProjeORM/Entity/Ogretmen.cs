using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class Ogretmen
    {
        public int OgretmenId { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string ResimUrl { get; set; }
        public string Mail { get; set; }
        public long Telefon { get; set; }
        public string SkypeURL { get; set; }
        public string Facebook { get; set; }
        public string Twitter { get; set; }
        public string Instagram { get; set; }
        public string Bilgi { get; set; }
        public Ogretmen()
        {
            ResimUrl = "ogretmen.jpg";
            Telefon = 0;
        }
    }
}

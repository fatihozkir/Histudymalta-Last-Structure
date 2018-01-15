using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class AltHizmet
    {
        public int AltHizmetId { get; set; }
        public int HizmetId { get; set; }
        public string Baslik { get; set; }
        public decimal Fiyat { get; set; }
        public string Icerik { get; set; }
       

    }
}

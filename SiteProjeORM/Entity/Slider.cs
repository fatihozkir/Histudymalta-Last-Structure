using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class SliderYazi
    {
        public int SliderYaziId { get; set; }
        public string Icerik { get; set; }
        public bool BuyukBaslik { get; set; }
        public bool BuyukAltBaslik { get; set; }
        public bool DegisenYazi { get; set; }
        public SliderYazi()
        {
            BuyukBaslik = false;
            BuyukAltBaslik = false;
            DegisenYazi = false;
        }
    }
    public class SliderResim
    {
        public int SliderResimId { get; set; }
        public string ResimUrl { get; set; }
    }
    
}

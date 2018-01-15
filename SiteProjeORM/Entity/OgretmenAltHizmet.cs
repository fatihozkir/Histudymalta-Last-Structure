using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class OgretmenAltHizmet
    {
        public int OgretmenAltHizmetId { get; set; }
        public int AltHizmetId { get; set; }
        public int OgretmenId { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Trains
    {
        string trainId;
        string departure;
        string arrvial;
        string time;
        DateTime date;
        int firstClass;
        int secondClass;
        int businessClass;
        int noneSeat;
        int firstClassPrice;
        int secondClassPrice;
        int businessClassPrice;
        int noneSeatPrice;

        public string TrainId { get => trainId; set => trainId = value; }
        public string Departure { get => departure; set => departure = value; }
        public string Arrvial { get => arrvial; set => arrvial = value; }
        public string Time { get => time; set => time = value; }
        public DateTime Date { get => date; set => date = value; }
        public int FirstClass { get => firstClass; set => firstClass = value; }
        public int SecondClass { get => secondClass; set => secondClass = value; }
        public int BusinessClass { get => businessClass; set => businessClass = value; }
        public int NoneSeat { get => noneSeat; set => noneSeat = value; }
        public int FirstClassPrice { get => firstClassPrice; set => firstClassPrice = value; }
        public int SecondClassPrice { get => secondClassPrice; set => secondClassPrice = value; }
        public int BusinessClassPrice { get => businessClassPrice; set => businessClassPrice = value; }
        public int NoneSeatPrice { get => noneSeatPrice; set => noneSeatPrice = value; }
    }
}

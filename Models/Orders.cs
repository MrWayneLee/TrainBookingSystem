using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Orders
    {
        string username;
        string trainId;
        string seats;
        string departure;
        string arrvial;
        DateTime date;
        string time;
        string status;

        public string Username { get => username; set => username = value; }
        public string TrainId { get => trainId; set => trainId = value; }
        public string Seats { get => seats; set => seats = value; }
        public string Departure { get => departure; set => departure = value; }
        public string Arrvial { get => arrvial; set => arrvial = value; }
        public DateTime Date { get => date; set => date = value; }
        public string Time { get => time; set => time = value; }
        public string Status { get => status; set => status = value; }
    }
}

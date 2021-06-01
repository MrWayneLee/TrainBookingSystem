using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Users
    {
        string username;
        string password;
        string name;
        string id;
        int balance;
        string question;
        string answer;
        int authority;

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string Name { get => name; set => name = value; }
        public string Id { get => id; set => id = value; }
        public int Balance { get => balance; set => balance = value; }
        public string Question { get => question; set => question = value; }
        public string Answer { get => answer; set => answer = value; }
        public int Authority { get => authority; set => authority = value; }
    }
}

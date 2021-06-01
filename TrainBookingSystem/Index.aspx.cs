using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;

namespace TrainBookingSystem
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                username.Text = Session["username"].ToString();
                TrainDataBind();
                initUser();
            }
        }
        private void TrainDataBind()
        {
            PagedDataSource pdsTrains = new PagedDataSource();
            pdsTrains.DataSource = TrainManager.GetAllTrains(DateTime.Now.ToShortDateString());
            TrainList.DataSource = pdsTrains;
            TrainList.DataBind();
        }
        private void initUser()
        {
            Users user = UserManager.GetUserInfo(Session["username"].ToString());
            balance.Text = user.Balance.ToString();
        }
        public string GetCut(string s)
        {
            return s.Substring(0, 10);
        }
        protected void Purchase_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            //Session["username"] = Session["username"].ToString();
            string url = "./Order.aspx?TrainId=" + btn.Attributes["TrainId"].ToString();
            Response.Redirect(url);
        }
    }
}
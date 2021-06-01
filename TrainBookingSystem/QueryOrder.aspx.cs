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
    public partial class QueryOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                username.Text = Session["username"].ToString();
                initUser();
                UserOrderDataBind();
            }
        }
        private void UserOrderDataBind()
        {
            PagedDataSource pdsUserOrder = new PagedDataSource();
            pdsUserOrder.DataSource = OrderManager.GetOrderByUsername(Session["username"].ToString());
            UserOrderList.DataSource = pdsUserOrder;
            UserOrderList.DataBind();
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
        protected void Refund_DataBinding(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            //string status = btn.Attributes["state"].ToString().Trim();
            string date = btn.Attributes["date"].ToString();
            int i = DateTime.Compare(DateTime.Now, DateTime.Parse(btn.Attributes["date"].ToString().Trim()));
            if (i > 0)
            {
                OrderManager.StatusUpdate(Session["username"].ToString(), btn.Attributes["trainId"].ToString().Trim(), "已过期");
            }
        }
        protected void Refund_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string trainId = btn.Attributes["TrainId"].ToString().Trim();
            //Session["RefundUsername"] = Session["username"].ToString();
            Session["RefundTrainId"] = trainId;
            Response.Redirect("./Refund.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;


namespace TrainBookingSystem.Admin
{
    public partial class Admin_ManageOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserOrderDataBind();
            }
        }
        private void UserOrderDataBind()
        {
            PagedDataSource pdsUserOrder = new PagedDataSource();
            pdsUserOrder.DataSource = OrderManager.GetAllOrders();
            UserOrderList.DataSource = pdsUserOrder;
            UserOrderList.DataBind();
        }
        public string GetCut(string s)
        {
            return s.Substring(0, 10);
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string u = btn.Attributes["Username"].ToString().Trim();
            string id_ = btn.Attributes["trainId"].ToString().Trim();
            DateTime d = DateTime.Parse(btn.Attributes["date"].ToString().Trim());
            OrderManager.RemoveOrder(u, id_, d);
            UserOrderDataBind();
        }
    }
}
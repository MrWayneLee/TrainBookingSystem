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
    public partial class Admin_ManageTrain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TrainDataBind();
            }
        }
        private void TrainDataBind()
        {
            PagedDataSource pdsTrains = new PagedDataSource();
            pdsTrains.DataSource = TrainManager.GetAllTrains(DateTime.Now.ToShortDateString());
            TrainList.DataSource = pdsTrains;
            TrainList.DataBind();
        }
        public string GetCut(string s)
        {
            return s.Substring(0, 10);
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            Session["trainIdsEdit"] = btn.Attributes["key"].ToString();
            Response.Redirect("Admin-ManageTrain-EditTrain.aspx");
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string trainId = btn.Attributes["key"].ToString();
            TrainManager.RemoveTrain(trainId);
            TrainDataBind();
        }
    }
}
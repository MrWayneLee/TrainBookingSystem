using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace TrainBookingSystem.Admin
{
    public partial class Admin_ManageTrain_AddTrain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            AddTrain();
        }
        public void AddTrain()
        {
            string d = departure.Text.Trim();
            string a = arrvial.Text.Trim();
            string id = Id.Text.Trim();
            DateTime d_ = DateTime.Parse(date.Text.Trim());
            string t = time.Text.Trim();
            int f = Convert.ToInt32(firstSeat.Text.Trim());
            int f_ = Convert.ToInt32(firstSeatPrice.Text.Trim());
            int s = Convert.ToInt32(secondSeat.Text.Trim());
            int s_ = Convert.ToInt32(secondSeatPrice.Text.Trim());
            int b = Convert.ToInt32(businessSeat.Text.ToLower());
            int b_ = Convert.ToInt32(businessSeatPrice.Text.Trim());
            int n = Convert.ToInt32(noneSeat.Text.Trim());
            int n_ = Convert.ToInt32(noneSeatPrice.Text.Trim());
            int result = TrainManager.AddTrain(d,a,t,d_,f,f_,b,b_,s,s_,n,n_,id);
            if (result > 0)
            {
                departure.Text = "";
                arrvial.Text = "";
                date.Text = "";
                time.Text = "";
                Id.Text = "";
                firstSeat.Text = "";
                firstSeatPrice.Text = "";
                secondSeat.Text = "";
                secondSeatPrice.Text = "";
                businessSeat.Text = "";
                businessSeatPrice.Text = "";
                noneSeat.Text = "";
                noneSeatPrice.Text = "";
                info.Text = "已添加";
            }
        }
    }
}
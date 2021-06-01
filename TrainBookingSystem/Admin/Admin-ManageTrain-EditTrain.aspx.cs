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
    public partial class Admin_ManageTrain_EditTrain : System.Web.UI.Page
    {
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (i == 0)
                {
                    i = 1;
                    initTrain();
                }
            }
        }
        private void initTrain()
        {
            Trains train = TrainManager.GetTrainById(Session["trainIdsEdit"].ToString());
            departure.Text = train.Departure.Trim();
            arrvial.Text = train.Arrvial.Trim();
            Id.Text = train.TrainId.Trim();
            date.Text = train.Date.ToString().Substring(0, 10);
            time.Text = train.Time.Trim();
            businessSeat.Text = train.BusinessClass.ToString().Trim();
            firstSeat.Text = train.FirstClass.ToString().Trim();
            secondSeat.Text = train.SecondClass.ToString().Trim();
            noneSeat.Text = train.NoneSeat.ToString().Trim();
            businessSeatPrice.Text = train.BusinessClassPrice.ToString().Trim();
            firstSeatPrice.Text = train.FirstClassPrice.ToString().Trim();
            secondSeatPrice.Text = train.SecondClassPrice.ToString().Trim();
            noneSeatPrice.Text = train.NoneSeatPrice.ToString().Trim();
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Session["trainIdsEdit"] = Id.Text.Trim();
            int result = TrainManager.ModifyTrain(departure.Text.Trim(), arrvial.Text.Trim(), time.Text.Trim(), DateTime.Parse(date.Text.Trim()), Convert.ToInt32(firstSeat.Text.Trim()), Convert.ToInt32(firstSeatPrice.Text.Trim()), Convert.ToInt32(businessSeat.Text.Trim()), Convert.ToInt32(businessSeatPrice.Text.Trim()), Convert.ToInt32(secondSeat.Text.Trim()), Convert.ToInt32(secondSeatPrice.Text.Trim()), Convert.ToInt32(noneSeat.Text.Trim()), Convert.ToInt32(noneSeatPrice.Text.Trim()), Session["trainIdsEdit"].ToString());
            if (result > 0)
            {
                initTrain();
            }
        }
    }
}
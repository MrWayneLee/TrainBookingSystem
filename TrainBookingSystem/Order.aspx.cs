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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                username.Text = Session["username"].ToString();
                initUser();
                initTrain();
            }
        }
        private void initUser()
        {
            Users user = UserManager.GetUserInfo(Session["username"].ToString());
            balance.Text = user.Balance.ToString();
        }
        private void initTrain()
        {
            Trains train = TrainManager.GetTrainById(Request.QueryString["TrainId"]);
            Departure.Text = train.Departure;
            Arrvial.Text = train.Arrvial;
            id.Text = train.TrainId;
            date.Text = train.Date.ToString().Substring(0,10);
            time.Text = train.Time;
            business.Text = train.BusinessClass.ToString();
            first.Text = train.FirstClass.ToString();
            second.Text = train.SecondClass.ToString();
            none.Text = train.NoneSeat.ToString();
            businessPrice.Text = train.BusinessClassPrice.ToString();
            firstPrice.Text = train.FirstClassPrice.ToString();
            secondPrice.Text = train.SecondClassPrice.ToString();
            nonePrice.Text = train.NoneSeatPrice.ToString();
        }
        protected void verify_Click(object sender, EventArgs e)
        {
            string p = password.Text.Trim();
            if (UserManager.IsPasswordCorrect(Session["username"].ToString(), p))
            {
                Verify();
            }
            else
            {
                password.Text = "";
                info.Text = "密码错误，请重试。";
            }
        }
        public void Verify()
        {
            Trains train = TrainManager.GetTrainById(Request.QueryString["TrainId"]);
            if (OrderManager.IsOrderExist(Session["username"].ToString(), train.TrainId.ToString().Trim(), train.Date))
            {
                password.Text = "";
                info.Text = "您已购买过此次列车。";
            }
            else
            {
                Purchase();
            }
        }
        public void Purchase()
        {
            Trains train = TrainManager.GetTrainById(Request.QueryString["TrainId"]);
            int price = 0;
            string seat;
            switch (Convert.ToInt32(seatClass.SelectedValue))
            {
                case 1:
                    price = 180;
                    break;
                case 2:
                    price = 110;
                    break;
                case 3:
                    price = 70;
                    break;
                case 4:
                    price = 70;
                    break;
                default:
                    return;
            }
            switch (seatClass.SelectedItem.ToString().Trim())
            {
                case "商务座":
                    seat = "BusinessClass";
                    break;
                case "一等座":
                    seat = "FirstClass";
                    break;
                case "二等座":
                    seat = "SecondClass";
                    break;
                case "无座":
                    seat = "NoneSeat";
                    break;
                default:
                    return;
            }
            Users user = UserManager.GetUserInfo(Session["username"].ToString());
            int total = user.Balance - Convert.ToInt32(price);
            int remain = Convert.ToInt32(TrainManager.GetSeatRemainByTrainIdAndDate(Request.QueryString["TrainId"], train.Date, seat)) - 1;

            if(total <= 0)
            {
                info.Text = "余额不足，点击<a href='./DepositAccount.aspx'>此处</a>进行充值";
            }
            else
            {
                if(remain < 0)
                {
                    info.Text = "没有更多席位。";
                }
                else
                {
                    TrainManager.PurchaseUpdate(Request.QueryString["TrainId"], train.Date, seat, remain.ToString());
                    UserManager.BanlanceUpdate(Session["username"].ToString(), total);
                    OrderManager.AddOrder(Session["username"].ToString(), train.TrainId, seatClass.SelectedItem.ToString(), train.Departure, train.Arrvial, train.Date, train.Time, "预订");
                    Response.Redirect("./Index.aspx");
                }
            }
        }
    }
}
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
    public partial class DepositAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                username.Text = Session["username"].ToString();
                initUser();
            }
        }
        private void initUser()
        {
            Users user = UserManager.GetUserInfo(Session["username"].ToString());
            balance.Text = user.Balance.ToString();
        }
        protected void verify_Click(object sender, EventArgs e)
        {
            string p = password.Text.Trim();
            if (UserManager.IsPasswordCorrect(Session["username"].ToString(), p))
            {
                Users user = UserManager.GetUserInfo(Session["username"].ToString());
                int total = user.Balance + Convert.ToInt32(amount.Text.Trim());

                if (UserManager.DepositAccount(Session["username"].ToString(), total) > 0)
                {
                    amount.Text = "";
                    password.Text = "";
                    info.Text = "充值成功。";
                }
                else
                {
                    amount.Text = "";
                    password.Text = "";
                    info.Text = "充值失败。";
                }
            }
            else
            {
                password.Text = "";
                info.Text = "密码错误，请重试。";
            }
        }
    }
}
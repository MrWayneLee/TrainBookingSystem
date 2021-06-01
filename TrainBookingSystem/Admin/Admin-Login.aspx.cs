using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace TrainBookingSystem.Admin
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string u = username.Text.Trim();
            string p = password.Text.Trim();

            if (UserManager.IsAdmin(u))
            {
                if (UserManager.IsPasswordCorrect(u, p))
                {
                    Session["Adminusername"] = u;
                    Response.Redirect("./Admin-Index.aspx");
                }
                else
                {
                    info.Text = "用户名密码错误";
                }
            }
            else
            {
                username.Text = "";
                password.Text = "";
                info.Text = "无权限";
            }
        }
    }
}
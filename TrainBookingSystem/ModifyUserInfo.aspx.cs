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
    public partial class ModifyUserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                username.Text = Session["username"].ToString();
                initUser();
                this.hide.Visible = false;
            }
        }
        private void initUser()
        {
            Users user = UserManager.GetUserInfo(Session["username"].ToString());
            username_.Text = Session["username"].ToString();
            question.Text = user.Question.ToString();
            name.Text = user.Name.ToString();
            id.Text = user.Id.ToString();
            balance.Text = user.Balance.ToString();
        }
        protected void verify_Click(object sender, EventArgs e)
        {
            string user = username_.Text.Trim();
            string ans = answer.Text.Trim();

            if(UserManager.IsAnswerCorrect(user, ans))
            {
                this.hide.Visible = true;
                info.Text = "请在下方键入新密码";
            }
            else
            {
                this.hide.Visible = false;
                info.Text = "验证失败！请重试";
            }
        }
        protected void ModifyPassword_Click(object sender, EventArgs e)
        {
            string user = username_.Text.Trim();
            string pwd = password.Text.Trim();

            if(UserManager.ModifyPassword(user,pwd) > 0)
            {
                answer.Text = "";
                password.Text = "";
                info.Text = "修改成功";
                this.hide.Visible = false;
            }
            else
            {
                answer.Text = "";
                password.Text = "";
                info.Text = "失败！请检查拼写";
                this.hide.Visible = false;
            }
        }
    }
}
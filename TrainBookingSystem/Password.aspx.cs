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
    public partial class Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            qa.Visible = false;
            pw.Visible = false;
        }
        protected void Verify_Click(object sender, EventArgs e)
        {
            if (UserManager.IsUsernameExist(username.Text.Trim()))
            {
                info.Text = "请在下方验证答案";
                Users u = UserManager.GetUserInfo(username.Text.Trim());
                Question.Text = u.Question.ToString();
                qa.Visible = true;
                pw.Visible = false;
            }
            else
            {
                info.Text = "无此用户名的用户，<a href='./Register.aspx'>点击此处</a>前往注册";
                qa.Visible = false;
                pw.Visible = false;
            }
        }
        protected void VerifyAnswer_Click(object sender, EventArgs e)
        {
            if (UserManager.IsAnswerCorrect(username.Text.Trim(),Answer.Text.Trim()))
            {
                info.Text = "验证成功，请填写新密码";
                qa.Visible = true;
                pw.Visible = true;
            }
            else
            {
                info.Text = "验证失败，请重试";
                qa.Visible = true;
                pw.Visible = false;
            }
        }
        protected void ChangePassword_Click(object sender, EventArgs e)
        {
            if (UserManager.ModifyPassword(username.Text.Trim(), passwordCon.Text.Trim()) == 1)
            {
                info.Text = "密码更改成功，<a href='./Login.aspx'>点击此处</a>返回登录";
                username.Text = "";
                Question.Text = "";
                Answer.Text = "";
                password.Text = "";
                passwordCon.Text = "";
                qa.Visible = false;
                pw.Visible = false;
            }
            else
            {
                Response.Redirect("Login.aspx");    
            }
        }
    }
}
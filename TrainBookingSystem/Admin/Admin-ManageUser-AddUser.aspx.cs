using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace TrainBookingSystem.Admin
{
    public partial class Admin_ManageUser_AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            AddUserByAdmin();
        }
        public void AddUserByAdmin()
        {
            //所有控件的值
            string u = username.Text.Trim();//用户名
            string p = password.Text.Trim();//密码
            string n = name.Text.Trim();//姓名
            string i = id.Text.Trim();//身份证号
            string q = question.Text.Trim();//问题
            string a = answer.Text.Trim();//答案
            int b = Convert.ToInt32(balance.Text.Trim());//余额
            int a_ = Convert.ToInt32(authority.SelectedValue);//权限

            if (UserManager.IsUsernameExist(username.Text.Trim()))
            {
                int result = UserManager.AddUserByAdmin(u, p, n, i, q, a, b, a_);
                if (result > 0)
                {
                    username.Text = "";
                    password.Text = "";
                    name.Text = "";
                    id.Text = "";
                    question.Text = "";
                    answer.Text = "";
                    balance.Text = "";
                    info.Text = "已添加";
                }
            }
            else
            {
                info.Text = "用户名已存在";
            }
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xsxxglxt_web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string s_name = Login1.UserName;
            string s_pwd = Login1.Password;

            using (SqlConnection con = new SqlConnection(XSXXGLData.ConStr))
            {
                con.Open();
                var cmd = con.CreateCommand();
                cmd.CommandText = "select count(*) from Admin where name='" + s_name + "' and pwd='" + s_pwd + "'";
                object obj = cmd.ExecuteScalar();
                int count = int.Parse(obj.ToString());
                if (count <= 0)
                {
                    e.Authenticated = false;
                    Response.Write("<script>alert('用户名密码有误，登录失败')</script>");
                }
                else
                {
                    Session[XSXXGLData.管理员名称] = s_name;
                    e.Authenticated = true;
                    Response.Write("<script>alert('登录成功');window.location.href='Default.aspx';</script>");
                }
            }
        }
    }
}
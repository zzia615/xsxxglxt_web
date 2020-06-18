using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xsxxglxt_web
{
    public partial class Registe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string id = XSID.Text;

            if (id.Length != 8)
            {
                args.IsValid = false;
            }
            else
            {
                long l_name;
                if(long.TryParse(id,out l_name))
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string age = Age.Text;
            int i_age;
            if(int.TryParse(age,out i_age))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string id = XSID.Text;
                string name = Name.Text;
                string age = Age.Text;

                string sql = "insert into Info(ID,Name,Age)" +
                    " values('" + id + "','" + name + "'," + age + ")";
                using (SqlConnection con = new SqlConnection(XSXXGLData.ConStr))
                {
                    con.Open();
                    var cmd = con.CreateCommand();
                    cmd.CommandText = sql;
                    cmd.ExecuteNonQuery();
                }

                Response.Write("<script>alert('注册成功');window.location.href='ShowInfo.aspx';</script>");
            }
        }
    }
}
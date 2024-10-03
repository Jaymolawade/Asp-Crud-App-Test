using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudApp
{
    public partial class EmployeeDetailsPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-CP1RGR9K;Initial Catalog=AspDB;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadRecord();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            conn.Open();
            string que = ("Insert into EmployeeDetails " +
                "values('" + int.Parse(TxtId.Text) + "','" + TxtName.Text + "','" + TxtMail.Text + "','" + TxtDropDownList.SelectedValue + "','" + int.Parse(TxtSal.Text) + "')");

            SqlCommand cmd = new SqlCommand(que,conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted!!!');",true);
            LoadRecord();
        }
         void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from EmployeeDetails",conn);
            SqlDataAdapter d= new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            string que = ("Update EmployeeDetails set EMP_NAME = '"+TxtName.Text+"',EMP_EMAIL = '"+TxtMail.Text+"',EMP_STATE = '"+TxtDropDownList.SelectedValue+"',EMP_SAL = '"+int.Parse(TxtSal.Text) +"' Where EMPID ='"+int.Parse(TxtId.Text) +"'");

            SqlCommand cmd = new SqlCommand(que, conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated!!!');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn.Open();
            string que = ("Delete EmployeeDetails  Where EMPID ='" + int.Parse(TxtId.Text) + "'");

            SqlCommand cmd = new SqlCommand(que, conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted!!!');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from EmployeeDetails Where EMPID ='" + int.Parse(TxtId.Text) + "'", conn);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from EmployeeDetails Where EMPID ='" + int.Parse(TxtId.Text) + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TxtName.Text = dr.GetValue(1).ToString();
                TxtMail.Text = dr.GetValue(2).ToString();
                TxtDropDownList.SelectedValue = dr.GetValue(3).ToString();
                TxtSal.Text = dr.GetValue(4).ToString();
            }
        }
    }
}
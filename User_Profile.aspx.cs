using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
public partial class User_Profile : System.Web.UI.Page
{
    int count, count1;
    DataRow dr,dr2;
    DataSet ds;
    SqlDataAdapter da;
    SqlConnection scon;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sconn = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        var s = HttpContext.Current.Session["mobileno"];
        TextBox2.Text = s.ToString();
        TextBox3.Enabled = false;
        sconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + TextBox2.Text + "'", sconn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            var var2 = dr[1].ToString();
            Label2.Text = var2.ToString();

        }
        dr.Close();

        SqlCommand cmd1 = new SqlCommand("SELECT * from customer where mobile='" + TextBox2.Text + "'", sconn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {
            while (dr1.Read())
            {
                TextBox1.Text = dr1[0].ToString();
                TextBox4.Text = dr1[3].ToString();
                TextBox5.Text = dr1[4].ToString();

            }
            dr1.Close();

        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sconn1 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        sconn1.Open();

        SqlCommand cmd1 = new SqlCommand("select * from customer", sconn1);
        sconn1.Close();
        sconn1.Open();
        string sqlstr6 = "Update customer set address='"+TextBox4.Text+"' where cusid=" + int.Parse(TextBox1.Text) + "";

        SqlCommand cmd2 = new SqlCommand(sqlstr6, sconn1);
        cmd2.ExecuteNonQuery();
        sconn1.Close();
        MessageBox.Show("Your profile is updated");
        Response.Redirect("User_Home.aspx");
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}

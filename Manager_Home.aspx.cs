using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Manage_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sconn = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        var s = HttpContext.Current.Session["mobileno"];
        Label1.Text = s.ToString();
        sconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + Label1.Text + "'", sconn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            var var2 = dr[1].ToString(); ;
            Label2.Text = var2.ToString();

        }

        dr.Close();
    }
}

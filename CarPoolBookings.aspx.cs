using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;
using System.Configuration;
public partial class Bookings : System.Web.UI.Page
{
    private String strConnString = ConfigurationManager.ConnectionStrings["CabConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strQuery = "select * from carpoolcabs where Status='booked'";
        SqlCommand cmd = new SqlCommand(strQuery);
        //    GridView1.DataSource = null;

        GridView1.DataSourceID = null;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
public partial class User_carpoolingselect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
      
            string connstring = "Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True";
                SqlConnection sqlcon = new SqlConnection(connstring);
                string str = txtsearch.Text;
                SqlCommand sqlcmd = new SqlCommand("select * from carpoolin where source like '%" + str + "%'", sqlcon);
                SqlDataAdapter adp = new SqlDataAdapter(sqlcmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataSourceID = null;
                    GridView1.DataBind();
                   
                }
                else
                {
                    MessageBox.Show("Source is not available");
                    Response.Redirect("User_carpoolingselect.aspx");
                }
        }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string connstring1 = "Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True";
        SqlConnection sqlcon1 = new SqlConnection(connstring1);
        string str1 = txtcab.Text;
        SqlCommand sqlcmd1 = new SqlCommand("select * from carpoolin where cabname like '%" + str1 + "%'", sqlcon1);
        SqlDataAdapter adp1 = new SqlDataAdapter(sqlcmd1);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {

            GridView1.DataSource = ds1.Tables[0];
            GridView1.DataSourceID = null;
            GridView1.DataBind();

        }
        else
        {
            MessageBox.Show("Cab is not available");
            Response.Redirect("User_carpoolingselect.aspx");
        }
    }
}

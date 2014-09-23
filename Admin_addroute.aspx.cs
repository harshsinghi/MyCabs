using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;

public partial class Admin_addroute : System.Web.UI.Page
{

    int count, count1;
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        // Create and initiaze new SQL connection

        SqlConnection sconn = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        var s = HttpContext.Current.Session["mobileno"];
        Label6.Text = s.ToString();

        sconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + Label6.Text + "'", sconn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            var var2 = dr[1].ToString(); ;
            Label7.Text = var2.ToString();

        }

        dr.Close();

        count = 100;
        SqlConnection scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon.Open();
        DataSet ds = new DataSet();
        
        // Get the routes available
        
        string SQLCommand = "select * from route";
        SqlDataAdapter Adapter = new SqlDataAdapter(SQLCommand, scon);
        Adapter.Fill(ds, "route");
        Adapter.SelectCommand.Connection.Close();
        count1 = ds.Tables["route"].Rows.Count;
        count = count + count1;
        TextBox1.Text = Convert.ToString(count);
        TextBox1.Enabled = false;
        scon.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection sconn1 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        sconn1.Open();
        
        // Insert a new route

        SqlStr = "insert into route(rid,source,destination,nokms,priceperkm) Values (";
        SqlStr = SqlStr + "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
       
        SqlCommand cmd2 = new SqlCommand(SqlStr, sconn1);
        cmd2.ExecuteNonQuery();
        sconn1.Close();
        MessageBox.Show("New route added successfully with id : " + TextBox1.Text + "click ok to add new route !!!");

        Response.Redirect("Admin_addroute.aspx");


    }
}

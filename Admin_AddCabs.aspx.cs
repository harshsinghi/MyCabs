using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;
public partial class Add_Driver : System.Web.UI.Page
{
    int count, count1;
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {
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
        string SQLCommand = "select * from selfdrive";
        SqlDataAdapter Adapter = new SqlDataAdapter(SQLCommand, scon);
        Adapter.Fill(ds, "selfdrive");
        Adapter.SelectCommand.Connection.Close();
        count1 = ds.Tables["selfdrive"].Rows.Count;
        count = count + count1;
        TextBox1.Text = Convert.ToString(count);
        TextBox1.Enabled = false;
        scon.Close();
    }
  
    protected void BtnAddCab_Click(object sender, EventArgs e)
    {

        SqlConnection sconn1 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        sconn1.Open();


        SqlStr = "insert into cab(cid,cname,kmcharge,capacity,hrcharge) Values (";
        SqlStr = SqlStr + "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "')";
        //SqlStr = SqlStr + "," +bid.Text+ "','" + CustId.Text + "','" + Id.Text + "','" + TextBox1.Text + "','" + noofdays.Text + "','" + charge0.Text + "')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, sconn1);
        cmd2.ExecuteNonQuery();
        sconn1.Close();
        MessageBox.Show("New Cab added successfully with id : " + TextBox1.Text);

        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox6.Text = "";
        Response.Redirect("Admin_AddCabs.aspx");

        
    }
}

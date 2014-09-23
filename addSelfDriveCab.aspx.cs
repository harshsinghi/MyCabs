using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
public partial class Add_selfdrivecab : System.Web.UI.Page
{
    int count, count1;
    DataRow dr;
    DataSet ds;
    SqlDataAdapter da;
    SqlConnection scon;
    protected void Page_Load(object sender, EventArgs e)
    {
        // Create and initialize a new Sql Connection 
    
        SqlConnection sconn = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        var s = HttpContext.Current.Session["mobileno"];
        Label1.Text = s.ToString();

        sconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + Label1.Text + "'", sconn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            var var2 = dr[1].ToString(); ;
            Label12.Text = var2.ToString();

        }

        dr.Close();

        count = 100;
         scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon.Open();
        DataSet ds = new DataSet();
        string SQLCommand = "select * from Selfdrive_cab ";
        SqlDataAdapter Adapter = new SqlDataAdapter(SQLCommand, scon);
        Adapter.Fill(ds, "Selfdrive_cab");
        Adapter.SelectCommand.Connection.Close();
        count1 = ds.Tables["Selfdrive_cab"].Rows.Count;
        count = count + count1;
        cabid.Text = Convert.ToString(count);
        cabid.Enabled = false;
        scon.Close();
    }
    protected void BtnInsert_Click(object sender, EventArgs e)
    {
        string FileNameVar = "";
        if (FileUpload1.HasFile)
        {
            FileNameVar = FileUpload1.FileName.ToString();
            string toDir = Server.MapPath(".") + "/Images/" + FileNameVar;
            FileUpload1.SaveAs(toDir);
        }
        
        scon.Open();
        
        // insert new cab for self drive
        
        String SqlStr = "insert into Selfdrive_cab(Cabid,Cabname,Capacity,Perdaycharge,Status,Filecab) Values(";
        SqlStr = SqlStr + "'" + cabid.Text + "','" + cabname.Text + "','" + capacity.Text + "','"  + perdaycharge.Text +"','" +status.Text+ "','" +FileNameVar+ "')";
        //MessageBox.Show(SqlStr);
        SqlCommand cmd2 = new SqlCommand(SqlStr, scon);
        cmd2.ExecuteNonQuery();
        Label10.Text = "New record added";
        cabname.Text = "";
        capacity.Text = "";
        perdaycharge.Text = "";
        status.Text = "";
       
        scon.Close();
        Response.Redirect("Add_selfdrivecab.aspx");
        
       
    }
}

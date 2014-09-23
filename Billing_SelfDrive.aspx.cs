using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;
public partial class Billing_SelfDrive : System.Web.UI.Page
{
    int billno1, capacity, PerdayCharge, cabid;
    String cabname;
    String status, SqlStr;
    int count, count1;
    public Billing_SelfDrive()
    {
    }
    //public Billing_SelfDrive(int billno, int cabid, String cabname, int capacity, int PerdayCharge, String status)
    //{
    //    this.cabid = cabid;
    //    this.billno1 = billno;
    //    this.cabname = cabname;
    //    this.capacity = capacity;
    //    this.PerdayCharge = PerdayCharge;
    //    this.status = status;

    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        
        range1.MinimumValue = System.DateTime.Now.ToShortDateString();
        range1.MaximumValue = System.DateTime.Now.AddDays(3).ToShortDateString();
        range2.MinimumValue = System.DateTime.Now.ToShortDateString();
        range2.MaximumValue = System.DateTime.Now.AddDays(3).ToShortDateString();
            
        SqlConnection sconn = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        var s = HttpContext.Current.Session["mobileno"];
        Label3.Text = s.ToString();

        sconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + Label3.Text + "'", sconn);
        SqlCommand cmd1 = new SqlCommand("SELECT cusid from customer WHERE mobile='" + Label3.Text + "'", sconn);
        SqlDataReader dr = cmd.ExecuteReader();
      
        while (dr.Read())
        {
            var var2 = dr[1].ToString(); ;
            Label4.Text = var2.ToString();

        }

        dr.Close();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            var var3 = dr1[0].ToString();
            CustId.Text = var3.ToString();
        }
        dr1.Close();
        string strID = Request.QueryString["cabid"];
        string strcab = Request.QueryString["cabname"];
        string strsource = Request.QueryString["source"];
        string strdest = Request.QueryString["destination"];
        string strcharge = Request.QueryString["perdaycharge"];
        string strstatus = Request.QueryString["status"];
        Id.Text = strID;
        name.Text = strcab;
        //capa.Text = capacity;
        charge.Text = strcharge;
        txtsource.Text = strsource;
        txtdest.Text = strdest;

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
        bid.Text = Convert.ToString(count);
        bid.Enabled = false;
        scon.Close();
        //var reqid = Request.QueryString["Cabid"];
        //TextBox1.Text = reqid;
        //if (this.Page.PreviousPage != null)
        //{
        //    GridView GridView1 = (GridView)this.Page.PreviousPage.FindControl("GridView1");
        //    GridViewRow selectedRow = GridView1.SelectedRow;
        //    TextBox1.Text = selectedRow.Cells[0].Text;
        //    TextBox2.Text = selectedRow.Cells[1].Text;
        //    TextBox3.Text = selectedRow.Cells[2].Text;
        //    TextBox4.Text = selectedRow.Cells[3].Text;
        //    TextBox5.Text = selectedRow.Cells[4].Text;
        //}




    }
    protected void Id_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

    }
   
    protected void charge0_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void noofdays_TextChanged(object sender, EventArgs e)
    {
        int perday = Convert.ToInt32(charge.Text);
        int nodays = Convert.ToInt32(noofdays.Text);

        int total = perday * nodays;
        charge0.Text = Convert.ToString(total);

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        DateTime stdate = Convert.ToDateTime(TextBox1.Text);
        DateTime enddate = Convert.ToDateTime(TextBox2.Text);
        TimeSpan timeoff = stdate - enddate;


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime stdate = Convert.ToDateTime(TextBox1.Text);
        DateTime enddate = Convert.ToDateTime(TextBox2.Text);
        TimeSpan timeDiff = enddate - stdate;
        string ab = string.Format("{0}", timeDiff.Days);
        
        if (stdate == enddate)
        {
            charge0.Text = charge.Text;
            noofdays.Text = "same day";
        }
        else
        {
            int difff = Convert.ToInt32(ab);
            noofdays.Text = Convert.ToString(difff);

            int ch = Convert.ToInt32(charge.Text);

            int final = ch * difff;
            charge0.Text = Convert.ToString(final);
        }

        TextBox1.Text = Convert.ToString(TextBox1.Text);
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection sconn1 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        sconn1.Open();


        SqlStr = "insert into selfdrive(sid,Cusid,cid,dob,nod,amount) Values (";
        SqlStr = SqlStr + "'" + bid.Text + "','" + CustId.Text + "','" + Id.Text + "','" + TextBox1.Text + "','" + noofdays.Text + "','" + charge0.Text + "')";
        //SqlStr = SqlStr + "," +bid.Text+ "','" + CustId.Text + "','" + Id.Text + "','" + TextBox1.Text + "','" + noofdays.Text + "','" + charge0.Text + "')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, sconn1);
        cmd2.ExecuteNonQuery();
        sconn1.Close();



        MessageBox.Show("Your ticket is generated successfully, Your cab booking No is : " + bid.Text);

        Id.Enabled = false;
        CustId.Enabled = false;
        name.Enabled = false;
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        noofdays.Enabled = false;
        charge.Enabled = false;
        charge0.Enabled = false;
        txtdest.Enabled = false;
        txtsource.Enabled = false;
    }
}

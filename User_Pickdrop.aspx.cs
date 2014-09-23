using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
public partial class User_Pickdrop : System.Web.UI.Page
{
    int count, count1;
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {

        string time1 = DateTime.Now.ToString("HH:mm:ss tt");
        time.Text = time1;
        SqlConnection sconn = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        var s = HttpContext.Current.Session["mobileno"];
        Label3.Text = s.ToString();

        sconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + Label3.Text + "'", sconn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            var var2 = dr[1].ToString(); ;
            Label4.Text = var2.ToString();

        }

        dr.Close();

        count = 100;
        SqlConnection scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon.Open();
        DataSet ds = new DataSet();
        string SQLCommand = "select * from pickdrop ";
        SqlDataAdapter Adapter = new SqlDataAdapter(SQLCommand, scon);
        Adapter.Fill(ds, "pickdrop");
        Adapter.SelectCommand.Connection.Close();
        count1 = ds.Tables["pickdrop"].Rows.Count;
        count = count + count1;
        tid.Text = Convert.ToString(count);
        tid.Enabled = false;

        string rid = Request.QueryString["rid"];
        string strsource = Request.QueryString["source"];
        
        string strdest = Request.QueryString["destination"];
        string strnokms = Request.QueryString["nokms"];
        string strpriceperkm = Request.QueryString["priceperkm"];
        rid1.Text = rid;
        source.Text = strsource;
        //capa.Text = capacity;
        destination.Text = strdest;
        kms.Text = strnokms;
        pricekm.Text = strpriceperkm;

        int kms1 = Convert.ToInt32(kms.Text);
        int price = Convert.ToInt32(pricekm.Text);
        int total = kms1 * price;
        amount.Text = Convert.ToString(total);

        SqlConnection scon2 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon2.Open();
        SqlCommand cmd1 = new SqlCommand("select cusid from customer where mobile = '" + Label3.Text + "'", scon2);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            txtcustid.Text = dr1[0].ToString();
        }
        dr1.Close();

        scon2.Close();
    }
         
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        date.Text = string.Format("{0:dd-MMM-yyyy}", Calendar1.SelectedDate.Date);
        Calendar1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sconn1 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        sconn1.Open();

        //SqlCommand Cmd1 = new SqlCommand("INSERT INTO selfdrive(sid,Cusid,cid,dob,nod,amount)VALUES(@sid,@Cusid,@cid,@dob,@nod,@amount)", sconn1);


        //Cmd1.Parameters.Add("@sid", System.Data.SqlDbType.VarChar);
        //Cmd1.Parameters["@sid"].Value = bid.Text;
        //Cmd1.Parameters.Add("@column2", System.Data.SqlDbType.VarChar);
        //Cmd1.Parameters["@column2"].Value = rblBuildingType.SelectedItem.Value;
        SqlStr = "insert into pickdrop(tid,rid,cusid,source,destination,kms,date,time,amount) Values (";
        SqlStr = SqlStr + "'" + tid.Text + "','" + rid1.Text + "','" +txtcustid.Text+ "','" + source.Text + "','" + destination.Text + "','" + kms.Text + "','" + date.Text + "','" +time.Text+ "','" +amount.Text+ "')";
        //SqlStr = SqlStr + "," +bid.Text+ "','" + CustId.Text + "','" + Id.Text + "','" + TextBox1.Text + "','" + noofdays.Text + "','" + charge0.Text + "')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, sconn1);
        cmd2.ExecuteNonQuery();
        sconn1.Close();

        MessageBox.Show("Your ticket is generated successfully, Your ticket No is : " + tid.Text);
        tid.Enabled = false;
        rid1.Enabled = false;
        source.Enabled = false;
        txtcustid.Enabled = false;
        destination.Enabled = false;
        kms.Enabled = false;
        date.Enabled = false;
        time.Enabled = false;
        amount.Enabled = false;
        pricekm.Enabled = false;
    }
}

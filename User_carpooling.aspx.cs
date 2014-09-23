using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class User_CarPooling : System.Web.UI.Page
{
    int count,count1;
    String str1, str2, SqlStr3, SqlStr, SqlStr2;

    protected void Page_Load(object sender, EventArgs e)
    {



        range1.MinimumValue = System.DateTime.Now.ToShortDateString();
          
        range1.MaximumValue = System.DateTime.Now.AddDays(3).ToShortDateString();
          
        var s = HttpContext.Current.Session["mobileno"];
        Label14.Text = s.ToString();

        SqlConnection scon1 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon1.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + Label14.Text + "'", scon1);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            var var2 = dr[1].ToString(); ;
            Label15.Text = var2.ToString();

        }

        dr.Close();

        string cid = Request.QueryString["Cabid"];
        string strcabname = Request.QueryString["cabname"];

        string strperkmcharge = Request.QueryString["perkmcharge"];
        string strsource = Request.QueryString["source"];
        string strlandmark1 = Request.QueryString["landmark1"];
        string strlandmark2 = Request.QueryString["landmark2"];
        string strlandmark3 = Request.QueryString["landmark3"];
        string strdest = Request.QueryString["destination"];
        string strnokms = Request.QueryString["noofkms"];
        string strcapacity = Request.QueryString["Capacity"];
        string avail = Request.QueryString["available"];
        RadioButton1.Text = strlandmark1;
        RadioButton2.Text = strlandmark2;
        RadioButton3.Text = strlandmark3;
        txtcabid.Text = cid;
        txtsource.Text = strsource;
        txtdest.Text = strdest;
        txtperkmcharge.Text = strperkmcharge;
        txtnokms.Text = strnokms;
        txtcapacity.Text = strcapacity;
        txtavailable.Text = avail;

        int cap = Convert.ToInt32(txtcapacity.Text);
        int ava = Convert.ToInt32(txtavailable.Text);

        if (ava <= 0)
        {
            MessageBox.Show("Seats not available!!! Try a different cab...");
            Response.Redirect("User_carpoolingselect.aspx");
        }
        
        
        SqlConnection scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon.Open();
        SqlCommand cmd11 = new SqlCommand("select * from carpoolcabs where cid = '"+txtcabid.Text+"'", scon);
        //  cmd11.Parameters.Add(new SqlParameter("@Cabid", (DropDownList1.Text)));
        SqlDataReader dr11 = cmd11.ExecuteReader();
        if (dr11.HasRows)
        {
            while (dr11.Read())
            {
                string str22 = Convert.ToString(dr11[0]);
                TextBox9.Text = str22;

            }
            
        }
        else
        {
            scon.Close();
            count = 100;
            scon.Open();
            DataSet ds = new DataSet();
            string SQLCommand = "select * from carpoolcabs ";
            SqlDataAdapter Adapter = new SqlDataAdapter(SQLCommand, scon);
            Adapter.Fill(ds, "carpoolcabs");
            Adapter.SelectCommand.Connection.Close();
            count1 = ds.Tables["carpoolcabs"].Rows.Count;
            count = count + count1;
            TextBox9.Text = Convert.ToString(count);
            TextBox9.Enabled = false;
            scon.Close();
        }
       // MessageBox.Show("" + RadioButton1.Text);
        int kms1 = Convert.ToInt32(txtnokms.Text);
        int price = Convert.ToInt32(txtperkmcharge.Text);
        int total = kms1 * price;
        TextBox7.Text = Convert.ToString(total);

        SqlConnection scon2 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon2.Open();
       SqlCommand cmd1 = new SqlCommand("select cusid from customer where mobile = '"+Label14.Text+"'", scon2);
       SqlDataReader dr1 = cmd1.ExecuteReader();
       while (dr1.Read())
       {
           txtcustid.Text = dr1[0].ToString();
       }
       dr1.Close();

       scon2.Close();

       //scon2.Open();
       //SqlCommand cmd22 = new SqlCommand("select * from carpoolcabssave where cusid = '" + txtcustid.Text + "'", scon2);
       //SqlDataReader dr22 = cmd22.ExecuteReader();
       //if(dr22.HasRows)
       //{
       //    MessageBox.Show("You have already booked with this cab!!! Please complete your previous booking");
       //    Response.Redirect("User_carpoolingselect.aspx");
           
       //}
       //scon2.Close();
    }
   
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        //SqlConnection scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        //scon.Open();
        //SqlCommand cmd = new SqlCommand("Select * from carpoolin where source = '" + txtsource.Text + "' and destination = '"+txtdest.Text+"'" , scon);
        //SqlDataReader dr = cmd.ExecuteReader();
        //while(dr.Read())
        //{
        //    DropDownList1.Items.Add(dr[4].ToString());
        //    DropDownList1.Items.Add(dr[5].ToString());
        //    DropDownList1.Items.Add(dr[6].ToString());
        //    //TextBox7.Text = dr[8].ToString();
        //    // str1 = dr[4].ToString();
        //    // str2 = dr[5].ToString();
        //    // str3 = dr[6].ToString();
        //}

      
        //dr.Close();
    }
 
   
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //txtcabid.Text = DropDownList2.DataValueField;
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection scon11 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon11.Open();
      
        SqlCommand cmd11 = new SqlCommand("select * from carpoolin where Cabid = @Cabid", scon11);
      //  cmd11.Parameters.Add(new SqlParameter("@Cabid", (DropDownList1.Text)));
        SqlDataReader dr11 = cmd11.ExecuteReader();
        while(dr11.Read())
        {
            txtsource.Text = Convert.ToString(dr11[3]);
            txtdest.Text = Convert.ToString(dr11[7]);
        }
        dr11.Close();
        }
  

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr;
       
        SqlConnection scon2 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon2.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = scon2;
        cmd.CommandText = "select * from carpoolcabs where Cpid='" + TextBox9.Text + "'";
        dr = cmd.ExecuteReader();
        dr.Read();

        if (dr.HasRows)
        {
            scon2.Close();
            scon2.Open();
            SqlStr3 = "insert into carpoolcabssave(Carpoolid, cusid, cabid,pickup, source, destination, date, amount) Values(";
            SqlStr3 = SqlStr3 + "'" + TextBox9.Text + "','" + txtcustid.Text + "','" + txtcabid.Text + "','" + TextBox10.Text + "','" + txtsource.Text + "','" + txtdest.Text + "','" + TextBox11.Text + "','" + TextBox8.Text + "')";
            SqlCommand cmd4 = new SqlCommand(SqlStr3, scon2);
            cmd4.ExecuteNonQuery();
            
            MessageBox.Show("Your seat booked successfully with booking id:" + TextBox9.Text);
            txtavailable.Enabled = false;
            txtcabid.Enabled = false;
            txtcapacity.Enabled = false;
            txtcustid.Enabled = false;
            TextBox11.Enabled = false;
            txtdest.Enabled = false;
            txtnokms.Enabled = false;
            txtperkmcharge.Enabled = false;
            txtsource.Enabled = false;
            TextBox10.Enabled = false;
            TextBox11.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            



           scon2.Close();
            int reduce = 1;
            int availl = Convert.ToInt32(txtavailable.Text) - reduce;
            txtavailable.Text = Convert.ToString(availl);
           scon2.Open();
           string sqlstr6 = "UPDATE carpoolin SET available ='" +txtavailable.Text +  "' WHERE Cabid = '" + txtcabid.Text + "'";
           SqlCommand cmd7 = new SqlCommand(sqlstr6, scon2);
           cmd7.ExecuteNonQuery();
           scon2.Close();
        }
        
        else
        {
            
            SqlConnection scon3 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
            scon3.Open();
            SqlStr = "insert into carpoolcabs(Cpid, Source, pickup, Destination, Date, cusid, cid, Status) Values(";
            SqlStr = SqlStr + "'" + TextBox9.Text + "','" + txtsource.Text + "','" + TextBox10.Text + "','" + txtdest.Text + "','" + TextBox11.Text + "','" + txtcustid.Text + "','" + txtcabid.Text + "','" +txtcustid0.Text+ "')";
          
            SqlCommand cmd2 = new SqlCommand(SqlStr, scon3);
            cmd2.ExecuteNonQuery();
            scon3.Close();
            scon3.Open();
            SqlStr2 = "insert into carpoolcabssave(Carpoolid, cusid, cabid,pickup, source, destination, date, amount) Values(";
            SqlStr2 = SqlStr2 + "'" + TextBox9.Text + "','" + txtcustid.Text + "','" + txtcabid.Text + "','" + TextBox10.Text + "','" + txtsource.Text + "','" + txtdest.Text + "','" + TextBox11.Text + "','" + TextBox8.Text + "')";
            SqlCommand cmd3 = new SqlCommand(SqlStr2, scon3);
            cmd3.ExecuteNonQuery();
            scon3.Close();
            scon2.Close();
            MessageBox.Show("Your seat booked successfully with booking id:" + TextBox9.Text);
            txtavailable.Enabled = false;
            txtcabid.Enabled = false;
            txtcapacity.Enabled = false;
            txtcustid.Enabled = false;
            TextBox11.Enabled = false;
            txtdest.Enabled = false;
            txtnokms.Enabled = false;
            txtperkmcharge.Enabled = false;
            txtsource.Enabled = false;
            TextBox10.Enabled = false;
            TextBox11.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            scon2.Close();
            int reduce = 1;
            int availl = Convert.ToInt32(txtavailable.Text) - reduce;
            txtavailable.Text = Convert.ToString(availl);
            scon2.Open();
            string sqlstr6 = "UPDATE carpoolin SET available ='" + txtavailable.Text + "' WHERE Cabid = '" + txtcabid.Text + "'";
            SqlCommand cmd7 = new SqlCommand(sqlstr6, scon2);
            cmd7.ExecuteNonQuery();
            scon2.Close();
        }
        
       

        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        double amt, amt1, youpay;

        if (RadioButton1.Checked)
        {
            amt = Convert.ToInt32(TextBox7.Text);
            amt1 = amt * 0.2;
            youpay = amt - amt1;
            TextBox8.Text = Convert.ToString(youpay);
            TextBox10.Text = RadioButton1.Text;
        }
        else if (RadioButton2.Checked)
        {
            amt = Convert.ToInt32(TextBox7.Text);
            amt1 = amt * 0.3;
            youpay = amt - amt1;
            TextBox8.Text = Convert.ToString(youpay);
            TextBox10.Text = RadioButton2.Text;

        }
        else if (RadioButton3.Checked)
        {
            amt = Convert.ToInt32(TextBox7.Text);
            amt1 = amt * 0.7;
            youpay = amt - amt1;
            TextBox8.Text = Convert.ToString(youpay);
            TextBox10.Text = RadioButton3.Text;
        }
        else
        {
            amt = Convert.ToInt32(TextBox7.Text);
            TextBox8.Text = Convert.ToString(amt);
        }
    }
}

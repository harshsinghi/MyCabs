using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Configuration;
using System.Data;
using System.IO;
using System.Xml;
using System.Messaging;
using System.Net;
using System.Net.Mail;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class User_Feedback : System.Web.UI.Page
{
    int id, id2;
    int count, count1;
    string SqlStr, email;
    SqlCommand cmd;
    SqlCommandBuilder cmdb;
    SqlDataAdapter da;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
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
        YourEmail.Text = "ashwinanvyfranics@gmail.com";
    }
    public void SendEmail()
    {


        email = "harsh.kuamr.singhi1990@gmail.com";
        string password = "*********";

        var loginInfo = new NetworkCredential(email, password);
        var msg = new MailMessage();
        var smtpClient = new SmtpClient("smtp.gmail.com", 587);
        string address1 = YourEmail.Text;
        string subject = Comments.Text;
        msg.From = new MailAddress(email);
        msg.To.Add(new MailAddress(address1));
        msg.Subject = YourSubject.Text;
        msg.Body = Comments.Text;
        msg.IsBodyHtml = true;

        smtpClient.EnableSsl = true;
        smtpClient.UseDefaultCredentials = false;
        smtpClient.Credentials = loginInfo;
        smtpClient.Send(msg);


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            //here on button click what will done 
           SendEmail();
            SqlConnection scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
            scon.Open();
            SqlStr = "insert into feedback(name, body, reciever, sender, Comments) Values(";
            SqlStr = SqlStr + "'" + YourName.Text + "','" + YourSubject.Text + "','" + YourEmail.Text + "','" + email + "','" + Comments.Text + "')";
            SqlCommand cmd = new SqlCommand(SqlStr, scon);
            cmd.ExecuteNonQuery();
            scon.Close();
            DisplayMessage.Text = "Your Feedback has been recieved. Thank you !!!";
            DisplayMessage.Visible = true;
            YourSubject.Text = "";
          //  YourEmail.Text = "";
            YourName.Text = "";
            Comments.Text = "";
        }
        catch (Exception) { }
    }
}

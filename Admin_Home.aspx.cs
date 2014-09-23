using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;
using System.Windows.Forms;
public partial class Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
        
        Response.Buffer= true;
        Response.ExpiresAbsolute=DateTime.Now.AddDays(-1d);
        Response.Expires =-1500;
        Response.CacheControl = "no-cache";// Check for your SessionID
        if (Session["mobileno"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        
     
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

    private void SetImageUrl()
    {
        // Create an instance of Random class
        Random _rand = new Random();
        // Generate a random number between 1 and 8
        int i = _rand.Next(1, 8);
        // Set ImageUrl using the generated random number
        Image1.ImageUrl = "~/imagesrand/" + i.ToString() + ".jpg";
    }

   
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        SetImageUrl();
    }
}

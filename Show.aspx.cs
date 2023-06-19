using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online
{
    public partial class Show : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = Akku; Initial Catalog = Study; Integrated Security = True");


        protected void Page_Load(object sender, EventArgs e)
        {
            string slug = Request.QueryString["slug"];
            if(slug==null)
            {
                Response.Redirect("Default.aspx");

            }
            string query = $"Select * from coursetbl where coid='{slug}'";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if(rd.Read())
            {
                String name = rd["coname"].ToString();
                String description = rd["codesc"].ToString();
                String duration = rd["coduration"].ToString();
                String image = rd["coimage"].ToString();
                String price = rd["coprice"].ToString();




            }
        }
    }
}
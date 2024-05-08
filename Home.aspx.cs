using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class Home : System.Web.UI.Page
    {
        #region Global Variable
        SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString());
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                bindOriginCity();
                bindDestinationCity();
            }
        }

        private void bindOriginCity()
        {
            DataSet dsOrigin = getCity();
            if (dsOrigin.Tables[0].Rows.Count > 0)
            {
                // Retrieve the list of city names from the DataSet
                List<string> cityNames = new List<string>();
                foreach (DataRow row in dsOrigin.Tables[0].Rows)
                {
                    cityNames.Add(row["CityName"].ToString());
                }

                // Sort the city names alphabetically
                cityNames.Sort();

                // Bind the sorted list to the DropDownList
                ddlOrigin.DataSource = cityNames;
                ddlOrigin.DataBind();
            }
            ddlOrigin.Items.Insert(0, new ListItem("-Select City--", "0"));
        }

        private void bindDestinationCity()
        {
            DataSet dsDestination = getCity(); // Assuming this method returns a DataSet with destination cities
            if (dsDestination.Tables[0].Rows.Count > 0)
            {
                // Retrieve the list of city names from the DataSet
                List<string> cityNames = new List<string>();
                foreach (DataRow row in dsDestination.Tables[0].Rows)
                {
                    cityNames.Add(row["CityName"].ToString());
                }

                // Sort the city names alphabetically
                cityNames.Sort();

                // Bind the sorted list to the DropDownList
                ddlDestination.DataSource = cityNames;
                ddlDestination.DataBind();
            }
            ddlDestination.Items.Insert(0, new ListItem("-Select City--", "0"));
        }

        private DataSet getCity()
        {
            DataSet dsGetData = new DataSet();
            SqlCommand sqlCmd = new SqlCommand();
            if (connString.State == ConnectionState.Closed)
            {
                connString.Open();
            }
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.CommandText = "ispGetCity";
            sqlCmd.Connection = connString;
            SqlDataAdapter sda = new SqlDataAdapter(sqlCmd);
            sda.Fill(dsGetData);
            return dsGetData;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string formattedDate = DateTime.ParseExact(txtDate.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture).ToString("dd/MM/yyyy");
            Response.Redirect("BusBookingSearchDetails.aspx?Origin=" + ddlOrigin.SelectedItem.Text +
                               "&Destination=" + ddlDestination.SelectedItem.Text +
                               "&TravelDate=" + formattedDate);

            // Response.Redirect("BusBookingSearchDetails.aspx?Origin="+ddlOrigin.SelectedItem.Text+"&Destination="+ddlDestination.SelectedItem.Text+"&TravelDate="+txtDate.Text);
        }
    }
}
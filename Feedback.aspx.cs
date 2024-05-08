using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = @"INSERT INTO Feedback (UserName, Email, ContactNo, Rating, FeedbackText, ComplaintOrSuggestion, FeedbackDate) 
                                    VALUES (@UserName, @Email, @ContactNo, @Rating, @FeedbackText, @ComplaintOrSuggestion, GETDATE())";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
                        command.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        command.Parameters.AddWithValue("@ContactNo", txtContactNo.Text.Trim());
                        command.Parameters.AddWithValue("@Rating", Convert.ToInt32(RadioButtonList1.SelectedValue));
                        command.Parameters.AddWithValue("@FeedbackText", txtFeedback.Text.Trim());
                        command.Parameters.AddWithValue("@ComplaintOrSuggestion", txtComplainSuggestion.Text.Trim());

                        connection.Open();
                        command.ExecuteNonQuery();
                        // Feedback successfully inserted
                        ShowSuccessMessage("Feedback submitted successfully!");
                    }
                }
            }
            catch (Exception ex)
            {
                ShowErrorMessage("An error occurred while submitting feedback. Please try again later. Error: " + ex.Message);
                // Log the exception for further investigation
                // e.g., log.Error("An error occurred while submitting feedback", ex);
            }
        }
        private void ShowErrorMessage(string message)
        {
            // Display error message using a Label control or any other method of your choice
            lblErrorMessage.Text = message;
            lblErrorMessage.Visible = true;
        }

        private void ShowSuccessMessage(string message)
        {
            // Display success message using a Label control or any other method of your choice
            lblSuccessMessage.Text = message;
            lblSuccessMessage.Visible = true;
        }
    }
}

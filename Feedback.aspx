

<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="BusBookingProject.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Custom CSS for styling */
        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: bold;
        }

        .feedback-textarea {
            resize: vertical;
        }

        .btn-submit {
            margin-top: 20px;
        }
        /* Custom CSS for alignment */
.radio-label {
    display: inline-flex;
    align-items: center;

}
#RadioButtonList1{
     display: inline-flex;
     justify-content:space-between;
     flex-direction:row;
}
.Rbtnlist{
     display: inline-flex;
     flex-wrap:wrap;
     justify-content:space-between;
     flex-direction:row;
}
       input [type=radio]{
           display: inline-flex;
     flex-wrap:wrap;
     justify-content:space-between;
     flex-direction:column;
       }
        body {
     background-color: #060606;
     width: 100%;
     height: 100%;
     background-image: url('../img/feedbackbg.jpg');
     background-repeat: no-repeat;
     background-position: center center;
     background-size: cover;
 }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label runat="server" CssClass="form-label" for="txtUserName">User Name:</asp:Label>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="form-label" for="txtEmail">Email Id:</asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="form-label" for="txtContactNo">Contact No:</asp:Label>
                    <asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="rating-label">How will you Rate Your Experience with our Site:</asp:Label>
                    <asp:Panel ID="Panel1" runat="server" >
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Class="Rbtnlist" >
                            <asp:ListItem Text="Select" Value="0" Enabled="true" Selected="True"><asp:Label>Select</asp:Label></asp:ListItem>
                            <asp:ListItem Text="Very Bad" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Bad" Value="2"></asp:ListItem>
                            <asp:ListItem Text="ok" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Good" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Excelent" Value="5"></asp:ListItem>
                        </asp:RadioButtonList>
                        </asp:Panel>

                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label runat="server" CssClass="form-label" for="txtFeedback">Feedback:</asp:Label>
                    <asp:TextBox ID="txtFeedback" runat="server" CssClass="form-control feedback-textarea" TextMode="MultiLine" Rows="5"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="form-label" for="txtComplainSuggestion">Complaint or Suggestion:</asp:Label>
                    <asp:TextBox ID="txtComplainSuggestion" runat="server" CssClass="form-control feedback-textarea" TextMode="MultiLine" Rows="5"></asp:TextBox>
                </div>
            </div>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-submit" OnClick="btnSubmit_Click" />
        <asp:Label runat="server" ID="lblErrorMessage" Visible="false"></asp:Label>
        <asp:Label runat="server" ID="lblSuccessMessage" Visible="false"></asp:Label>
    </div>
</asp:Content>

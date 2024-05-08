<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusBookingProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
         body {
             /* Safari 4-5, Chrome 1-9 */
             background: -webkit-gradient(radial, center center, 0, center center, 460, from(#1a82f7), to(#2F2727));
             /* Safari 5.1+, Chrome 10+ */
             background: -webkit-radial-gradient(circle, #1a82f7, #2F2727);
             /* Firefox 3.6+ */
             background: -moz-radial-gradient(circle, #1a82f7, #2F2727);
             /* IE 10 */
             background: -moz-radial-gradient(circle, #1a82f7, #2F2727);
             height: 600px;
         }

         body {
             background-color: #060606;
             width: 100%;
             height: 100%;
             background-image: url('../img/loginbg.jpg');
             background-repeat: no-repeat;
             background-position: center center;
             background-size: cover;
         }

         .centered-form {
             margin-top: 10%;
         }

             .centered-form .panel {
                 background: rgba(255, 255, 255, 0.8);
                 box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
             }

         h2 {
             
             font-size: xx-large;
             font-palette: dark;
             font-weight: bolder;
             font-family:Algerian;
         }

         Lable {
             font-palette: light;
         }
         #sub1{
            background-color:transparent;
            color:blueviolet;
            width:30%;
            justify-content:center;
            border-radius:2rem;
         }
         #Main-Container{
             background-image:url('../img/loginbg2.jpg');
              
              border-radius:1rem;
              background-repeat: no-repeat;
background-position: center center;
background-size: cover;
         }
         #link-Register{
             color:darkblue;
         }
       
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card bg-transparent">
                <div class="Subcontainer-login border border-danger rounded-5 p-4" id="Main-Container">
                    <center>
                        <div class="Subcontainer-login border border-danger rounded-5 p-1" id="sub1">
                            <div class="text-center text-white">
                                <h2>Sign In</h2>
                            </div>
                        </div>
                    </center>
                    <asp:Label ID="lblErrorMsg" runat="server" /><br />
                    <br />
                    <asp:ValidationSummary ID="vsLogin" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgLogin" />

                    <div style="margin-bottom: 25px" class="form-group ">
                        <i class="fas fa-user"></i>
                        <asp:Label class="font-weight-bolder" runat="server">Login/Email ID:</asp:Label>
                        <asp:TextBox runat="server" placeholder="Enter Mobile No" ID="txtUserId" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserId" Display="None" ID="rfvLoginId" ValidationGroup="vgLogin"
                            CssClass="text-danger" ErrorMessage="The email field is required." /><br />
                    </div>

                    <div style="margin-bottom: 25px" class="form-group ">
                        <i class="fas fa-key"></i>
                        <asp:Label class="font-weight-bolder" runat="server">Password</asp:Label>
                        <asp:TextBox runat="server" ID="txtPassword" placeholder="Enter Password Here" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" CssClass="text-danger" ID="rfvPassword"
                            ErrorMessage="The password field is required." ValidationGroup="vgLogin" />
                    </div>

                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-sm-12 controls">
                            <asp:Button runat="server" ID="btnLogin" Text="Log in" CssClass="btn btn-success" Style="width: auto;" ValidationGroup="vgLogin" CausesValidation="True" OnClick="btnLogin_Click" /><br />
                            <br />

                            <a href="UserRegistration.aspx" id="link-Register">Register as a new user</a>
                        </div>
                    </div>

                </div>


            </div>

        </div>
    </div>


</asp:Content>
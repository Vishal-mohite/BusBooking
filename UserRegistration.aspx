<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="BusBookingProject.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            height: 600px;
        }

        body {
            background-color: #060606;
            width: 100%;
            height: 100%;
            background-image: url('../img/regbg2.jpg');
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
        }

        

        #Main-Container {
            background-image: url('../img/regbg.jpg');
            border-radius: 1rem;
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
        }
    </style>
    <div class="container" style="margin-top: 5%">
        <!-- Content goes here -->
        <div class="row" style="margin-top: 5%">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="Subcontainer-login border border-danger rounded p-4" id="Main-Container">
                        <center>
                        <div class="Subcontainer-login border border-danger  rounded p-1 " id="sub1">
                            
                                <div class="text-center card-header text-black border-bottom border-danger">
                                    <h2>New User Registration</h2>
                                </div>
                            
                        </div>
                            </center>
                        <br />
                        <div class="panel-body">
                            <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                            <div id="divMessage" runat="server"></div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                       <i class="fas fa-user"></i> <asp:Label ID="lblFirstName" runat="server" Text="First Name" Font-Bold="true"></asp:Label>
                                        <asp:TextBox ID="txtFirstName" runat="server" class="form-control input-sm floatlabel" required="required" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister" CssClass="text-danger" ErrorMessage="First Name is required." />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                      <i class="fas fa-user"></i>  <asp:Label ID="lblLastName" runat="server" Text="Last Name" Font-Bold="true"></asp:Label>
                                        <asp:TextBox ID="txtLastName" runat="server" class="form-control input-sm floatlabel" required="required" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" Display="None" ID="rfVLastName" ValidationGroup="vgRegister" CssClass="text-danger" ErrorMessage="Last Name is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                        <asp:Label ID="lblUserName" runat="server" Text="" Font-Bold="true"> <i class="fa-solid fa-mobile"></i> Mobile No/<i class="fas fa-user"></i>User Name</asp:Label>
                                        <asp:TextBox ID="txtMobileNo" runat="server" class="form-control input-sm floatlabel" required="required" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobileNo" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister" CssClass="text-danger" ErrorMessage="Mobile No is required." />
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                       <i class="fas fa-key"></i> <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Bold="true"></asp:Label>
                                        <asp:TextBox ID="txtPassword" runat="server" class="form-control input-sm floatlabel" TextMode="Password" required="required" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" ID="rfvPassword" ValidationGroup="vgRegister" CssClass="text-danger" ErrorMessage="Password is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                        <i class="fa-solid fa-envelope"></i> <asp:Label ID="lblEmail" runat="server" Text="Email ID" Font-Bold="true"></asp:Label>
                                        <asp:TextBox ID="txtEmailID" runat="server" class="form-control input-sm floatlabel" required="required" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailID" Display="None" ID="rfVEmail" ValidationGroup="vgRegister" CssClass="text-danger" ErrorMessage="Email Id is required." />
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                       <i class="fa-solid fa-house-user"></i> <asp:Label ID="lblAddress" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                                        <asp:TextBox runat="server" ID="txtAddress" class="form-control input-sm" required="required" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" Display="None" ID="rfVAddress" ValidationGroup="vgRegister" CssClass="text-danger" ErrorMessage="Address is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                       <i class="fa-solid fa-location-dot"></i> <asp:Label ID="lblCity" runat="server" Text="City" Font-Bold="true"></asp:Label>
                                        <asp:TextBox runat="server" ID="txtCity" class="form-control input-sm" required="required" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity" Display="None" ID="rfVCity" ValidationGroup="vgRegister" CssClass="text-danger" ErrorMessage="City Name is required." />
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                      <i class="fa-solid fa-location-dot"></i>  <asp:Label ID="lblPinCode" runat="server" Text="Pincode" Font-Bold="true"></asp:Label>
                                        <asp:TextBox ID="txtPincode" runat="server" class="form-control input-sm floatlabel" required="required" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPincode" Display="None" ID="rfvPinCode" ValidationGroup="vgRegister" CssClass="text-danger" ErrorMessage="Pin code is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                        <asp:Button ID="btnSave" runat="server" Text="Register" OnClick="btnSave_Click" class="btn btn-info btn-block " ValidationGroup="vgRegister" CausesValidation="True" ViewStateMode="Inherit" />
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                        <a href="Login.aspx" class="btn btn-info btn-block " >Login</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
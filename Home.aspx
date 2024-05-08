<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BusBookingProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-color: #060606;
            width: 100%;
            height: 100%;
            background-image: url("https://wallpapercave.com/wp/wp2555019.jpg");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
        }

       h3{
           font-family:Algerian;
       }
        #Main-Container {
            background-image: url("https://wallpapercave.com/wp/wp2610925.jpg");
            border-radius: 1rem;
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
        }
    </style>
    
    
    <script>
        $(function () {
            $("#txtJourneyDate").datepicker();
        });
        $(function () {
            $("#txtReturnJourneyDate").datepicker();
        });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top:8%">
         <div class="row ">
            <div class="col-md-6 mx-auto" style="margin-left:30%">

                <div class="card">
                    <div class="Subcontainer-login border border-danger  rounded p-10" id="Main-Container">
                        <center>
                         <div class="text-center border-bottom border-danger"> 
                        <h3 >Search For Available Buses</h3>
                    </div>
                            </center>
                    <div class="card-body">
                        <div id="divMessage" runat="server" />
                           <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                 <i class="fa-solid fa-route"></i>  <asp:Label ID="lblAccType" runat="server" Text="From" Font-Bold="true"></asp:Label>
                                     <asp:DropDownList ID="ddlOrigin" class="form-control input-sm floatlabel" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                  <i class="fa-solid fa-route"></i> <asp:Label ID="Label1" runat="server" Text="To" Font-Bold="true"></asp:Label>
                                     <asp:DropDownList ID="ddlDestination" class="form-control input-sm floatlabel" runat="server">
                                    </asp:DropDownList>
                                </div>

                                </div>
                          <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                  <i class="fa-solid fa-calendar-days"></i>  <asp:Label ID="lblDate" runat="server" Text="Travel Date" Font-Bold="true"></asp:Label>
                                    <asp:TextBox ID="txtDate" runat="server" placeholder="DD/MM/YYYY Format" class="form-control input-sm floatlabel" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        <br />
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                    <asp:Button ID="btnSearch" runat="server" Text="Search Buses" class="btn btn-info btn-block" OnClick="btnSearch_Click"/>
                                </div>
                            </div>
                     </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
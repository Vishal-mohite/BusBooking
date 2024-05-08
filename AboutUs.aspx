<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BusBookingProject.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        h4 {
            font-size: xx-large;
            font-weight: bolder;
            color: brown;
        }

        .Subcontainer-AboutUs {
            background-color: hotpink
        }

        body {
            background-color: #060606;
    width: 100%;
    height: 100%;
    background-image: url('../img/aboutbg.jpg');
 background-repeat: no-repeat;
 background-position: center center;
 background-size:cover;
}
       
        #sub-body{
            background-color: #fffafa96;
        }
    </style>
    <div class="container" style="margin-top: 6%">
        <div class="row" style="margin-top: 5%">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="Subcontainer-login border border-danger rounded p-4" id="main-sub">
                        <div class="Subcontainer-login border border-danger rounded p-4" id="sub-body">
                            <div class="Subcontainer-AboutUs border border-danger rounded p-2" >
                                <div class="text-center mb-4">
                                    <h4>About Us</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <p style="font-size: large">
                                    We are among top 10 Service Provider for Online Bus Booking in India,
                    We have our branches in all Major cities in India,Our Services are very fast 
                    compare to other Online Portals.We works with Efficieny and provide a
                    good service Environment to our End Users,24*4 Support Facility is Available,
                    Each and every query is Resolved with in a Day.
               
                                </p>
                            </div>
                            <div class="panel-footer">
                                <div class="Subcontainer-AboutUs border border-danger rounded p-2" >
                                    <div class="text-center mb-4">
                                        <h4>Contact Us</h4>
                                    </div>
                                </div>
                                <br />
                                <ul>
                                    <li>Email: <a href="mailto:MaharajaTravels@hotmail.com">MaharajaTravels@hotmail.com</a></li>
                                    <li>Call us: 08844567244</li>
                                    <li>Address: Maharaja Travels, Kolhapur Naka, Karad, Maharashtra, 415114</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
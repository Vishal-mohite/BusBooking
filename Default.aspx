<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BusBookingProject.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
   
 body {
     background-color: #060606;
     width: 100%;
     height: 100%;
     background-image: url('../img/homeback.jpg');
     background-repeat: no-repeat;
     background-position: center center;
     background-size: cover;
 }

          #slideshow-container {
            position: relative;
            width: 100%;
            margin: 0 auto;
            overflow: hidden;
            height: 500px;
        }

        .slideshow-image {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            opacity: 0;
            transition: opacity 1s ease-in-out; /* Adjusted transition duration */
        }

        .slideshow-image.active {
            opacity: 1;
        }
.Subcontainer-login {
    background-color: #fffafa96; /* Light grey background color */
    border-radius: 10px; /* Rounded corners for a modern look */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow for depth */
}
h3{
    font-size:xx-large;
    font-weight:bolder;
    color:blueviolet;
}
#sub-1{
    background-color:lightpink;
}
#sub-2{
    background-color:lightpink;
}
    </style>
    <div class="container" style="margin-top: 6%">
        <h1 class="text-center text-danger " style="font-family:'Wide Latin'">
     <img src="img/logo.png" height="100px"width="100px" /> WELCOME TO MAHARAJA TRAVEL'S KARAD
        </h1>
        <div class="row">
            <div id="slideshow-container">
                <asp:Image ID="Imagebus" ImageUrl="~/img/banner-home-1.jpg" Style="width: 100%; height: 100%;" CssClass="slideshow-image active" runat="server" />
                <asp:Image ID="Image1" ImageUrl="~/img/R.jpg" Style="width: 100%; height: 100%;" CssClass="slideshow-image" runat="server" />
                <asp:Image ID="Image2" ImageUrl="~/img/image3.jpg" Style="width: 100%; height: 100%;" CssClass="slideshow-image" runat="server" />
                 <asp:Image ID="Image3" ImageUrl="~/img/image4.jpg" Style="width: 100%; height: 100%;" CssClass="slideshow-image" runat="server" />
                 <asp:Image ID="Image4" ImageUrl="~/img/image5.jpg" Style="width: 100%; height: 100%;" CssClass="slideshow-image" runat="server" />
                 <asp:Image ID="Image5" ImageUrl="~/img/image6.jpg" Style="width: 100%; height: 100%;" CssClass="slideshow-image" runat="server" />
                <asp:Image ID="imgBus" ImageUrl="~/img/home.jpg" Style="width: 100%; height: 100%;" CssClass="slideshow-image" runat="server" />
            </div>
            <script>
                // JavaScript to cycle through slideshow images
                var slideshowImages = document.querySelectorAll('.slideshow-image');
                var currentImageIndex = 0;

                function showNextImage() {
                    // Hide current image
                    slideshowImages[currentImageIndex].classList.remove('active');
                    // Move to the next image
                    currentImageIndex = (currentImageIndex + 1) % slideshowImages.length;
                    // Show the next image
                    slideshowImages[currentImageIndex].classList.add('active');
                }

                // Start the slideshow
                setInterval(showNextImage, 5000); // Change image every 5 seconds
            </script>
            <div class="col-lg-12" style="margin-top: 2%">
                <div class="card bg-secondary">
                    <div class="Subcontainer-login rounded p-4 ">
                        <div class="Subcontainer-login border border-dark rounded p-2" id="sub-1">
                            <div class=" text-center">
                                <h3>Introduction About Online Bus Booking</h3>
                            </div>
                        </div>
                        </div>
                        <br />
                        <div class="panel-body">
                            <p class="text-white" style="font-size: large">
                                Online Bus Booking System is a Web-Based application that works within a centralized network. It provides the facility to reserve seats, different types of inquiries that need an instant and quick reservation. Buses may be used for scheduled bus transport, scheduled coach transport, school transport, private hire, or tourism; promotional buses may be used for political campaigns, and others are privately operated for a wide range of purposes, including rock and pop band tour vehicles.
                            </p>
                        </div>
                   
                </div>
            </div>
            <div class="col-lg-12" style="margin-top: 2%">
                <div class="card bg-secondary">
                    <div class="Subcontainer-login p-4  rounded p-4" >
                          <div class="Subcontainer-login border border-dark rounded p-2" id="sub-2">
                            <div class="text-center ">
                                <h3>Why Online Bus Booking is Important?</h3>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body text-white" style="font-size: large">
                        <ul>
                            <li>Fast & Easy Online bus booking.
                            </li>
                            <li>Zero booking fees No Extra Charges for online booking.
                            </li>
                            <li>100 % Secure to book your bus tickets with Online Bus Booking System.
                            </li>
                            <li>All Credit and Debit Card are accepted.
                            </li>
                            <li>Get tickets to your mobile.
                            </li>
                            <li>Oncall cancellation and help on phone support available.
                            </li>
                            <li>The fastest way to book bus tickets.
                            </li>
                            <li>Book bus tickets online for Major routes across India.
                            </li>
                        </ul>

                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
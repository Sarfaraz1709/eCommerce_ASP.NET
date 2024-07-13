<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project01._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
  <%-- -----------------------------------------CAROUSEL-------------------------------------------%>
           <div id="carousel" style="border:2px solid white; border-radius:15px;">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" data-bs-wrap="true">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="6" aria-label="Slide 7"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="7" aria-label="Slide 8"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="8" aria-label="Slide 9"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="9" aria-label="Slide 10"></button>
            </div>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Img/gow.jpg" class="d-block w-100" alt="God of War" style="border-radius:15px; height:490px;">
                </div>
                <div class="carousel-item">
                    <img src="Img/Horizon.jpg" class="d-block w-100" alt="Horizon" style="border-radius:15px; height:490px;">
                </div>
                 <div class="carousel-item">
                     <img src="Img/peakpx.jpg" class="d-block w-100" alt="fifa" style="border-radius:15px; height:490px;">
                 </div>
                <div class="carousel-item">
                    <img src="Img/HG.png" class="d-block w-100" alt="Hogwarts Legacy" style="border-radius:15px; height:490px;">
                </div>
                <div class="carousel-item">
                    <img src="Img/rdr.jpg" class="d-block w-100" alt="Red Dead Redemption 2" style="border-radius:15px; height:490px;">
                </div>
                  <div class="carousel-item">
                      <img src="Img/cp.png" class="d-block w-100" alt="cybrpnk" style="border-radius:15px; height:490px;">
                  </div>
                <div class="carousel-item">
                    <img src="Img/GTA.jpg" class="d-block w-100" alt="Grand Theft Auto" style="border-radius:15px; height:490px;">
                </div>
                <div class="carousel-item">
                    <img src="Img/fn.jpeg" class="d-block w-100" alt="Forza" style="border-radius:15px; height:490px;">
                </div>
                <div class="carousel-item">
                    <img src="Img/ac.jpg" class="d-block w-100" alt="Assassin's Creed" style="border-radius:15px; height:490px;">
                </div>
                <div class="carousel-item">
                    <img src="Img/cod.jpg"  class="d-block w-100" alt="COD" style="border-radius:15px; height:490px;">
                </div>
             
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <br />
    
        <%-- ---------------------------------------------------LOGINN-------------------------------------------------------------- --%>
        <div style="border-radius:20px">
            <table align="center" style="width: 55%; border-collapse: collapse; border: 2px solid transparent; border-radius:20px; background-color:rgba(0, 0, 0, 0.6);">
                <tr>
                    <td class="text-center" colspan="2" style="color: #FFFFFF">
                        <h2><strong>GAMERS LOGIN</strong></h2>
                    </td>
                </tr>
                <tr>
                    <td class="text-end" style="color: #FFFFFF; width: 407px; height: 40px;">Login id : </td>
                    <td style="color: #FFFFFF; width: 524px; height: 40px;">
                        <asp:TextBox style="border-radius:10px" ID="TextBox1" runat="server" Width="210px" ></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Plese Enter loginid" style="color: #FF3300">Enter Login id</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-end" style="color: #FFFFFF; width: 407px; height: 46px;">Login Password : </td>
                    <td style="color: #FFFFFF; width: 524px; height: 46px;">
                        <asp:TextBox style="border-radius:10px" ID="TextBox2" runat="server" Width="210px" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Loginid Password" style="color: #FF3300">Password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="color: #FFFFFF" class="text-center">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>
                        <asp:Button ID="Button1" runat="server" Text="Login" Width="104px" style="border-radius:10px;background-color:cornflowerblue;color:aliceblue; font-weight: bold;" OnClick="Button1_Click"/>
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td colspan="2" style="color: #FFFFFF" class="text-center">
                        <asp:Label ID="Label1" runat="server" style="color: #FF3300"></asp:Label>
                        <div class="text-start">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF3300" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="color: #FFFFFF; height: 24px;" class="text-center">Not a User ? then <asp:HyperLink ID="signup" NavigateUrl="signup.aspx" runat="server" style="color: #0000FF">Register now.</asp:HyperLink>
&nbsp;</td>
                </tr>
            </table>
        </div>
        <%-- ----------------------------------------------------------------------------------------------------------------------------------------- --%>
  
    </main>

</asp:Content>

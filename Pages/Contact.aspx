<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project01.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">

       <div style="width:100% ; display:flex">
           <%-- DIV1 --%>
           <div style="width:50%; background-color:rgba(0,0,0,0.6);border-radius:10px;padding-left:10px">
               <h1 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color: #FFFFFF"><strong>CONTACT <span style="color: #FF3300">DETAILS</span></strong></h1>
               <p style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color: #FFFFFF" class="text-center"><strong>Share Your Contact Details </strong>&amp;<span style="font-weight: bold"> Stay Connected With US !!!!!..</span></p>
         
               <div style="background-color:rgba(0,0,0,0.6);border-radius:10px">

                   <table align="left" style="width:70%; border-collapse: collapse">
                       <tr>
                           <td class="text-end" style="width: 232px; color: #FFFFFF; height: 42px"><strong>Your Name : </strong> </td>
                           <td style="height: 42px">
                               <asp:TextBox ID="TextBox1" runat="server" Width="271px" style="border-radius:10px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="text-end" style="width: 232px; color: #FFFFFF; height: 41px;"><strong>Your Age : </strong> </td>
                           <td style="height: 41px">
                               <asp:TextBox ID="TextBox2" runat="server" Width="81px" style="border-radius:10px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="text-end" style="width: 232px; color: #FFFFFF; height: 40px;"><strong>Contact Number :</strong></td>
                           <td style="height: 40px">
                               <asp:TextBox ID="TextBox3" runat="server" Width="271px" style="border-radius:10px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="text-end" style="width: 232px; color: #FFFFFF; height: 49px;"><strong>Email :</strong></td>
                           <td style="height: 49px">
                               <asp:TextBox ID="TextBox4" runat="server" Width="271px" style="border-radius:10px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="text-end" style="width: 232px; color: #FFFFFF; height: 117px;"><strong>Message:</strong></td>
                           <td style="height: 117px">
                               <asp:TextBox ID="TextBox5" runat="server" Width="271px" style="border-radius:10px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td style="width: 232px; color: #FFFFFF;">&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td style="color: #FFFFFF;" class="text-center" colspan="2">
                               <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:Button ID="Button1" runat="server" Text="Send" style="font-weight: bold; color: #FFFFFF; background-color: #3366FF ; border-radius:10px" CssClass="me-0" Width="332px" OnClick="Button1_Click1"/>
                               </h5>
                           </td>
                       </tr>
                       <tr>
                           <td style="color: #FFFFFF;" class="text-center" colspan="2">
                               <asp:Label ID="Label1" runat="server" style="color: #FF3300"></asp:Label>
                           </td>
                       </tr>
                       </table>

              </div>
           
           </div>


           <%-- DIV2 --%>
           <div style="width:30%">
               <img src="Img/helloagain.gif" style="width: 514px; height: 547px" class="float-start" />
           </div>
       </div>
        <br />
        <div style="background-color:rgba(0,0,0,0.6);border-radius:10px"><br />s
            <p style="margin:20px; text-align: justify;"> 
                 <strong><span style="color: #FFFFFF; font-family: Georgia, 'Times New Roman', Times, serif">Thank you for visiting my e-commerce website, HunterGamers, and for getting in touch with me. Your support and interest mean the world to me as I continue to grow and improve the site.
                 As a token of my appreciation, I wanted to share a special gaming message with you:
                </span>
                <br style="color: #FFFFFF; font-family: Georgia, 'Times New Roman', Times, serif" />
                 <span style="color: #FF0000; font-family: Georgia, 'Times New Roman', Times, serif">"Keep exploring new worlds, conquering challenges, and enjoying every moment of your gaming journey. 
                  Remember, the best games are yet to be played, and the greatest victories are still to come!"
                 </span>
                 <br style="color: #FFFFFF; font-family: Georgia, 'Times New Roman', Times, serif" />
                 <span style="color: #FFFFFF; font-family: Georgia, 'Times New Roman', Times, serif">Thank you once again for your support. If you have any feedback or suggestions for HunterGamers, please feel free to reach out. Your input is invaluable 
                 as I strive to provide the best experience for all gaming enthusiasts.
                 </span></strong>
            </p>
            <p style="margin:20px; text-align: justify;">
                 <strong><span style="color: #FFFFFF; font-family: Georgia, 'Times New Roman', Times, serif">Happy gaming! from(@Sarfaraz Ikhlakh Khan)</span></strong>
            </p><br />
        </div>
    </main>
</asp:Content>

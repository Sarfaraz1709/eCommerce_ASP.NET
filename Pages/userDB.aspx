<%@ Page Title="" Language="C#" MasterPageFile="~/usermasterpage.master" AutoEventWireup="true" CodeBehind="userDB.aspx.cs" Inherits="Project01.userDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center"><strong><span style="color: #FFFFFF; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">SHOP FOR THE LATEST </span>
        <span style="text-shadow:0px 3px 4px ;color: #FF3300; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">GAMES </span>
        <span style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #FFFFFF">NOW!!!.</span></strong><br /></h2>

<p class="text-center" style="color: #FFFFFF; font-family: 'Times New Roman', Times, serif">Level up your gaming experience with exclusive gear and epic deals at our online store.<span style="color: #FFFFFF">Your ultimate destination for all things gaming!</span></p>
<div style="background:rgba(0,0,0,0.6);border:2px solid transparent;border-radius:20px">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="Page_Load" Width="1192px" RepeatDirection="Horizontal" CellPadding="20" CellSpacing="15" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" Height="670px" UseAccessibleHeader="True" ValidateRequestMode="Enabled">

          <%-- <ItemTemplate> : is used to give Repetative Task in loop --%>
      <ItemTemplate> 
          <center>
   <table width="100%" border="1" style="background-color:rgb(255, 255, 255);border:2px solid transparent;border-radius:15px;">
              <caption>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <tr>
                      <th style="text-align:center"><%--     <%#Eval("productname")%> : it will bind the Database in  labelData From Sql Database --%>
                          <asp:Label ID="pn" runat="server" Text='<%#Eval("pname")%>' />
                          <br />
                          <br />
                      </th>
                  </tr>
                  <caption>
                      <br />
                      <tr>
                          <th style="text-align:center;box-shadow:0px 0px 10px">
                              <asp:Image ID="img" runat="server" Height="260px" imageurl='<%#Eval("imgname","{0}")%>' Width="220px" />
                          </th>
                      </tr>
                      <caption>
                          <br />
                          <tr>
                              <th style="text-align:center;">
                                  <asp:Label ID="Pprice" runat="server" Text='<%#Eval("pprice")%>' />
                                  Rs.<br />
                                  <br><%-- Create A button Add CommandArgument give productid > When Click On Button it Will Give the Product id and the coder is Writen in default.cs inside Datalist itemCommand --%><strong>
                                  <asp:Button ID="pid" runat="server" BackColor="Blue" CommandArgument='<%#Eval("pid") %>' style="color:white;font-weight:bold; border:2px solid transparent;border-radius:5px" Text="View Details" />
                                  </strong>
                                  <br></br>
                                  </br>
                              </th>
                          </tr>
                          <caption>
                              <br />
                          </caption>
                      </caption>
                  </caption>
              </caption>
       
   </table>
                
          </center>       
      </ItemTemplate>

    </asp:DataList>
</div>
    <br />
<div style="background-color:black;width:100%;border:2px solid transparent;border-radius:15px">
    <video src="Img/GODOFWAR.mp4" controls="controls" autoplay="autoplay" muted="muted" loop="loop" 
        style="width:100%;border:2px solid transparent;border-radius:15px;"/>
</div>
</asp:Content>

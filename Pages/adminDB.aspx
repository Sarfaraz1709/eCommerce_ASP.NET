<%@ Page Title="" Language="C#" MasterPageFile="~/AdminmasterPage.master" AutoEventWireup="true" CodeBehind="adminDB.aspx.cs" Inherits="Project01.adminDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3 style="color: #FFFFFF" class="text-center"><span style="font-family: 'times New Roman', Times, serif">Welcome To Admin Page 
            </span> 
            <asp:Label ID="Label2" runat="server" style="font-family: 'times New Roman', Times, serif; color: #FF3300"></asp:Label>
        </h3>
    </div>

    <div style="background-color:rgba(0,0,0,0.6);border-radius:5px">
        <h2 class="text-center" style="color: #FFFFFF; font-family: 'Times New Roman', Times, serif">&nbsp;</h2>
        <h2 class="text-center" style="color: #FFFFFF; font-family: 'Times New Roman', Times, serif"><strong>Total Number Of Products</strong></h2>
        <%-- ---------------------------------------------- --%>
        <div>
          <asp:DataList ID="DataList1" runat="server" RepeatColumns="5"  OnSelectedIndexChanged="Page_Load" Width="1192px" 
              RepeatDirection="Horizontal" CellPadding="20" CellSpacing="15" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" 
              Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" Height="670px">

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
                                       <asp:Image ID="img" runat="server" Height="213px" imageurl='<%#Eval("imgname","{0}")%>' Width="189px" />
                                   </th>
                               </tr>
                                   <caption>
                                       <br />
                                       <tr>
                                           <th style="text-align:center;">
                                               <asp:Label ID="Pprice" runat="server" Text='<%#Eval("pprice")%>' />
                                               Rs.<br /></th>
                                       </tr>
                               </caption>
            </table>
             
                   </center>       
               </ItemTemplate>

             </asp:DataList>
        </div>
        <%-- ----------------------------------------------- --%>
    </div>
</asp:Content>

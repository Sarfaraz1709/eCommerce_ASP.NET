<%@ Page Title="" Language="C#" MasterPageFile="~/usermasterpage.master" AutoEventWireup="true" CodeBehind="viewdetails.aspx.cs" Inherits="Project01.viewdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-center" style="color: #FFFFFF"><strong><span style="color: #FF3300; font-family: Arial, Helvetica, sans-serif">PRODUCT</span><span style="font-family: Arial, Helvetica, sans-serif">&nbsp; DETAILS</span></strong></h3>
  <%-- -------------------------------------------------------------------------------- --%>
    <div class="text-center" style="color:white">

        <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" RepeatColumns="1" RepeatDirection="Horizontal" Width="800px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <div style="float:left;width:800px;border:2px solid transparent; background-color:rgba(0,0,0,0.6);border-radius:10px; display:flex;">
                     
                              <div style="float:left;width:100%; padding-left:50px;padding-top:50px;" class="text-start">
                                  <h3><strong><span style="color: #FF3300">Product Name :</span> </strong>
                                      <asp:Label ID="pn" runat="server" Text='<%#Eval("pname") %>' />
                                      <br />
                                      <strong>Product Price :</strong>
                                      <asp:Label ID="pr" runat="server" Text='<%#Eval("pprice") %>' />
                                      Rs. </h3>
                                  <br />
                                  <div>
                                      <p>Join thousands of gamers who are loving <asp:Label ID="Label1" runat="server" Text='<%#Eval("pname") %>' /> & Add it to your cart now and start your adventure today!</p>
                                     <p>@Limited Stock. <b style="color:red">ADD TO CART NOW !!</b></p>
                                      <p>#ProductftheYear : <asp:Label ID="Label2" runat="server" Text='<%#Eval("pname") %>'/></p>
                                  </div>
                              </div>

                              <div style="float:left;width:50%; padding:20px;">
                             <asp:Image runat="server" ID="img" imageurl='<%#Eval("imgname","{0}")%>' Width="204px" Height="250px" style="border:2px solid transparent ; border-radius:10px" />
                              </div>
                  </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <%-- -------------------------------------------------------------------------------- --%>
    <br />
    <div class="text-center">

        <asp:Button ID="Button2" runat="server" Text="Back" Width="102px" style="border:2px solid transparent;border-radius:15px" Height="42px" OnClick="Button2_Click" />
&nbsp;&nbsp;
        <strong>
        <asp:Button ID="Button3" runat="server" Text="Add To Cart" Width="195px" style="font-weight: bold; color: #FFFFFF; background-color: #0066FF ;border:2px solid transparent;border-radius:15px" Height="45px" OnClick="Button3_Click" />
        </strong>

    </div>
</asp:Content>

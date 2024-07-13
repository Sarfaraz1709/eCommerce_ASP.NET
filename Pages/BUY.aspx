<%@ Page Title="" Language="C#" MasterPageFile="~/usermasterpage.master" AutoEventWireup="true" CodeBehind="BUY.aspx.cs" Inherits="Project01.BUY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
    <div>

    <h2><span style="color: #FFFFFF"><strong>YOUR PRODUCTS :</strong></span></h2>

   <div>
       <table style="border:1px solid transparent;background-color:rgba(0,0,0,0.6);border-radius:10px;" width="100%">
           <tr>
               <th style="color: #FF0000;width:25%">PRODUCT NAME</th>
               <th style="color: #FF0000;width:25%">PRODUCT PRICE</th>
               <th style="color: #FF0000;width:25%">QUANTITY</th>
               <th style="color: #FF0000;width:25%">TOTAL</th>
           </tr>
       </table>
      
       <div class="text-start">
           <strong>
       <asp:DataList ID="DataList1" runat="server" style="color: #FFFFFF" Width="100%">
           <ItemTemplate>
                <table style="border:1px solid transparent;background-color:rgba(0,0,0,0.6);border-radius:10px;" width="100%">
                     <tr>
   
                         <th style="width:25%"><asp:Label ID="pn" runat="server" Text='<%#Eval("pname") %>'/></th>
                         <th style="width:25%"><asp:Label ID="pp" runat="server" Text='<%#Eval("pprice") %>'/>/-</th>
                         <th style="width:25%"><asp:Label ID="qty" runat="server" Text='<%#Eval("quantity") %>'/></th> 
                         <th style="width:25%"><asp:Label ID="Total" runat="server" Text='<%#Eval("totalamount") %>'/> Rs.</th>
   
                     </tr>
                 </table>
           </ItemTemplate>
       </asp:DataList>
       </strong>
               </div>
      
   </div>
   
</div><br /><br />
    <div style="display:flex;width:100%">
                            <!--       --><!--       --><!--       --><!--       --><!--       --><!--       -->
           <div style="width:55%">
                                <table align="left" style="border-collapse: collapse; border:1px solid transparent; border-radius:15px;background-color:rgba(0,0,0,0.6);">
                                    <tr>
                                        <td colspan="2" style="color: #FF3300">
                                            <h2 class="text-center"><strong>YOUR ADDRESS</strong></h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 689px; height: 47px; font-weight: bold; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;" class="text-end">
                                            Full name (First and Last name) :</td>
                                        <td style="height: 47px; width: 754px;">
                                            <asp:TextBox ID="TextBox1" runat="server" TabIndex="1" Width="260px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name." style="color: #FF3300"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 689px; height: 48px; font-weight: bold; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;" class="text-end">
                                            Mobile Number :</td>
                                        <td style="height: 48px; width: 754px;">
                                            <strong><span style="color: #FFFFFF">(+91)-</span> </strong><asp:TextBox ID="TextBox2" runat="server" MaxLength="10" TabIndex="2" Width="215px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                                        &nbsp;
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Number." style="color: #FF3300"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 689px; height: 70px; font-weight: bold; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;" class="text-end">
                                            Flat,House no., Building, Company, Aparment :</td>
                                        <td style="height: 70px; width: 754px;">
                                            <asp:TextBox ID="TextBox3" runat="server" TabIndex="3" TextMode="MultiLine" Width="566px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 689px; height: 70px; font-weight: bold; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;" class="text-end">
                                            Area, Street, Sector, Village :</td>
                                        <td style="height: 70px; width: 754px;">
                                            <asp:TextBox ID="TextBox4" runat="server" TabIndex="4" TextMode="MultiLine" Width="343px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Add Address." style="color: #FF3300"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 689px; height: 47px; font-weight: bold; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;" class="text-end">
                                            Landmark :</td>
                                        <td style="height: 47px; width: 754px;">
                                            <asp:TextBox ID="TextBox5" runat="server" TabIndex="5" Width="259px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 689px; height: 47px; font-weight: bold; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;" class="text-end">
                                            Pin Code (6-digit pincode) :</td>
                                        <td style="height: 47px; width: 754px;">
                                            <asp:TextBox ID="TextBox6" runat="server" MaxLength="6" TabIndex="6" Width="259px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 689px; height: 45px; font-weight: bold; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;" class="text-end">
                                            Town/City :</td>
                                        <td style="height: 47px; width: 754px;">
                                            <asp:TextBox ID="TextBox7" runat="server" TabIndex="7" Width="259px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                                        &nbsp;
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="City/Town Required." style="color: #FF3300"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 689px; height: 47px; font-weight: bold; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;" class="text-end">
                                            State :</td>
                                        <td style="height: 47px; width: 754px;">
                                            <asp:TextBox ID="TextBox8" runat="server" TabIndex="8" Width="259px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                                        &nbsp;
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator" style="color: #FF3300">Add State.</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; height: 60px;" class="text-center" colspan="2"><strong>
                                            <asp:Button ID="Button2" runat="server" style="border:2px solid white;border-radius:10px;background-color:rgb(11, 13, 240, 0.54);font-weight: bold; color: #FFFFFF" Text="SAVE ADDRESS" Width="333px" OnClick="Button2_Click" />
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; height: 60px;" colspan="2">
                                            <asp:Label ID="Label2" runat="server" style="color: #FFFFFF" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                        <!--       --><!--       --><!--       --><!--       --><!--       --><!--       --><!--       --><!--       -->
                  
                         <div style="width:45% ; margin-left:20px" >
            
                             <table align="left" style="border-radius:25px;border-collapse: collapse; border:2px solid transparent; height: 201px;background-color:white;width:87%">
                                 <tr>
                                     <td class="text-center" colspan="2" style="color: #0000FF; height: 40px; font-family: Algerian;"><strong>PAYMENT</strong></td>
                                 </tr>
                                 <tr>
                                     <td class="text-end" style="width: 111px; height: 36px;"><strong>Card No. :</strong></td>
                                     <td style="width: 117px; height: 36px;">
                                     <asp:TextBox ID="TextBox9" runat="server" TabIndex="7" Width="204px" style="border:1px solid transparent;border-radius:10px; background-color: #CCCCCC;" CssClass="me-0"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td style="width: 111px; height: 51px;" class="text-end"><strong>Name On Card:</strong></td>
                                     <td style="width: 117px; height: 51px;">
                                     <asp:TextBox ID="TextBox10" runat="server" TabIndex="7" Width="204px" style="border:1px solid transparent;border-radius:10px; background-color: #CCCCCC;" CssClass="me-0"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td style="width: 111px; height: 49px;" class="text-end"><strong>&nbsp;&nbsp;Valid Till:</strong></td>
                                     <td style="width: 117px; height: 49px;">
                                     <asp:TextBox ID="TextBox11" runat="server" TabIndex="7" Width="113px" style="border:1px solid transparent;border-radius:10px; background-color: #CCCCCC;" CssClass="me-0"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="text-center" colspan="2" style="height: 37px"><strong>PAYMENT : 
                                         <asp:RadioButton ID="RadioButton1" runat="server" GroupName="P" Text="Online" style="color: #FF3300" />
                                         </strong>
&nbsp;
                                         <strong>
                                         <asp:RadioButton ID="RadioButton2" runat="server" GroupName="P" Text="Cash on Delivery" style="color: #0000FF; background-color: #FFFFFF" />
                                         </strong>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="text-center" colspan="2" style="height: 44px"><strong>
                                            <asp:Button ID="Fname" runat="server" style="border:2px solid white;border-radius:10px;background-color:rgb(11, 13, 240, 0.54);font-weight: bold; color: #FFFFFF; height: 29px;" Text="PAY" Width="86px" OnClick="Button3_Click" />
                                            </strong></td>
                                 </tr>
                                 <tr>
                                     <td class="text-center" colspan="2"><strong>
                                         <asp:Label ID="Label3" runat="server"></asp:Label>
                                         </strong></td>
                                 </tr>
                                 <tr>
                                     <td class="text-center" colspan="2">&nbsp;</td>
                                 </tr>
                             </table>
                                <div>
                                    <img src="Img/consolegif.gif" style="width: 499px" />
                               </div>
                         </div>
     
    </div>
    <!--       --><!--       --><!--       --><!--       --><!--       --><!--       --><!--       -->
    
</asp:Content>

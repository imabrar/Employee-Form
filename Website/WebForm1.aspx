<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Website.WebForm1" %>

<!DOCTYPE html>

<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 532px;
        }
        .style2
        {
        }
        .style4
        {
            width: 119px;
        }
        .style5
        {
            width: 196px;
        }
        .style6
        {
            width: 196px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" style="border: thin solid #008080">
            <tr>
                <td colspan="3" 
                    style="border-bottom: thin solid #008080; font-weight: 700; text-align: center;">
                    Employee Details Form</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    Employee Number :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtfname" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtfname" ErrorMessage="ID cannot be Blank" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Employee Name :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtlname" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtlname" ErrorMessage="Name cannot be Blank" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Salary :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtcity" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtcity" ErrorMessage="!Enter Salary between 8000 - 1300000" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Email :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtemail" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Department&nbsp; :</td>
                <td class="style4">
                    <asp:TextBox ID="txtdep" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtdep" ErrorMessage="Department cannot be blank" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btnregistration" runat="server" Text="Register" 
                        onclick="btnregistration_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;<asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
            
        </table>
    
    </div>
    </form>
</body>
</html>

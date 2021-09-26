<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="StudentManagementSystem.StudentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:white">
    <h4>This is customized module where student's details are maintained and stored for future. This information can be used  when required by administration.</h4>
    </div>
    
        <table style="height: 576px; width: 513px" align="center">
            <tr>
                <td><h5>Student FirstName</h5></td>
                <td>
                    <asp:TextBox ID="TextFname" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFname" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                    
            </tr>
            <tr>
                <td><h5>Student Last Name</h5></td>
                <td>
                    <asp:TextBox ID="TextLname" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextLname" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><h5>Student Father Name</h5></td>
                <td>
                    <asp:TextBox ID="TextFatherName" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextFatherName" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><h5>Father phone</h5></td>
                <td>
                    <asp:TextBox ID="TextFatherPhone" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextFatherPhone" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><h5>Email</h5></td>
                <td>
                    <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextEmail" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><h5>Phone</h5></td>
                <td>
                    <asp:TextBox ID="TextPhone" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextPhone" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><h5>Course Name</h5></td>
                <td>
                    <asp:DropDownList ID="DDLCourseName" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="Cname" DataValueField="Cname" OnSelectedIndexChanged="DDLCourseName_SelectedIndexChanged">
                        <asp:ListItem Value="0" Text="--Select Course--"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementConnectionString %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
                </td>
                <td></td>
            </tr>
            <tr>
                <td><h5>Course Fees</h5></td>
                <td>
                    <h5><asp:Label ID="LabelCourseFees" runat="server" Text=""></asp:Label></h5></td>
                <td></td>
            </tr>
            <tr>
                <td><h5>Installment</h5></td>
                <td>
                    <asp:TextBox ID="TextCourseInstallment" runat="server" AutoPostBack="true" OnTextChanged="TextCourseInstallment_TextChanged"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextCourseInstallment" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><h5>Fees Due</h5></td>
                <td>
                    <h5><asp:Label ID="LabelDueFees" runat="server" Text=""></asp:Label></h5></td>
                <td></td>
            </tr>
            <tr>
                <td><h5>JoinDate</h5></td>
                <td>
                    <h5><asp:Literal ID="LiteralJoindate" runat="server"></asp:Literal></h5></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButtonStudent" runat="server" Text="Insert Record" OnClick="ButtonStudent_Click" BackColor="#00FF99" BorderColor="Red" BorderStyle="Double" ForeColor="Black" Height="39px" Width="184px" /></td>
                <td>
                    <asp:Label ID="LabelMsg" runat="server" Text="" ForeColor="aquamarine"></asp:Label></td>
                <td></td>
            </tr>
        </table>
    
        
</asp:Content>

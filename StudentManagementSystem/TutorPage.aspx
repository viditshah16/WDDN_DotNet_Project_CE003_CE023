<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="TutorPage.aspx.cs" Inherits="StudentManagementSystem.TutorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:white">
    <h4>Provide details of teaching staff such as name and subject details.</h4>
        </div>
    
    
        <table style="width: 424px; height: 438px; margin-right: 10px" border="0">
            <tr>
                <td style="width: 199px; height: 52px"><h5>Tutor Name</h5></td>
                <td style="width: 215px; height: 52px">
                    <asp:TextBox ID="TextTutorname" runat="server" ForeColor="Black"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextTutorname" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 47px"><h5>Email</h5></td>
                <td style="height: 47px; width: 215px">
                    <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextEmail" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 47px"><h5>Phone</h5></td>
                <td style="width: 215px; height: 47px">
                    <asp:TextBox ID="TextPhone" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextPhone" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 50px; width: 199px"><h5>Course</h5></td>
                <td style="height: 50px; width: 215px">
                    <asp:DropDownList ID="DDLCourse" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="Cname" DataValueField="Cname">
                        
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementConnectionString2 %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
                </td>
                <td></td>
                    
            </tr>
            <tr>
                <td style="width: 199px; height: 51px"><h5>Qualification</h5></td>
                <td style="height: 51px; width: 215px" colspan="1">
                    <asp:TextBox ID="TextQualification" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextQualification" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 61px"><h5>JoinDate</h5></td>
                <td style="width: 215px; height: 61px">
                    <h5><asp:Literal ID="Literaljoindate" runat="server"></asp:Literal></h5></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 199px; height: 54px">
                    <asp:Button ID="ButtonTutor" runat="server" Text="Insert" OnClick="ButtonTutor_Click" Width="121px" BackColor="#00FF99" BorderColor="Red" BorderStyle="Double" Height="36px" /></td>
                <td style="height: 54px; width: 215px">
                    <asp:Label ID="LabelMsg" runat="server" Text="" ForeColor="greenyellow"></asp:Label></td>
            </tr>
        </table>
    
    
</asp:Content>

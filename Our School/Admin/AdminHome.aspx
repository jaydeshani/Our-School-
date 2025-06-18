<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Our_School.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
       
    <div style ="background-image : url('../Image/bg105.jpg'); width:100%; height :100vh; background-repeat : no-repeat; background-size:cover; background-attachment : fixed; ">
        <div class ="container p-md-4 p-sm-4">

            

            <div>
                <asp:Label ID="lblMsg" runat="server"> </asp:Label>

            </div>
              <h2 style="color:white" class ="text-center">Home</h2>
           </div>


    </div>

</asp:Content>

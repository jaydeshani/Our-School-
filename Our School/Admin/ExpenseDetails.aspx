<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="ExpenseDetails.aspx.cs" Inherits="Our_School.Admin.ExpenseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type ="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type ="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style ="background-image : url('../Image/gradient4.jpg'); width:100%; height : 100vh; background-repeat : no-repeat; background-size:cover; background-attachment : fixed; ">
        <div class ="container p-md-4 p-sm-10"> 
           
            <h3 class ="text-center">Expense Details</h3>       
           <div class = "row mb-3 mr-lg-5 ml-lg-5">
                <div class ="col-md-10 ">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText  ="No Record to display!" 
                        AutoGenerateColumns="False">
                       
                       
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ClassName" HeaderText="Class">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SubjectName" HeaderText="Subject">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ChargeAmount" HeaderText="Charge Amt(Per Lecture)">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                        </Columns>
                        <HeaderStyle BackColor="#6C757D" ForeColor="White"/>
                    </asp:GridView>
                 </div>
                </div>
        </div>
    </div>


</asp:Content>

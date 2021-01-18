<%@ Page Language="C#" MasterpageFile="~/ExSite2.Master" AutoEventWireup="true" CodeBehind="MasterConEx2.aspx.cs" Inherits="MyFirstAspPrj.MasterConEx" %>

<asp:Content ID="ContentHead" runat="server" ContentPlaceHolderID="head"></asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ChildContent">
    <div id="d1" Style="width:600px;height:500px;padding-left:200px;float:left">
        <h1>Send Us an Email</h1><br />
        <h4>
            help & Support
        </h4>
        <div>
            <label>Email Id</label>
         </div>
        <div>
            <input type="text" id="TxtEmailid" />
        </div>
        <div style="margin-top:30px">
            <label>Mobile no</label>
        </div>
        <div>
            <input type="text" id="TxtMobileno" />
        </div>
        <div style="margin-top:30px">
            <label>Subject</label>
        </div>
        <div>
            <input type="text"id="TxtSubject" />
        </div>
        <div style="margin-top:40px">
            <label>Description</label>
        </div>
        <div>
            <input type="text"id="TxtDEscription"/>

        </div>
        <div style="margin-top:30px">
            <asp:Button ID="CmdFeedback" runat="server" Text="SendFeedback" />
        </div>
    </div>
     <div id="d2" Style="width:500px;height:500px;padding-top:50px;float:right">
            <div>
                <label style="font-size:30px;color:#bbfa1e">Call Us</label><br />
                <label>
                    Customer Care +91- 9818011567<br />
                    Timing: 9 AM to 6 PM - Mon to Sat<br />
                    <br />
                    Marketing Alliances - marketing@dogspot.in
                </label>
            </div>
         <div>
             <label style="font-size:30px;color:#bbfa1e">Mail Us</label><br />
             <label>
                 Om Sai Complex, First Floor,<br />
                 Plot No. 37/19/22,<br />
                 Behind IGL CNG Petrol Pump,<br />
                 Kapashera, New Delhi-110037
             </label>
         </div>
         <label style="font-size:30px;color:#bbfa1e">Please Note</label><br />
         <label>
             DogSpot.in is an open platform for information sharing and is not involved in<br />
             sale or purchase of puppies and dogs. The users can interact with each other<br />
             directly for adoption, sale or purchase of Puppies and Dogs. DogSpot.in does<br />
             not undertake any responsibility for Transactions made based on information<br />
             posted on the website.
         </label>
    </div>
 </asp:Content>

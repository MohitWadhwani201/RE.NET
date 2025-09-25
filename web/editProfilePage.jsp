
<%@page import="controler.DeleteProfile"%>
<%@page import="controler.UpdateChecker"%>
<%@page import="model.ProfileViewer"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
	<title>Edit Profile</title>
    <link rel="icon" href="images/fav.png" type="image/png" sizes="16x16"> 
    
    <link rel="stylesheet" href="css/main.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/color.css">
    <link rel="stylesheet" href="css/responsive.css">

</head>
<body>
<%
    String userId=(String)session.getAttribute("userId");
    if(userId==null ||userId.trim().equals(""))
    {
        response.sendRedirect("login.html");
    }
    ProfileViewer p=new ProfileViewer(userId);
    String username=p.username;
    int age=p.age;
    String DOB = p.dateOfBirth;
    String email=p.email;
    String city=p.city;
    String state=p.state;
    String interest=p.interest;
    long contact=p.contact;
    String aboutMe=p.aboutMe;
    String gender=p.Gender;
%>
<div class="theme-layout">
	
	<div class="responsive-header">
		<div class="mh-head first Sticky">
			<span class="mh-btns-left">
				<a class="" href="#menu"><i class="fa fa-align-justify"></i></a>
			</span>
			<span class="mh-text">
				<a href="Index-2.html" title=""><img src="images/fav.png" alt="">RE.Net</a>
			</span>
			<span class="mh-btns-right">
				<a class="fa fa-sliders" href="#shoppingbag"></a>
			</span>
		</div>
		<div class="mh-head second">
			<form class="mh-form">
				<input placeholder="search" />
				<a href="#/" class="fa fa-search"></a>
			</form>
		</div>
		<nav id="menu" class="res-menu">
			<ul>
				<li><span>Home</span>
					<ul>
						<li><a href="index-2.html" title="">Home Social</a></li>
						<li><a href="index2.html" title="">Home Social 2</a></li>
						<li><a href="index-company.html" title="">Home Company</a></li>
						<li><a href="landing.html" title="">Login page</a></li>
						<li><a href="logout.html" title="">Logout Page</a></li>
						<li><a href="newsfeed.html" title="">news feed</a></li>
					</ul>
				</li>
				<li><span>Time Line</span>
					<ul>
						<li><a href="time-line.html" title="">timeline</a></li>
						<li><a href="timeline-friends.html" title="">timeline friends</a></li>
						<li><a href="timeline-groups.html" title="">timeline groups</a></li>
						<li><a href="timeline-pages.html" title="">timeline pages</a></li>
						<li><a href="timeline-photos.html" title="">timeline photos</a></li>
						<li><a href="timeline-videos.html" title="">timeline videos</a></li>
						<li><a href="fav-page.html" title="">favourit page</a></li>
						<li><a href="groups.html" title="">groups page</a></li>
						<li><a href="page-likers.html" title="">Likes page</a></li>
						<li><a href="people-nearby.html" title="">people nearby</a></li>
						
						
					</ul>
				</li>
				<li><span>Account Setting</span>
					<ul>
						<li><a href="create-fav-page.html" title="">create fav page</a></li>
						<li><a href="edit-account-setting.html" title="">edit account setting</a></li>
						<li><a href="edit-interest.html" title="">edit-interest</a></li>
						<li><a href="edit-password.html" title="">edit-password</a></li>
						<li><a href="edit-profile-basic.html" title="">edit profile basics</a></li>
						<li><a href="edit-work-eductation.html" title="">edit work educations</a></li>
						<li><a href="messages.html" title="">message box</a></li>
						<li><a href="inbox.html" title="">Inbox</a></li>
						<li><a href="notifications.html" title="">notifications page</a></li>
					</ul>
				</li>
				<li><span>forum</span>
					<ul>
						<li><a href="forum.html" title="">Forum Page</a></li>
						<li><a href="forums-category.html" title="">Fourm Category</a></li>
						<li><a href="forum-open-topic.html" title="">Forum Open Topic</a></li>
						<li><a href="forum-create-topic.html" title="">Forum Create Topic</a></li>
					</ul>
				</li>
				<li><span>Our Shop</span>
					<ul>
						<li><a href="shop.html" title="">Shop Products</a></li>
						<li><a href="shop-masonry.html" title="">Shop Masonry Products</a></li>
						<li><a href="shop-single.html" title="">Shop Detail Page</a></li>
						<li><a href="shop-cart.html" title="">Shop Product Cart</a></li>
						<li><a href="shop-checkout.html" title="">Product Checkout</a></li>
					</ul>
				</li>
				<li><span>Our Blog</span>
					<ul>
						<li><a href="blog-grid-wo-sidebar.html" title="">Our Blog</a></li>
						<li><a href="blog-grid-right-sidebar.html" title="">Blog with R-Sidebar</a></li>
						<li><a href="blog-grid-left-sidebar.html" title="">Blog with L-Sidebar</a></li>
						<li><a href="blog-masonry.html" title="">Blog Masonry Style</a></li>
						<li><a href="blog-list-wo-sidebar.html" title="">Blog List Style</a></li>
						<li><a href="blog-list-right-sidebar.html" title="">Blog List with R-Sidebar</a></li>
						<li><a href="blog-list-left-sidebar.html" title="">Blog List with L-Sidebar</a></li>
						<li><a href="blog-detail.html" title="">Blog Post Detail</a></li>
					</ul>
				</li>
				<li><span>Portfolio</span>
					<ul>
						<li><a href="portfolio-2colm.html" title="">Portfolio 2col</a></li>
						<li><a href="portfolio-3colm.html" title="">Portfolio 3col</a></li>
						<li><a href="portfolio-4colm.html" title="">Portfolio 4col</a></li>
					</ul>
				</li>
				<li><span>Support & Help</span>
					<ul>
						<li><a href="support-and-help.html" title="">Support & Help</a></li>
						<li><a href="support-and-help-detail.html" title="">Support & Help Detail</a></li>
						<li><a href="support-and-help-search-result.html" title="">Support & Help Search Result</a></li>
					</ul>
				</li>
				<li><span>More pages</span>
					<ul>
						<li><a href="careers.html" title="">Careers</a></li>
						<li><a href="career-detail.html" title="">Career Detail</a></li>
						<li><a href="404.html" title="">404 error page</a></li>
						<li><a href="404-2.html" title="">404 Style2</a></li>
						<li><a href="faq.html" title="">faq's page</a></li>
						<li><a href="insights.html" title="">insights</a></li>
						<li><a href="knowledge-base.html" title="">knowledge base</a></li>
					</ul>
				</li>
				<li><a href="about.html" title="">about</a></li>
				<li><a href="about-company.html" title="">About Us2</a></li>
				<li><a href="contact.html" title="">contact</a></li>
				<li><a href="contact-branches.html" title="">Contact Us2</a></li>
				<li><a href="widgets.html" title="">Widgts</a></li>
			</ul>
		</nav>
		<nav id="shoppingbag">
			<div>
				<div class="">
					<form method="post">
						<div class="setting-row">
							<span>use night mode</span>
							<input type="checkbox" id="nightmode"/> 
							<label for="nightmode" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Notifications</span>
							<input type="checkbox" id="switch2"/> 
							<label for="switch2" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Notification sound</span>
							<input type="checkbox" id="switch3"/> 
							<label for="switch3" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>My profile</span>
							<input type="checkbox" id="switch4"/> 
							<label for="switch4" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Show profile</span>
							<input type="checkbox" id="switch5"/> 
							<label for="switch5" data-on-label="ON" data-off-label="OFF"></label>
						</div>
					</form>
					<h4 class="panel-title">Account Setting</h4>
					<form method="post">
						<div class="setting-row">
							<span>Sub users</span>
							<input type="checkbox" id="switch6" /> 
							<label for="switch6" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>personal account</span>
							<input type="checkbox" id="switch7" /> 
							<label for="switch7" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Business account</span>
							<input type="checkbox" id="switch8" /> 
							<label for="switch8" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Show me online</span>
							<input type="checkbox" id="switch9" /> 
							<label for="switch9" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Delete history</span>
							<input type="checkbox" id="switch10" /> 
							<label for="switch10" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Expose author name</span>
							<input type="checkbox" id="switch11" /> 
							<label for="switch11" data-on-label="ON" data-off-label="OFF"></label>
						</div>
					</form>
				</div>
			</div>
		</nav>
	</div><!-- responsive header -->
	
	<div class="topbar stick">
		<div class="logo">
			<a title="" href="index-2.html"><img src="images/fav.png" alt="">&nbsp;RE.Net</a>
		</div>
		
		<div class="top-area">
			<ul class="main-menu">
				<li>
					<a href="#" title="">Home</a>
					<ul>
						<li><a href="index-2.html" title="">Home Social</a></li>
						
						<li><a href="newsfeed.html" title="">news feed</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" title="">account settings</a>
					<ul>
						
						<li><a href="edit-password.html" title="">edit-password</a></li>
						<li><a href="edit-profile-basic.html" title="">edit profile basics</a></li>
						
					</ul>
				</li>
				<a href="time-line.html"><b>View Profile</b></a>
				
			</ul>
			
			<div class="user-img">
				<img src="images/resources/admin.jpg" alt="">
				
			</div>
			
		</div>
	</div><!-- topbar -->
	
	<section>
		<div class="feature-photo">
			<figure><img src="images/resources/timeline-1.jpg" alt=""></figure>
			<div class="add-btn">
				<span>1205 followers</span>
				<a href="#" title="" data-ripple="">Add Friend</a>
			</div>
			<form class="edit-phto">
				<i class="fa fa-camera-retro"></i>
				<label class="fileContainer">
					Edit Cover Photo
				<input type="file"/>
				</label>
			</form>
			<div class="container-fluid">
				<div class="row merged">
					<div class="col-lg-2 col-sm-3">
						<div class="user-avatar">
							<figure>
								<img src="images/resources/user-avatar.jpg" alt="">
								<form class="edit-phto">
									<i class="fa fa-camera-retro"></i>
									<label class="fileContainer">
										Edit Display Photo
										<input type="file"/>
									</label>
								</form>
							</figure>
						</div>
					</div>
					<div class="col-lg-10 col-sm-9">
						<div class="timeline-info">
							<ul>
								<li class="admin-name">
								  <h5>Janice Griffith</h5>
								  <span>Group Admin</span>
								</li>
								<li>
									
									<a class="" href="timeline-photos.html" title="" data-ripple="">Photos</a>
									
									<a class="" href="timeline-friends.html" title="" data-ripple="">Friends</a>
									
									<a class="" href="profile.jsp" title="" data-ripple="">about</a>
									<a class="active" href="#" title="" data-ripple="">more</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!-- top area -->

	<section>
		<div class="gap gray-bg">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="row" id="page-contents">
							<div class="col-lg-3">
								<aside class="sidebar static">
									<div class="widget stick-widget">
										<h4 class="widget-title">Edit info</h4>
										<ul class="naves">
											<li>
												<i class="ti-info-alt"></i>
												<a href="editProfilePage.jsp" title="">Basic info</a>
											</li>
											
											
											
											<li>
												<i class="ti-lock"></i>
												<a href="edit-password.html" title="">change password</a>
											</li>
										</ul>
									</div><!-- settings widget -->										
								</aside>
							</div><!-- sidebar -->
							<div class="col-lg-6">
								<div class="central-meta">
									<div class="editing-info">
										<h5 class="f-title"><i class="ti-info-alt"></i> Edit Basic Information!</h5>
                                                                                <br>
                                                                                <h5> UserId: <%=userId%></h5>
										<form action="UpdateChecker" method="post">
											<div class="form-group half">	
											  <input type="text" id="input" name="Name" value="<%=username%>"/>
                                                                                          <label class="control-label" for="input">Name</label><i class="mtrl-select"></i>
											</div>
											
											<div class="form-group">	
											  <input type="text"  name="email" value="<%=email%>"/>
											  <label class="control-label" for="input"><a  class="__cf_email__" >email</a></label><i class="mtrl-select"></i>
											</div>
											<div class="form-group">	
											  <input type="text"  name="contact" value="<%=contact%>"/>
											  <label class="control-label" for="input">Contact</label><i class="mtrl-select"></i>
											</div>
                                                                                        <div class="form-group">	
											  <input type="text"  name="age" value="<%=age%>"/>
											  <label class="control-label" for="input">Age</label><i class="mtrl-select"></i>
											</div>
											<div class="dob">
                                                                                            <h5>Date Of Birth</h5>
												<div class="form-group">
													<select name="day" value="<%=DOB.substring(0,2)%>" >
                                                                                                            <option ><%=DOB.substring(0,2)%></option>
														  <option>01</option>
														  <option>02</option>
														  <option>03</option>
														  <option>04</option>
														  <option>05</option>
														  <option>06</option>
														  <option>07</option>
														  <option>08</option>
														  <option>09</option>
														  <option>10</option>
														  <option>11</option>
														  <option>12</option>
														  <option>13</option>
														  <option>14</option>
														  <option>15</option>
														  <option>16</option>
														  <option>17</option>
														  <option>18</option>
														  <option>19</option>
														  <option>20</option>
														  <option>21</option>
														  <option>22</option>
														  <option>23</option>
														  <option>24</option>
														  <option>25</option>
														  <option>26</option>
														  <option>27</option>
														  <option>28</option>
														  <option>29</option>
														  <option>30</option>
														  <option>31</option>
													</select>
												</div>
												<div class="form-group">
													<select name="month" value ="<%=DOB.substring(3,6)%>">
														<option ><%=DOB.substring(3,6)%></option>
														  <option>Jan</option>
														  <option>Feb</option>
														  <option>Mar</option>
														  <option>Apr</option>
														  <option>May</option>
														  <option>Jun</option>
														  <option>Jul</option>
														  <option>Aug</option>
														  <option>Sep</option>
														  <option>Oct</option>
														  <option>Nov</option>
														  <option>Dec</option>
													</select>
												</div>
												<div class="form-group">
													<select name="year" value="<%=DOB.substring(7)%>">
													  <option ><%=DOB.substring(7)%></option>
													  <option>2000</option>
													  <option>2001</option>
													  <option>2002</option>
													  <option>2004</option>
													  <option>2005</option>
													  <option>2006</option>
													  <option>2007</option>
													  <option>2008</option>
													  <option>2009</option>
													  <option>2010</option>
													  <option>2011</option>
													  <option>2012</option>
													</select>
												</div>
											</div>
                                                                                        <div class="form-group">
													<select name="Gender" value="<%=gender%>">
                                                                                                            <option><%=gender%></option>
													  <option >Male</option>
													  <option>Female</option>
													
													</select>
											</div>
											
											<div class="form-group">	
											  <input type="text"  name="city" value="<%=city%>"/>
											  <label class="control-label" for="input">City</label><i class="mtrl-select"></i>
											</div>
											<div class="form-group">	
                                                                                            <h6>State</h6>
											  <select name="state" value="<%=state%>">
												<option><%=state%></option>
												    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                                                                    <option value="Assam">Assam</option>
                                                                                                    <option value="Bihar">Bihar</option>
                                                                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                                                                    <option value="Goa">Goa</option>
                                                                                                    <option value="Gujarat">Gujarat</option>
                                                                                                    <option value="Haryana">Haryana</option>
                                                                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                                                                    <option value="Jharkhand">Jharkhand</option>
                                                                                                    <option value="Karnataka">Karnataka</option>
                                                                                                    <option value="Kerala">Kerala</option>
                                                                                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                                                                    <option value="Maharashtra">Maharashtra</option>
                                                                                                    <option value="Manipur">Manipur</option>
                                                                                                    <option value="Meghalaya">Meghalaya</option>
                                                                                                    <option value="Mizoram">Mizoram</option>
                                                                                                    <option value="Nagaland">Nagaland</option>
                                                                                                    <option value="Odisha">Odisha</option>
                                                                                                    <option value="Punjab">Punjab</option>
                                                                                                    <option value="Rajasthan">Rajasthan</option>
                                                                                                    <option value="Sikkim">Sikkim</option>
                                                                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                                                                    <option value="Telangana">Telangana</option>
                                                                                                    <option value="Tripura">Tripura</option>
                                                                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                                                                    <option value="Uttarakhand">Uttarakhand</option>
                                                                                                    <option value="West Bengal">West Bengal</option>
											  </select>
											</div>
											<div class="form-group">	
											  <label class="control-label" for="textarea"></label>About Me<i class="mtrl-select"></i>
                                                                                          <textarea rows="4" id="textarea" name="aboutMe" value="<%=aboutMe%>"><%=aboutMe%></textarea>
											</div>
											<div class="submit-btns">
												<button type="reset" class="mtr-btn"><span>Cancel</span></button>
												<button type="submit" class="mtr-btn"><span>Update</span></button>
                                                                                                
											</div>
                                                                                        

                                                                                        <div><%=UpdateChecker.updateChecker%>
                                                                                         
                                                                                        </div>
                                                                                        <div>
                                                                                            <%=DeleteProfile.message%>
                                                                                        </div>
										</form>
                                                                                <br/>
                                                                                        <br/>
                                                                                        <a href="#" id="deleteAccount">Delete Account</a>

                                                                                        <div class="popup-overlay" id="popup">
                                                                                            <div class="popup">
                                                                                                <h2>Do you really want to delete this account?</h2>
                                                                                                <div class="popup-buttons">
                                                                                                    <a href="#" class="yes">Yes</a>
                                                                                                    <a href="#" class="no">No</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="popup-overlay" id="passwordPopup">
                                                                                            <div class="popup password-popup">
                                                                                                <h2>Please enter your password</h2>
                                                                                                <form id="passwordForm" action="DeleteProfile" method="post">
                                                                                                    <input type="text" name="userId" value="<%=userId%>">
                                                                                                    <br>
                                                                                                    <input type="password" name="passwordInput" placeholder="Password" required>
                                                                                                    <input type="submit" value="Submit">
                                                                                                </form>
                                                                                            </div>
                                                                                        </div>
									</div>
								</div>	
							</div><!-- centerl meta -->
							<div class="col-lg-3">
								<aside class="sidebar static">
									<div class="widget">
											
										</div>
									
								</aside>
							</div><!-- sidebar -->
						</div>	
					</div>
				</div>
			</div>
		</div>	
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="widget">
						<div class="foot-logo">
							<div class="logo">
								<a href="index-2.html" title=""><img src="images/logo.png" alt=""></a>
							</div>	
							<p>
								The trio took this simple idea and built it into the world?s leading carpooling platform.
							</p>
						</div>
						
					</div>
				</div>
				
				
				
				
			</div>
		</div>
	</footer><!-- footer -->
	
</div>
	<div class="side-panel">
			<h4 class="panel-title">General Setting</h4>
			<form method="post">
				<div class="setting-row">
					<span>use night mode</span>
					<input type="checkbox" id="nightmode1"/> 
					<label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Notifications</span>
					<input type="checkbox" id="switch22" /> 
					<label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Notification sound</span>
					<input type="checkbox" id="switch33" /> 
					<label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>My profile</span>
					<input type="checkbox" id="switch44" /> 
					<label for="switch44" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Show profile</span>
					<input type="checkbox" id="switch55" /> 
					<label for="switch55" data-on-label="ON" data-off-label="OFF"></label>
				</div>
			</form>
			<h4 class="panel-title">Account Setting</h4>
			<form method="post">
				<div class="setting-row">
					<span>Sub users</span>
					<input type="checkbox" id="switch66" /> 
					<label for="switch66" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>personal account</span>
					<input type="checkbox" id="switch77" /> 
					<label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Business account</span>
					<input type="checkbox" id="switch88" /> 
					<label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Show me online</span>
					<input type="checkbox" id="switch99" /> 
					<label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Delete history</span>
					<input type="checkbox" id="switch101" /> 
					<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Expose author name</span>
					<input type="checkbox" id="switch111" /> 
					<label for="switch111" data-on-label="ON" data-off-label="OFF"></label>
				</div>
			</form>
		</div><!-- side panel -->		
	<script src="javascript.js"></script>
	

</body>	

</html>
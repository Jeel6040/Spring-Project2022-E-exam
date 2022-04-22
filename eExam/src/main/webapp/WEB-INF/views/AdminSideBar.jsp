  <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admindashboard">
                <div class="sidebar-brand-icon rotate-n-15">
                    
                </div>
                <i class="fas fa-laugh-wink"></i>
                <div class="sidebar-brand-text mx-3">Admin</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#course_collapse" aria-expanded="false" aria-controls="course_collapse">
                    <i class="fas fa-book-open"></i>
                    <span>Course</span>
                </a>
                <div id="course_collapse" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar" style="">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="listcourse">Course List</a>
                        <a class="collapse-item" href="newcourse">New Course</a>
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#users_collapse" aria-expanded="false" aria-controls="users_collapse">
                    <i class="fas fa-address-book"></i>
                    <span>Users</span>
                </a>
                <div id="users_collapse" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar" style="">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="listusers">List Users</a>
                        <a class="collapse-item" href="newuser">New User</a>
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#exam_collapse" aria-expanded="false" aria-controls="exam_collapse">
                    <i class="fas fa-edit"></i>
                    <span>Exam</span>
                </a>
                <div id="exam_collapse" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar" style="">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="listexams">List Exams</a>
                        <a class="collapse-item" href="newexam">New Exam</a>
                        
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#question_collapse" aria-expanded="false" aria-controls="question_collapse">
                    <i class="fas fa-edit"></i>
                    <span>Questions</span>
                </a>
                <div id="question_collapse" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar" style="">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="listquestions">List Questions</a>
                        <a class="collapse-item" href="newquestion">Add Question</a>
                        
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="users" data-toggle="collapse" data-target="#role_collapse" aria-expanded="false" aria-controls="role_collapse">
                    <i class="fas fa-users-cog"></i>
                    <span>Roles</span></a>
                   
                <div id="role_collapse" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar" style="">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="listroles">List Roles</a>
                        <a class="collapse-item" href="newrole">New Role</a>
                        
                    </div>
                </div>
            </li>
            
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->
page 50500 "Admin Role Center"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(rolecenter)
        {
            group("Group")
            {

                caption = 'Headlines';
                // Headlines Section
                part(Headline; "headlines")
                {
                    ApplicationArea = Basic, Suite;
                }
                part(SystemAdminCue; "System Admin cue Cardprt")
                {
                    ApplicationArea = Basic, Suite;

                }
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group("Group1")
            {
                Caption = 'Student Details';
                action("Manage Students")
                {
                    ApplicationArea = All;
                    Caption = 'Students';
                    Image = Administration;
                    RunObject = page "Student List";
                }



            }
            group("Group2")
            {
                Caption = 'Course Information';
                action("Courses")
                {
                    ApplicationArea = All;
                    Caption = 'Courses';
                    RunObject = page "Course List";
                }
                action("Course Enrollment")
                {
                    Caption = 'Course Enrollment';
                    ApplicationArea = All;
                    RunObject = page "Enroll Course List";
                }

            }
            group(group3)
            {
                Caption = 'Student qualifications';
                action("Results")
                {
                    ApplicationArea = All;
                    RunObject = page "Student result List";

                }

            }
            group("group4")
            {
                Caption = 'Reports';
                action("Generate Reports")
                {
                    ApplicationArea = All;
                    Caption = 'Student Results';
                    Image = Report;
                    RunObject = report Results;
                }
                action("Students Registered")
                {
                    ApplicationArea = All;
                    Caption = 'Students Registerd';
                    Image = Report;
                    RunObject = report "Student Registered";
                }
                action("Courses Register")
                {
                    ApplicationArea = All;
                    Caption = 'Courses Registerd';
                    Image = Report;
                    RunObject = report "Courses Registered";
                }

            }

        }
    }
}
profile "Admin Rolecenter"
{
    Caption = 'Admin Rolecenter';
    RoleCenter = "Admin Role Center";
}

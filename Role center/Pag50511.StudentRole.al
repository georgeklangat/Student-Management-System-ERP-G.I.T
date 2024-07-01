page 50511 "Student Role"
{
    Caption = 'Student Role';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Group)
            {
                caption = 'Headlines';
                // Headlines Section
                part(Headline; "headlines")
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
                Caption = 'My Details';
                action("View/Edit My Details")
                {
                    ApplicationArea = All;
                    Caption = 'View/Edit My Details';
                    Image = Edit;
                    RunObject = page "Student card";

                }
            }
            group("Group2")
            {
                Caption = 'My Course';
                action("View My Courses")
                {
                    ApplicationArea = All;
                    Caption = 'View My Courses';
                    RunObject = page "Course card";
                }
                action("Units")
                {
                    ApplicationArea = all;
                    RunObject = page "Units list";
                }
            }
            group("Group3")
            {
                Caption = 'Results Slipt';
                action("View Results")
                {
                    ApplicationArea = All;
                    Caption = 'View Results';
                    RunObject = report Results;

                }
            }
        }
    }
}
profile "Student RoleCenter"
{
    Caption = 'Student RoleCenter';
    RoleCenter = "Student Role";
}

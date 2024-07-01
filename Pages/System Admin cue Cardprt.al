page 50620 "System Admin cue Cardprt"
{
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = "System Admin Cues";
    RefreshOnActivate = true;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            cuegroup(Group1)
            {
                Caption = 'Users Information';

                field("No Of Users Logged On"; Rec."No Of Users Logged On")
                {
                    ToolTip = 'Specifies the number of users logged on';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Concurrent Session List";
                }

            }

            cuegroup(Group2)
            {
                caption = 'Registered Students';


                field("Registered Students"; Rec."Students Registered")
                {
                    ApplicationArea = All;
                    ToolTip = 'Displays the total number of registered students.';
                    DrillDownPageId = "Student List";
                }
            }
            cuegroup(Group3)
            {
                Caption = 'No. Of Courses';
                field("Registered Courses"; Rec."No Courses Registered")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Course List";

                }

            }

            cuegroup(group4)
            {
                Caption = 'Students Enrolled';
                field("No. Students Enrolled"; Rec."No. Of Enrolled Students")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Enroll Course List";



                }
            }

        }
    }



    trigger OnOpenPage()
    var
        SystemAdminCueRec: Record "System Admin Cues";
    begin
        // Check if the record already exists
        if SystemAdminCueRec.Get('PRIMARY KEY') then begin
            SystemAdminCueRec."Total No Of Minutes This Month" := SystemAdminCueRec.GetLoggedOnMinuteThisMonth();
            SystemAdminCueRec."Students Registered" := GetRegisteredStudentCount();
            SystemAdminCueRec.Modify();
        end else begin
            SystemAdminCueRec.Init();
            SystemAdminCueRec."Primary Key" := 'PRIMARY KEY'; // Generate or assign a unique value here
            SystemAdminCueRec."Total No Of Minutes This Month" := SystemAdminCueRec.GetLoggedOnMinuteThisMonth();
            SystemAdminCueRec."Students Registered" := GetRegisteredStudentCount();
            SystemAdminCueRec.Insert();
        end;
    end;

    trigger OnAfterGetCurrRecord()
    begin
        Rec."Total No Of Minutes This Month" := Rec.GetLoggedOnMinuteThisMonth();
    end;


    // Procedure to Calculate the Number of the Registered Students
    local procedure GetRegisteredStudentCount(): Integer
    var
        StudentRec: Record Student;
    begin
        StudentRec.Reset();
        exit(StudentRec.Count());
    end;

    local procedure GetRegisteredCoursesCount(): Integer
    var
        CourseRec: Record Courses;
    begin
        CourseRec.Reset();
        exit(CourseRec.Count());
    end;


    local procedure GetStudentsEnrolledCount(): Integer
    var
        EnrollRec: Record "Enroll Course";
    begin
        EnrollRec.Reset();
        exit(EnrollRec.Count());
    end;
}

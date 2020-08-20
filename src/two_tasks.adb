with Ada.Real_Time;
use Ada.Real_Time;


package body Two_Tasks is

    task body A is
        Next_Period : Ada.Real_Time.Time;
        Period : constant Ada.Real_Time.Time_Span := Ada.Real_Time.Milliseconds(500);
    begin
        
        Next_Period := Ada.Real_Time.Clock + Period;

        loop
            delay until Next_Period;
            Next_Period := Next_Period + Period;
        end loop;
    end A;

    task body B is
        Next_Period : Ada.Real_Time.Time;
        Period : constant Ada.Real_Time.Time_Span := Ada.Real_Time.Milliseconds (5000);
    begin
        
        Next_Period := Ada.Real_Time.Clock + Period;

        loop
            delay until Next_Period;
            Next_Period := Next_Period + Period;
        end loop;
    end B;

end Two_Tasks;

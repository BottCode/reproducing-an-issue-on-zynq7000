pragma Profile (Ravenscar);

with Two_Tasks;
pragma Unreferenced (Two_Tasks);

with Ada.Real_Time;

procedure Main is
 use Ada.Real_Time;
 Next_Period : Ada.Real_Time.Time;
 Period : constant Ada.Real_Time.Time_Span := Ada.Real_Time.Milliseconds(2_000);
begin 

  Next_Period := Ada.Real_Time.Clock + Period;
  loop
    delay until Next_Period;
    Next_Period := Next_Period + Period;
  end loop;
end Main;

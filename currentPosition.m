function y = currentPosition()
y = str2double(get(handles.designerstatic_A,'String'));
end



function y = Lift_Update(y,z, hObject, eventdata,handles)
    %Determine if the lift is up or down:
    if y > z %This does y = y - 1 logic, The lift was up, it's coming down
        while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
          set(handles.SliderA,'value',y)
        end
    end
    elseif y < z
        while y<z %This does y = y+1 logic, The lift was down, it's coming up
           y = y+1;
           disp(y:z)
           set(handles.designerstatic_A,'string',y)
           set(handles.SliderA,'value',y)
        end
    end
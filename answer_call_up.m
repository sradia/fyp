function y = answer_call_up(z)
y = str2double(get(handles.designerstatic_A,'String'));
    if y==abs(z)
        handle = msgbox('I am at Level 9');
        pause(2)
        if ishandle(handle)
            delete(handle);
        end
    clear handle;
    %disp(' I Am at level 9!')
elseif y<abs(z)
    %disp('Am coming up!')
    handle = msgbox('Coming Up');
    pause(2)
    if ishandle(handle)
        delete(handle);
    end
    clear handle;
    
    %pause(3);
  %y=str2double(get(handles.designerstatic_A,'string'))
  while y<abs(z)
      y=y+1;
      pause(3)
      disp(y:abs(z))
      set(handles.designerstatic_A,'string',y)
      set(handles.SliderA,'value',y)
  end
  handle = msgbox('Reached');
  pause(2)
  if ishandle(handle)
      delete(handle);
  end
  clear handle;
 %set(handles.designerstatic_A,'string',9)
 %set(handles.SliderA,'value',9)
else
   disp('coming Down')
      while y>abs(z)
          y=y-1;
          pause(3)
          disp(abs(z):y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end
end
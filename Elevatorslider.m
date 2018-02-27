function varargout = Elevatorslider(varargin)


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Elevatorslider_OpeningFcn, ...
                   'gui_OutputFcn',  @Elevatorslider_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Elevatorslider is made visible.
function Elevatorslider_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Elevatorslider (see VARARGIN)

% Choose default command line output for Elevatorslider
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Elevatorslider wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Elevatorslider_OutputFcn(hObject, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on slider movement.
function SliderA_Callback(hObject, eventdata, handles)
% hObject    handle to SliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes during object creation, after setting all properties.
function SliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function displaytext_Callback(hObject, eventdata, handles)
% hObject    handle to displaytext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of displaytext as text
%        str2double(get(hObject,'String')) returns contents of displaytext as a double

s = str2double(get(hObject,'String'));
set(handles.SliderA,'value',s);

% --- Executes during object creation, after setting all properties.
function displaytext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to displaytext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in UP9.
function UP9_Callback(hObject, eventdata, handles)
% hObject    handle to UP9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=9;
DoNothing = At_Current_Position(y,z); %1 means at current position, 0 means not
if DoNothing == 0
    Lift_Update(y,z,hObject,eventdata,handles);
 end


% --- Executes on button press in UP8.
function UP8_Callback(hObject, eventdata, handles)
% hObject    handle to UP8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=8
if y==z
 disp(' I Am at level 8!')
 
elseif y<z
 disp('Am coming Up!')
 while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end
 
else
   disp('Wait I am coming down!')
      while y>z
          y=y-1;
          pause(3)
          disp(y:z)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  
 
end  

% --- Executes on button press in UP7.
function UP7_Callback(hObject, eventdata, handles)
% hObject    handle to UP7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=7;
if y==z
 disp(' I Am at level 7!')
 elseif y<z
 disp('Am coming Up!')
 while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end
else
   disp('Wait I am coming down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  

 end  


% --- Executes on button press in UP6.
function UP6_Callback(hObject, eventdata, handles)
% hObject    handle to UP6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=6;
%y=elevator(z);
%y = str2double(get(handles.designerstatic_A,'String'));
if y==z
 disp(' I Am at level !','string',z)
 
elseif y<z
 disp('Am coming up!')
 %y=str2double(get(handles.designerstatic_A,'string'))
 
 while y<z
     y=y+1;
        pause(3)
     disp(y:z)
          set(handles.designerstatic_A,'string',y)
       set(handles.SliderA,'value',y)
           %y=y+1;
          
continue
        
   
end
 %disp(y:z)
elseif y>z
    disp('Wait I am coming down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_B,'string',y)
        set(handles.sliderB,'value',y)
      end  
end
 %set(handles.designerstatic_A,'string',6)
%set(handles.SliderA,'value',6)



% --- Executes on button press in UP5.
function UP5_Callback(hObject, eventdata, handles)
% hObject    handle to UP5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=5;
if y==z
 disp(' I Am at level 5!')
 
elseif y<z
 disp('Am coming up!')

  while y<z
     y=y+1;
        pause(3)
     disp(y:z)
          set(handles.designerstatic_A,'string',y)
       set(handles.SliderA,'value',y)
           %y=y+1;
          
continue
  end  
% set(handles.designerstatic_A,'string',5)
 %set(handles.SliderA,'value',5)
else
  disp('Wait I am coming down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  

 end  


% --- Executes on button press in UP4.
function UP4_Callback(hObject, eventdata, handles)
% hObject    handle to UP4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

y = str2double(get(handles.designerstatic_A,'String'));
z=4;
if y==z
 disp(' I Am at level 4!')
 
elseif y<z
 disp('Am coming up!')
 
  while y<z
     y=y+1;
        pause(3)
     disp(y:z)
          set(handles.designerstatic_A,'string',y)
       set(handles.SliderA,'value',y)
           %y=y+1;
          
continue
  end
% set(handles.designerstatic_A,'string',4)
% set(handles.SliderA,'value',4)
else
   disp('Wait I am coming down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  

 end  


% --- Executes on button press in UP3.
function UP3_Callback(hObject, eventdata, handles)
% hObject    handle to UP3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

y = str2double(get(handles.designerstatic_A,'String'));
z=4;
if y==z
 disp(' I Am at level 3!')
 
elseif y<z
 disp('Am coming up!')
  while y<z
     y=y+1;
        pause(3)
     disp(y:z)
          set(handles.designerstatic_A,'string',y)
       set(handles.SliderA,'value',y)
           %y=y+1;
          
continue
  end
 %set(handles.designerstatic_A,'string',3)
 %set(handles.SliderA,'value',3)
 
else
   disp('Wait I am coming down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  

 end  

% --- Executes on button press in UP2.
function UP2_Callback(hObject, eventdata, handles)
% hObject    handle to UP2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=2;
if y==z
 disp(' I Am at level 2!')
 
elseif y<2
 disp('Am coming up!')
  while y<z
     y=y+1;
        pause(3)
     disp(y:z)
          set(handles.designerstatic_A,'string',y)
       set(handles.SliderA,'value',y)
           %y=y+1;
          
continue
  end
 %set(handles.designerstatic_A,'string')
 %set(handles.SliderA,'value',2)
else
      disp('Wait I am coming down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  

 end  


% --- Executes on button press in UP1.
function UP1_Callback(hObject, eventdata, handles)
% hObject    handle to UP1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%y = str2double(get(handles.designerstatic_A,'String'));

        set(handles.designerstatic_A,'string',1)
        set(handles.SliderA,'value',1)
    
 
% --- Executes on button press in UP10.
function UP10_Callback(hObject, eventdata, handles)
% hObject    handle to UP10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=10;
if y==z
 disp(' I Am at level 10!')
 
elseif y<z
 disp('Am coming up!')
 pause(3);
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end
 %set(handles.designerstatic_A,'string')
% set(handles.SliderA,'value',10)
else
  disp('Press the Move down arrow!')
 end  




% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
if y==1
 disp(' I Am at level 1!')
 
elseif y>1
 disp('Am coming Down!')
 pause(3);
 set(handles.designerstatic_A,'string',1)
 set(handles.SliderA,'value',1)
else
  disp('Press the Move Up arrow!')  
end  

% --- Executes on button press in DOWN10.
function DOWN10_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=10;
if y==z
 disp(' I Am at level 10!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  
else
  disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end
 
end  

% --- Executes on button press in DOWN9.
function DOWN9_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=9
if y==z
 disp(' I Am at level 9!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
 while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  
else
  disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end 
  
end  

% --- Executes on button press in DOWN8.
function DOWN8_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

y = str2double(get(handles.designerstatic_A,'String'));
z=8;
if y==z
 disp(' I Am at level 8!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
  disp('Wait I finish then i come down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  

else
  disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end 
end  

% --- Executes on button press in DOWN7.
function DOWN7_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));

z=7;
if y==z
 disp(' I Am at level 7!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
  disp('Wait I finish then i come down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  

else
  disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end 
end  

% --- Executes on button press in DOWN6.
function DOWN6_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=6;
if y==z
 disp(' I Am at level 6!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
 
 while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  
else
 disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end  
end  

% --- Executes on button press in DOWN5.
function DOWN5_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=5;
if y==z
 disp(' I Am at level 5!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
  disp('Wait I finish then i come down!')
      while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  


else
 disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end  
end  

% --- Executes on button press in DOWN4.
function DOWN4_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=4;
if y==z
 disp(' I Am at level 4!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  
else
 disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end
end  

% --- Executes on button press in DOWN3.
function DOWN3_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

y = str2double(get(handles.designerstatic_A,'String'));
z=3;
if y==z
 disp(' I Am at level 3!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
 while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  
else
  disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end
end  

% --- Executes on button press in DOWN2.
function DOWN2_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=2;
if y==z
 disp(' I Am at level 2!')
 
elseif y>z
 disp('Am coming Down!')
 pause(3);
 while y>z
          y=y-1;
          pause(3)
          disp(z:y)
          set(handles.designerstatic_A,'string',y)
        set(handles.SliderA,'value',y)
      end  
else
  disp('Press the Move Up arrow!')  
end  

% --- Executes on button press in DOWN11.
function DOWN11_Callback(hObject, eventdata, handles)
% hObject    handle to DOWN11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = str2double(get(handles.designerstatic_A,'String'));
z=11
if y==z
 disp(' I Am at level 11!')
 
elseif y<z
 disp('Am coming Up so that i can go down!')
 while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end
 
else
  disp('Am coming please!')
  while y<z
      y=y+1;
     pause(3)
     disp(y:z)
    set(handles.designerstatic_A,'string',y)
     set(handles.SliderA,'value',y)
       
 end
     
 
end  


% --- Executes during object creation, after setting all properties.
function designerstatic_A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to designerstatic_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called






function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on slider movement.
function sliderB_Callback(hObject, eventdata, handles)
% hObject    handle to sliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


    
    


% --- Executes on key press with focus on SliderA and none of its controls.
function SliderA_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to SliderA (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

function DoNothing = At_Current_Position(y,z)
if(y==z)
    disp('You are at the current position, nothing to do');
    pause(2)
    if ishandle(handle)
        delete(handle);
    end
    clear handle;
    %disp(' I Am at level 9!')
    DoNothing = 1;
else
    DoNothing = 0;
end



function Lift_Update(y,z, hObject, eventdata,handles)
%Determine if the lift is up or down:
if y > z %This does y = y - 1 logic, The lift was up, it's coming down
while y>z
  y=y-1;
  pause(3)
  disp(z:y)
  set(handles.designerstatic_A,'string',y)
  set(handles.SliderA,'value',y)
end
elseif y < z
while y<z %This does y = y+1 logic, The lift was down, it's coming up
   y = y+1;
   disp(y:z)
   set(handles.designerstatic_A,'string',y)
   set(handles.SliderA,'value',y)
end
end

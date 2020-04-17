function varargout = untitled10(varargin)
% UNTITLED10 MATLAB code for untitled10.fig
%      UNTITLED10, by itself, creates a new UNTITLED10 or raises the existing
%      singleton*.
%
%      H = UNTITLED10 returns the handle to a new UNTITLED10 or the handle to
%      the existing singleton*.
%
%      UNTITLED10('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED10.M with the given input arguments.
%
%      UNTITLED10('Property','Value',...) creates a new UNTITLED10 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled10_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled10_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled10

% Last Modified by GUIDE v2.5 07-Apr-2020 22:23:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled10_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled10_OutputFcn, ...
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


% --- Executes just before untitled10 is made visible.
function untitled10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled10 (see VARARGIN)

% Choose default command line output for untitled10
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled10_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Sine.
function Sine_Callback(hObject, eventdata, handles)
% hObject    handle to Sine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=-1:0.1:1;
c=-2:0.1:2;
d=meshgrid(a,c);
x=sin(d);
mesh(d,x)
colorbar

% --- Executes on button press in Cose.
function Cose_Callback(hObject, eventdata, handles)
% hObject    handle to Cose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=-1:0.1:1;
c=-2:0.1:2;
d=meshgrid(a,c);
x=cos(d);
mesh(d,x)
colorbar

% --- Executes on button press in Tan.
function Tan_Callback(hObject, eventdata, handles)
% hObject    handle to Tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=-1:0.1:1;
c=-2:0.1:2;
d=meshgrid(a,c);
x=tan(d);
mesh(d,x)
colorbar

% --- Executes on button press in Cosec.
function Cosec_Callback(hObject, eventdata, handles)
% hObject    handle to Cosec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=-1:0.1:1;
c=-2:0.1:2;
d=meshgrid(a,c);
x=csc(d);
mesh(d,x)
colorbar

% --- Executes on button press in Cot.
function Cot_Callback(hObject, eventdata, handles)
% hObject    handle to Cot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=-1:0.1:1;
c=-2:0.1:2;
d=meshgrid(a,c);
x=cot(d);
mesh(d,x)
colorbar

% --- Executes on button press in Sec.
function Sec_Callback(hObject, eventdata, handles)
% hObject    handle to Sec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=2:0.1:4;
c=1:0.1:3;
d=meshgrid(a,c);
n=sec(d);
mesh(d,n)
colorbar

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
x=get(handles.popupmenu1,'value');
switch x
    case 2
        set(handles.axes1,'color','r');
    case 3 
        set(handles.axes1,'color','g');
    case 4
        set(handles.axes1,'color','b');
    case 5
        set(handles.axes1,'color','k');
    case 6
        set(handles.axes1,'color','c');
    case 7
        set(handles.axes1,'color','m');
    case 8  
        set(handles.axes1,'color','w');
end        
        

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
y=get(handles.popupmenu2,'value');
switch y
    case 2
       grid on;
    case 3 
       grid off;
end        


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
z=get(handles.popupmenu3,'value');
switch z
    case 2
       shading faceted;
    case 3 
       shading flat;
    case 4
        shading interp;
       
end        


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4



% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

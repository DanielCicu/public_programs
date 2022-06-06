function varargout = osciloscopio(varargin)
% OSCILOSCOPIO MATLAB code for osciloscopio.fig
%      OSCILOSCOPIO, by itself, creates a new OSCILOSCOPIO or raises the existing
%      singleton*.
%
%      H = OSCILOSCOPIO returns the handle to a new OSCILOSCOPIO or the handle to
%      the existing singleton*.
%
%      OSCILOSCOPIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OSCILOSCOPIO.M with the given input arguments.
%
%      OSCILOSCOPIO('Property','Value',...) creates a new OSCILOSCOPIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before osciloscopio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to osciloscopio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help osciloscopio

% Last Modified by GUIDE v2.5 21-May-2021 14:05:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @osciloscopio_OpeningFcn, ...
                   'gui_OutputFcn',  @osciloscopio_OutputFcn, ...
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


% --- Executes just before osciloscopio is made visible.
function osciloscopio_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to osciloscopio (see VARARGIN)
global w x y s out1 out2;
w=0:128;
x=1;
y=1;
out1=0;
out2=0;
axes(handles.Canal1)
plot(w,0), grid on
xlim([0 128])
ylim([0 255])
ylabel('Voltage (V)')
axes(handles.Canal2)
plot(w,0), grid on
xlim([0 128])
ylim([0 255])
ylabel('Voltage (V)')
s = serial('COM9');
set(s,'BaudRate',115200);
set(s,'DataBits',8);
set(s,'Parity','none');
set(s,'StopBits',1);
set(s,'InputBufferSize',128);
fopen(s);
% Choose default command line output for osciloscopio
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes osciloscopio wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = osciloscopio_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w x s out1 out;
axes(handles.Canal1)

if x==1
    out = fread(s);
    out1=out(find(mod(out,2)==1));
    axes(handles.Canal1)
    plot(out1)
    ylim([0 255])
    xlim([0 64])
    drawnow
    clear out1
else
    axes(handles.Canal1)
    plot(w,1), grid on
    ylim([0 255])
    ylabel('Voltage (V)')
end
if x==0
    x=1;
else
    x=0;
end


% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global w y s out out2;
axes(handles.Canal2)
if y==1
    out = fread(s);
    out2=out(find(mod(out,2)==0));
    axes(handles.Canal2)
    plot(out2)
    ylim([0 255])
    xlim([0 64])
    drawnow
    clear out2
else
    axes(handles.Canal2)
    plot(w,1), grid on
    ylim([0 255])
    ylabel('Voltage (V)')
end
if y==0
    y=1;
else
    y=0;
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton2

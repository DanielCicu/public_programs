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
global w x y;
w=0:pi/360:4*pi;
x=1;
y=1;
axes(handles.Canal1)
plot(w,0), grid on
xlim([0 4*pi])
ylim([-5 5])
ylabel('Voltage (V)')
axes(handles.Canal2)
plot(w,0), grid on
xlim([0 4*pi])
ylim([-5 5])
ylabel('Voltage (V)')
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
global w x;
if x==0
    x=1;
else
    x=0;
end
axes(handles.Canal1)
if x==0
%     hold(axes('Parent',,'Color',[0 1 0]),'on')
    plot(w,3.3*sin(w),'Color',[0,0,1]), grid on
    xlim([0 4*pi])
    ylim([-5 5])
    ylabel('Voltage (V)')
else
    plot(w,1), grid on
    xlim([0 4*pi])
    ylim([-5 5])
    ylabel('Voltage (V)')
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w y;
if y==0
    y=1;
else
    y=0;
end
axes(handles.Canal2)
if y==0
    plot(w,3.3*cos(w),'Color',[1,0,0]), grid on
    xlim([0 4*pi])
    ylim([-5 5])
    ylabel('Voltage (V)')
else
    plot(w,1), grid on
    xlim([0 4*pi])
    ylim([-5 5])
    ylabel('Voltage (V)')
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton2

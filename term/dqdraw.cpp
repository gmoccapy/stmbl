#include "dqdraw.hpp"

dqDraw::dqDraw(wxFrame* parent) : wxPanel(parent){
    Bind(wxEVT_PAINT, &dqDraw::paintEvent, this);
    Bind(wxEVT_MOTION, &dqDraw::mouseEvent, this);
    Bind(wxEVT_MOUSEWHEEL , &dqDraw::scrollEvent, this);

    scale = 5;
    iscale = 1;
    In = 10;
    Un = 20;

//    Rs = 15;//7.6;
//    Psi = 0.37;//0.5411;
//    P = 3;
//    Omega = 12000/60*P*M_PI_2;
//    Ld = 0.0023;
//    Lq = 0.0023;

    Rs = 0.1;//7.6;
    Psi = (1/1.4)*60/1000/2/M_PI;//0.5411;
    P = 7;
    Omega = 15000/60*P*M_PI/2;
    Ld = 9*0.000001;
    Lq = 9*0.000001;
}

void dqDraw::scrollEvent(wxMouseEvent & evt){
    float move = (float)evt.m_wheelRotation / evt.m_wheelDelta;
    scale = CLAMP(scale -= move,0.5,50);
    Refresh();
}

void dqDraw::Update()
{
    Uabs = sqrt(Ud*Ud + Uq*Uq);
    Iabs = sqrt(Id*Id + Iq*Iq);

    // Permanentmagnet-, Reluktanz- und Gesamtmoment
    //
    M_perm = 1.5f * P *  Psi * Iq;
    M_rel  = 1.5f * P * (Ld - Lq) * Id * Iq;
    M_ges  = M_rel + M_perm;
    Pe = Uabs * Iabs;
    Pm = Omega / P * M_ges;
}


void dqDraw::SetCurrent(double d, double q)
{
    double OmegaPsi = Omega * Psi;
    double Xd   = Omega * Ld;
    double Xq   = Omega * Lq;

    Id = d;
    Iq = q;
    Ud =           -Iq * Xq + Id * Rs;
    Uq = OmegaPsi + Id * Xd + Iq * Rs;

    Update();
}

void dqDraw::SetVoltage(double d, double q)
{
    double OmegaPsi = Omega * Psi;
    double Xd   = Omega * Ld;
    double Xq   = Omega * Lq;

    Ud = d;
    Uq = q;
    Id = (Rs * d + Xq * (q - OmegaPsi)) / (Rs * Rs + Xd * Xq);
    Iq = (Rs * (q - OmegaPsi) - Xd * d) / (Rs * Rs + Xd * Xq);

    Update();
}

void dqDraw::mouseEvent(wxMouseEvent & evt)
{
    if(evt.LeftIsDown() && evt.Dragging()){
        double x,y;
        x = (evt.GetX()-w/2)/scale;
        y = (h/2-evt.GetY())/scale;
        //std::cout << x << " " << y << std::endl;
        SetVoltage(x,y);
        //SetCurrent(x, y);
        text->SetLabel(wxString::Format("x,y %.2f,%.2f\nId,Iq %.2f,%.2f\nUd,Uq %.2f,%.2f\n M_ges:%.2f\n Pe:%.2f\n Pm:%.2f",x,y,Id,Iq,Ud,Uq,M_ges,Pe,Pm));
    }

    //Update();
    Refresh();
    evt.Skip();
}

void dqDraw::paintEvent(wxPaintEvent & evt)
{
    wxPaintDC dc(this);
    render(dc);
}

void dqDraw::render(wxDC&  dc)
{
    dc.GetSize(&w, &h);

    dc.SetPen(*wxGREY_PEN);
    dc.DrawLine( 0, h/2, w, h/2 );
    dc.DrawLine( w/2, 0, w/2, h );

    // ursprung oben links

    dc.SetBrush(*wxTRANSPARENT_BRUSH);
    dc.SetPen(*wxRED_PEN);
    dc.DrawLine( w/2, h/2, Ud*scale+w/2, h/2-Uq*scale);
    dc.DrawCircle(w/2, h/2, Un*scale);
    dc.SetPen(*wxBLUE_PEN);
    dc.DrawLine( w/2, h/2, Id*scale*iscale+w/2, h/2-Iq*scale*iscale);
    dc.DrawCircle(w/2, h/2, In*scale*iscale);
}

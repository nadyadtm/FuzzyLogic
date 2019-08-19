emosi_input = input('Emosi : ','s');
provokasi_input = input('Provokasi : ','s');

emosi = str2num(emosi_input);
provokasi = str2num(provokasi_input);
i=1;
j=1;

myu_rendah = 0;
myu_sedang = 0;
myu_tinggi = 0;
myu_sgttinggi = 0;
myu_sedikit = 0;
myu_lumayan = 0;
myu_banyak = 0;
myu_sgtbanyak = 0;
myu_ya=[0,0,0,0,0,0,0,0,0];
myu_tidak=[0,0,0,0,0,0,0];

if provokasi>=0 && provokasi<=20
    myu_sedikit = 1;
elseif provokasi>20 && provokasi<25
    myu_sedikit = (-(provokasi - 25)/(25-20));
    myu_lumayan = (provokasi - 20)/(25-20);
elseif provokasi>=25 && provokasi<=45
    myu_lumayan = 1;
elseif provokasi>45 && provokasi<50
    myu_lumayan = (-(provokasi-50)/(50-45));
    myu_banyak  = (provokasi - 45)/(50-45);
elseif provokasi>=50 && provokasi<=70 
    myu_banyak = 1;
elseif provokasi>70 && provokasi<75
    myu_banyak = (-(provokasi-75)/(75-70));
    myu_sgtbanyak = (provokasi - 70)/(75-70);
elseif provokasi>=75 && provokasi<=100
    myu_sgtbanyak = 1;
end;

if emosi>=0 && emosi<=25
    myu_rendah = 1;
elseif emosi>25 && emosi<30
    myu_rendah = (-(emosi - 30)/(30-25));
    myu_sedang = (emosi - 25)/(30-25);
elseif emosi>=30 && emosi<=55
    myu_sedang = 1;
elseif emosi>55 && emosi<60
    myu_sedang = (-(emosi-60)/(60-55));
    myu_tinggi  = (emosi - 55)/(60-55);
elseif emosi>=60 && emosi<=85
    myu_tinggi = 1;
elseif emosi>85 && emosi<90
    myu_tinggi = (-(emosi-90)/(90-85));
    myu_sgttinggi = (emosi - 85)/(90-85);
elseif provokasi>=90 && provokasi<=100
    myu_sgttinggi = 1;
end;

if myu_sgttinggi~=0 && myu_sgtbanyak~=0
    if myu_sgttinggi<myu_sgtbanyak
        myu_ya(i)=myu_sgttinggi;
    else
        myu_ya(i)=myu_sgtbanyak;
    end
    i=i+1;
end
if myu_sgttinggi~=0 && myu_banyak~=0
    if myu_sgttinggi<myu_banyak
        myu_ya(i)=myu_sgttinggi;
    else
        myu_ya(i)=myu_banyak;
    end
    i=i+1;
end
if myu_sgttinggi~=0 && myu_lumayan~=0
    if myu_sgttinggi<myu_lumayan
        myu_ya(i)=myu_sgttinggi;
    else
        myu_ya(i)=myu_lumayan;
    end
    i=i+1;
end
if myu_sgttinggi~=0 && myu_sedikit~=0
    if myu_sgttinggi<myu_sedikit
        myu_tidak(j)=myu_sgttinggi;
    else
        myu_tidak(j)=myu_sedikit;
    end
    j=j+1;
end
if myu_tinggi~=0 && myu_sgtbanyak~=0
    if myu_tinggi<myu_sgtbanyak
        myu_ya(i)=myu_tinggi;
    else
        myu_ya(i)=myu_sgtbanyak;
    end
    i=i+1;
end
if myu_tinggi~=0 && myu_banyak~=0
    if myu_tinggi<myu_banyak
        myu_ya(i)=myu_tinggi;
    else
        myu_ya(i)=myu_banyak;
    end
    i=i+1;
end
if myu_tinggi~=0 && myu_lumayan~=0
    if myu_tinggi<myu_lumayan
        myu_tidak(j)=myu_tinggi;
    else
        myu_tidak(j)=myu_lumayan;
    end
    j=j+1;
end
if myu_tinggi~=0 && myu_sedikit~=0
    if myu_tinggi<myu_sedikit
        myu_tidak(j)=myu_tinggi;
    else
        myu_tidak(j)=myu_sedikit;
    end
    j=j+1;
end
if myu_sedang~=0 && myu_sgtbanyak~=0
    if myu_sedang<myu_sgtbanyak
        myu_ya(i)=myu_sedang;
    else
        myu_ya(i)=myu_sgtbanyak;
    end
    i=i+1;
end
if myu_sedang~=0 && myu_banyak~=0
    if myu_sedang<myu_banyak
        myu_tidak(j)=myu_sedang;
    else
        myu_tidak(j)=myu_banyak;
    end
    j=j+1;
end
if myu_sedang~=0 && myu_lumayan~=0
    if myu_sedang<myu_lumayan
        myu_tidak(j)=myu_sedang;
    else
        myu_tidak(j)=myu_lumayan;
    end
    j=j+1;
end
if myu_sedang~=0 && myu_sedikit~=0
    if myu_sedang<myu_sedikit
        myu_tidak(j)=myu_sedang;
    else
        myu_tidak(j)=myu_sedikit;
    end
    j=j+1;
end
if myu_rendah~=0 && myu_sgtbanyak~=0
    if myu_rendah<myu_sgtbanyak
        myu_ya(i)=myu_rendah;
    else
        myu_ya(i)=myu_sgtbanyak;
    end
    i=i+1;
end
if myu_rendah~=0 && myu_banyak~=0
    if myu_rendah<myu_banyak
        myu_ya(i)=myu_rendah;
    else
        myu_ya(i)=myu_banyak;
    end
    i=i+1;
end
if myu_rendah~=0 && myu_lumayan~=0
    if myu_rendah<myu_lumayan
        myu_ya(i)=myu_rendah;
    else
        myu_ya(i)=myu_lumayan;
    end
    i=i+1;
end
if myu_sedang~=0 && myu_sedikit~=0
    if myu_sedang<myu_sedikit
        myu_tidak(j)=myu_sedang;
    else
        myu_tidak(j)=myu_sedikit;
    end
    j=j+1;
end

ya = max(myu_ya);
tidak = max(myu_tidak);

y = ((ya*100)+(tidak*50))/(ya+tidak);

if y>=0 && y<=50
    disp('tidak');
else
    disp('ya');
end;

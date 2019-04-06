unit Unit4;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBDatabase;

type
  TDM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    Q_Brand: TIBQuery;
    Q_BrandFIRM: TIBStringField;
    Q_BrandIDFIRM: TIntegerField;
    DS_Brand: TDataSource;
    Q_Model: TIBQuery;
    Q_ModelIDMOD: TIntegerField;
    Q_ModelMODNAME: TIBStringField;
    DS_Model: TDataSource;
    Q_Routers: TIBQuery;
    Q_RoutersPRICE: TIBStringField;
    Q_RoutersIDINFO: TIntegerField;
    Q_RoutersCENA: TFloatField;
    Q_RoutersSKIDKA: TFloatField;
    Q_RoutersNOTES: TIBStringField;
    DS_Routers: TDataSource;
    Q_Stoimost: TIBQuery;
    Q_StoimostIDCENA: TIntegerField;
    Q_StoimostPRICE: TIBStringField;
    DS_Stoimost: TDataSource;
    IBDataSet1: TIBDataSet;
    IBDataSet1NOTES: TIBStringField;
    IBDataSet1SKIDKA: TFloatField;
    IBDataSet1IDCENA: TIntegerField;
    IBDataSet1IDMOD: TIntegerField;
    IBDataSet1IDINFO: TIntegerField;
    IBDataSet1CENA: TFloatField;
    IBTransaction2: TIBTransaction;
    DS_INF: TDataSource;
    Q_INF: TIBQuery;
    Q_INFPORTS: TIntegerField;
    Q_INFANT: TIntegerField;
    Q_INFWI_FI: TIBStringField;
    Q_INFMODNAME: TIBStringField;
    Q_INFIDFIRM: TIntegerField;
    Q_INFIDMOD: TIntegerField;
    Q_INFVIEW: TWideMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

.class public Lhk/com/aisoft/easyaddrui/ResponseAddr;
.super Ljava/lang/Object;
.source "ResponseAddr.java"


# instance fields
.field public sAddr:Ljava/lang/String;

.field public sAddrC:Ljava/lang/String;

.field public sAddrE:Ljava/lang/String;

.field public sAddrRmkC:Ljava/lang/String;

.field public sAddrRmkE:Ljava/lang/String;

.field public sAreaC:Ljava/lang/String;

.field public sAreaE:Ljava/lang/String;

.field public sBldgC:Ljava/lang/String;

.field public sBldgE:Ljava/lang/String;

.field public sBlock:Ljava/lang/String;

.field public sBlockC:Ljava/lang/String;

.field public sBlockE:Ljava/lang/String;

.field public sCity:Ljava/lang/String;

.field public sDistrictC:Ljava/lang/String;

.field public sDistrictE:Ljava/lang/String;

.field public sEstateC:Ljava/lang/String;

.field public sEstateE:Ljava/lang/String;

.field public sFlat:Ljava/lang/String;

.field public sFloor:Ljava/lang/String;

.field public sHub1:Ljava/lang/String;

.field public sHub2:Ljava/lang/String;

.field public sHub3:Ljava/lang/String;

.field public sHub4:Ljava/lang/String;

.field public sLot:Ljava/lang/String;

.field public sPhaseNameC:Ljava/lang/String;

.field public sPhaseNameE:Ljava/lang/String;

.field public sPhaseNo:Ljava/lang/String;

.field public sRemarks:Ljava/lang/String;

.field public sScore:Ljava/lang/Double;

.field public sStreetC:Ljava/lang/String;

.field public sStreetE:Ljava/lang/String;

.field public sStreetFromCode:Ljava/lang/String;

.field public sStreetFromNo:Ljava/lang/String;

.field public sStreetLon:Ljava/lang/String;

.field public sStreetToCode:Ljava/lang/String;

.field public sStreetToNo:Ljava/lang/String;

.field public sUBI:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddr:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sScore:Ljava/lang/Double;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sCity:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAreaC:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAreaE:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sDistrictC:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sDistrictE:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetC:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetE:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetLon:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromNo:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromCode:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetToNo:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetToCode:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sEstateC:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sEstateE:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNo:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNameC:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNameE:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBldgC:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBldgE:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBlockC:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBlockE:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBlock:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sFloor:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sFlat:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrRmkC:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrRmkE:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sRemarks:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub1:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub2:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub3:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub4:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrC:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrE:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sUBI:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sLot:Ljava/lang/String;

    .line 45
    return-void
.end method

.class public Lhk/com/aisoft/easyaddrui/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field public sAddrC:Ljava/lang/String;

.field public sAddrE:Ljava/lang/String;

.field public sAreaC:Ljava/lang/String;

.field public sAreaE:Ljava/lang/String;

.field public sBldgC:Ljava/lang/String;

.field public sBldgE:Ljava/lang/String;

.field public sBlock:Ljava/lang/String;

.field public sBlockC:Ljava/lang/String;

.field public sBlockE:Ljava/lang/String;

.field public sDistrictC:Ljava/lang/String;

.field public sDistrictE:Ljava/lang/String;

.field public sEstateC:Ljava/lang/String;

.field public sEstateE:Ljava/lang/String;

.field public sFlat:Ljava/lang/String;

.field public sFloor:Ljava/lang/String;

.field public sNoticeC:Ljava/lang/String;

.field public sNoticeE:Ljava/lang/String;

.field public sRemarks:Ljava/lang/String;

.field public sStreetC:Ljava/lang/String;

.field public sStreetE:Ljava/lang/String;

.field public sStreetLon:Ljava/lang/String;

.field public sStreetNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaE:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictE:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetE:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgE:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockE:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlock:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sNoticeC:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sNoticeE:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sAddrC:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sAddrE:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lhk/com/aisoft/easyaddrui/ResponseAddr;)V
    .locals 5
    .param p1, "mResponseAddr"    # Lhk/com/aisoft/easyaddrui/ResponseAddr;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    .line 8
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaE:Ljava/lang/String;

    .line 9
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    .line 10
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictE:Ljava/lang/String;

    .line 11
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    .line 12
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetE:Ljava/lang/String;

    .line 13
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    .line 14
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    .line 15
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    .line 16
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateE:Ljava/lang/String;

    .line 17
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    .line 18
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgE:Ljava/lang/String;

    .line 19
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    .line 20
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockE:Ljava/lang/String;

    .line 21
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlock:Ljava/lang/String;

    .line 22
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 23
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 24
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sNoticeC:Ljava/lang/String;

    .line 25
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sNoticeE:Ljava/lang/String;

    .line 26
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    .line 27
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sAddrC:Ljava/lang/String;

    .line 28
    const-string v3, ""

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sAddrE:Ljava/lang/String;

    .line 56
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAreaC:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    .line 57
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAreaE:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaE:Ljava/lang/String;

    .line 58
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sDistrictC:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    .line 59
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sDistrictE:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictE:Ljava/lang/String;

    .line 60
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetC:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    .line 61
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetE:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetE:Ljava/lang/String;

    .line 62
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetLon:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    .line 63
    const-string v2, ""

    .line 64
    .local v2, "sStreetStr":Ljava/lang/String;
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromNo:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetToNo:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetToNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetToCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_0
    :goto_0
    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    .line 73
    const-string v0, ""

    .line 74
    .local v0, "sEstateStrC":Ljava/lang/String;
    const-string v1, ""

    .line 75
    .local v1, "sEstateStrE":Ljava/lang/String;
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sEstateC:Ljava/lang/String;

    .line 76
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNo:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u671f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNameC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sEstateE:Ljava/lang/String;

    .line 82
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNo:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PHASE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNameE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 87
    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateE:Ljava/lang/String;

    .line 89
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBldgC:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    .line 90
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBldgE:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgE:Ljava/lang/String;

    .line 91
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBlock:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlock:Ljava/lang/String;

    .line 92
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBlockC:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    .line 93
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBlockE:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockE:Ljava/lang/String;

    .line 94
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sFloor:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 95
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sFlat:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 96
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrRmkC:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sNoticeC:Ljava/lang/String;

    .line 97
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrRmkE:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sNoticeE:Ljava/lang/String;

    .line 98
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sRemarks:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    .line 99
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrC:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sAddrC:Ljava/lang/String;

    .line 100
    iget-object v3, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrE:Ljava/lang/String;

    iput-object v3, p0, Lhk/com/aisoft/easyaddrui/Address;->sAddrE:Ljava/lang/String;

    .line 101
    return-void

    .line 68
    .end local v0    # "sEstateStrC":Ljava/lang/String;
    .end local v1    # "sEstateStrE":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mArea"    # Ljava/lang/String;
    .param p2, "mDistrict"    # Ljava/lang/String;
    .param p3, "mStreet"    # Ljava/lang/String;
    .param p4, "mStreetLon"    # Ljava/lang/String;
    .param p5, "mStreetNo"    # Ljava/lang/String;
    .param p6, "mEstate"    # Ljava/lang/String;
    .param p7, "mBldg"    # Ljava/lang/String;
    .param p8, "mBlock"    # Ljava/lang/String;
    .param p9, "mFloor"    # Ljava/lang/String;
    .param p10, "mFlat"    # Ljava/lang/String;
    .param p11, "mRemarks"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaE:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictE:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetE:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgE:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockE:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlock:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sNoticeC:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sNoticeE:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sAddrC:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Address;->sAddrE:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    .line 50
    iput-object p9, p0, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 51
    iput-object p10, p0, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 52
    iput-object p11, p0, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    .line 53
    return-void
.end method

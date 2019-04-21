.class public Lcom/mcdonalds/sdk/modules/models/TableService;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "TableService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TableService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnablePOSTableService:Z

.field private mMinimumPurchaseAmount:D

.field private mTableServiceEatin:Ljava/lang/String;

.field private mTableServiceEnableMap:Z

.field private mTableServiceLocatorEnabled:Z

.field private mTableServiceLocatorMaxNumberValue:I

.field private mTableServiceTakeout:Ljava/lang/String;

.field private mZoneDefinitionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/TableService$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/TableService$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/TableService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 86
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mEnablePOSTableService:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceEatin:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceTakeout:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mMinimumPurchaseAmount:D

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceEnableMap:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceLocatorEnabled:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceLocatorMaxNumberValue:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mZoneDefinitionsList:Ljava/util/ArrayList;

    .line 97
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mZoneDefinitionsList:Ljava/util/ArrayList;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 98
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v0, v2

    .line 93
    goto :goto_1

    :cond_2
    move v1, v2

    .line 94
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumPurchaseAmount()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mMinimumPurchaseAmount:D

    return-wide v0
.end method

.method public getTableServiceEatin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceEatin:Ljava/lang/String;

    return-object v0
.end method

.method public getTableServiceLocatorMaxNumberValue()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceLocatorMaxNumberValue:I

    return v0
.end method

.method public getTableServiceTakeout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceTakeout:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneDefinitionsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mZoneDefinitionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEnablePOSTableService()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mEnablePOSTableService:Z

    return v0
.end method

.method public isTableServiceEnableMap()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceEnableMap:Z

    return v0
.end method

.method public isTableServiceLocatorEnabled()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceLocatorEnabled:Z

    return v0
.end method

.method public setEnablePOSTableService(Z)V
    .locals 0
    .param p1, "enablePOSTableService"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mEnablePOSTableService:Z

    .line 27
    return-void
.end method

.method public setMinimumPurchaseAmount(D)V
    .locals 1
    .param p1, "minimumPurchaseAmount"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mMinimumPurchaseAmount:D

    .line 51
    return-void
.end method

.method public setTableServiceEatin(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableServiceEatin"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceEatin:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTableServiceEnableMap(Z)V
    .locals 0
    .param p1, "tableServiceEnableMap"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceEnableMap:Z

    .line 67
    return-void
.end method

.method public setTableServiceLocatorEnabled(Z)V
    .locals 0
    .param p1, "tableServiceLocatorEnabled"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceLocatorEnabled:Z

    .line 59
    return-void
.end method

.method public setTableServiceLocatorMaxNumberValue(I)V
    .locals 0
    .param p1, "tableServiceLocatorMaxNumberValue"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceLocatorMaxNumberValue:I

    .line 75
    return-void
.end method

.method public setTableServiceTakeout(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableServiceTakeout"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceTakeout:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setZoneDefinitionsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "zoneDefinitionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mZoneDefinitionsList:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mEnablePOSTableService:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceEatin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceTakeout:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mMinimumPurchaseAmount:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 106
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceEnableMap:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceLocatorEnabled:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mTableServiceLocatorMaxNumberValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TableService;->mZoneDefinitionsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 110
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1

    :cond_2
    move v1, v2

    .line 107
    goto :goto_2
.end method

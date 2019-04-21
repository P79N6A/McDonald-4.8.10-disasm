.class public Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "ZoneDefinitions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColor:Ljava/lang/String;

.field private mDefinition:Ljava/lang/String;

.field private mEnable:Z

.field private mIds:Ljava/lang/String;

.field private mZoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mColor:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mDefinition:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mEnable:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mZoneId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mIds:Ljava/lang/String;

    .line 65
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mIds:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mZoneId:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mEnable:Z

    return v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mColor:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDefinition(Ljava/lang/String;)V
    .locals 0
    .param p1, "definition"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mDefinition:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mEnable:Z

    .line 38
    return-void
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mIds:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setZoneId(I)V
    .locals 0
    .param p1, "zoneId"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mZoneId:I

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mDefinition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mZoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->mIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

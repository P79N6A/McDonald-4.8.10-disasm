.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDevice;
.super Ljava/lang/Object;
.source "MWDevice.java"


# instance fields
.field private deviceOperatingSystem:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceOperatingSystem"
    .end annotation
.end field

.field private deviceToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "deviceToken"    # Ljava/lang/String;
    .param p2, "deviceOperatingSystem"    # Ljava/lang/Integer;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDevice;->deviceToken:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDevice;->deviceOperatingSystem:Ljava/lang/Integer;

    .line 21
    return-void
.end method


# virtual methods
.method public getDeviceOperatingSystem()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDevice;->deviceOperatingSystem:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDevice;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

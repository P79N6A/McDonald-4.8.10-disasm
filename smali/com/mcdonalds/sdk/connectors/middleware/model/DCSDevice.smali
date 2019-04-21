.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;
.super Ljava/lang/Object;
.source "DCSDevice.java"


# static fields
.field private static DEVICE_ID_TYPE:Ljava/lang/String;

.field private static DEVICE_NAME:Ljava/lang/String;

.field private static DEVICE_OS:Ljava/lang/String;

.field private static SOURCE_ID:Ljava/lang/String;


# instance fields
.field public brand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field public deviceIdType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceIdType"
    .end annotation
.end field

.field public isActive:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isActive"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manufacturer"
    .end annotation
.end field

.field public model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public os:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "os"
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osVersion"
    .end annotation
.end field

.field public personalName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personalName"
    .end annotation
.end field

.field public phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneNumber"
    .end annotation
.end field

.field public pushNotificationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pushNotificationId"
    .end annotation
.end field

.field public sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceId"
    .end annotation
.end field

.field public timezone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timezone"
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "AndroidId"

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->DEVICE_ID_TYPE:Ljava/lang/String;

    .line 20
    const-string v0, "PersonalMobile"

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->DEVICE_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "Android"

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->DEVICE_OS:Ljava/lang/String;

    .line 22
    const-string v0, "MOT"

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->SOURCE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromDeviceInfo()Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;
    .locals 8

    .prologue
    .line 74
    const-string v6, "notification"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;

    .line 76
    .local v4, "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;-><init>()V

    .line 78
    .local v2, "device":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;
    sget-object v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->DEVICE_ID_TYPE:Ljava/lang/String;

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->deviceIdType:Ljava/lang/String;

    .line 79
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->getRegistrationId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->token:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->deviceId:Ljava/lang/String;

    .line 81
    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->brand:Ljava/lang/String;

    .line 82
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->model:Ljava/lang/String;

    .line 83
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->manufacturer:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->language:Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 88
    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 89
    .local v1, "currentTimeZone":Ljava/util/TimeZone;
    invoke-virtual {v1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    .line 90
    .local v3, "isDaylight":Z
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->timezone:Ljava/lang/String;

    .line 92
    sget-object v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->DEVICE_NAME:Ljava/lang/String;

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->personalName:Ljava/lang/String;

    .line 93
    sget-object v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->DEVICE_OS:Ljava/lang/String;

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->os:Ljava/lang/String;

    .line 94
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->osVersion:Ljava/lang/String;

    .line 95
    const-string v6, "Y"

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->isActive:Ljava/lang/String;

    .line 96
    sget-object v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->SOURCE_ID:Ljava/lang/String;

    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->sourceId:Ljava/lang/String;

    .line 98
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;

    .line 109
    .local v0, "device":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->deviceId:Ljava/lang/String;

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

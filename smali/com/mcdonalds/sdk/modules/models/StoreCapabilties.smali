.class public Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "StoreCapabilties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    }
.end annotation


# static fields
.field public static final ACCEPTS_QR_KEY:Ljava/lang/String; = "RQRC_DYNAMIC"

.field private static final CAPABILITY_ID:Ljava/lang/String; = "capabilityId"

.field private static final CHECKIN_SELECTION_DISPLAY_NAME_MAPPINGS_KEY:Ljava/lang/String; = "interface.checkin.checkinSeclectionDisplayNameMappings"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOBILE_ORDERING_KEY:Ljava/lang/String; = "MOBILE_ORDERING"

.field public static final SCANNER_KEY:Ljava/lang/String; = "SCANNER"


# instance fields
.field private storeCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "storeCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;>;"
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public filterAvailableCapabilities()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v10, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    invoke-static {v10}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 39
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v8, "storeCapabilitiesWithDigitalService":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    iget-object v10, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;

    .line 41
    .local v4, "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
    iget-object v11, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->digitalServices:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;

    .line 42
    .local v2, "digitalServices":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
    iget-object v12, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->key:Ljava/lang/String;

    const-string v13, "MOBILE_ORDERING"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 43
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;-><init>(Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;)V

    .line 44
    .local v1, "capability":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    iget v12, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->pod:I

    invoke-virtual {v1, v12}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->setCapabilityId(I)V

    .line 46
    iget-object v12, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;

    .line 47
    .local v9, "techKey":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;
    iget-object v13, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;->key:Ljava/lang/String;

    const-string v14, "SCANNER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 48
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->setHasScanner(Z)V

    goto :goto_1

    .line 50
    :cond_2
    const/4 v13, 0x0

    invoke-static {v1, v13}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->access$002(Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;Z)Z

    goto :goto_1

    .line 53
    .end local v9    # "techKey":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;
    :cond_3
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v1    # "capability":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    .end local v2    # "digitalServices":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
    .end local v4    # "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "availableCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    const-string v11, "interface.checkin.checkinSeclectionDisplayNameMappings"

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 59
    .local v3, "displayPODsNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 60
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v7, "podIds":Ljava/util/List;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/internal/LinkedTreeMap;

    .line 62
    .local v5, "linkedHashMap":Lcom/google/gson/internal/LinkedTreeMap;
    if-eqz v5, :cond_5

    .line 63
    const-string v10, "capabilityId"

    invoke-virtual {v5, v10}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v6, v12

    .line 64
    .local v6, "podId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 68
    .end local v5    # "linkedHashMap":Lcom/google/gson/internal/LinkedTreeMap;
    .end local v6    # "podId":I
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;

    .line 69
    .restart local v1    # "capability":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->getCapabilityId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 76
    .end local v0    # "availableCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    .end local v1    # "capability":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    .end local v3    # "displayPODsNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    .end local v7    # "podIds":Ljava/util/List;
    .end local v8    # "storeCapabilitiesWithDigitalService":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    :cond_8
    const/4 v0, 0x0

    :cond_9
    return-object v0
.end method

.method public hasKiosk()Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;

    .line 83
    .local v1, "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
    iget v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->pod:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_0

    .line 84
    iget-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->digitalServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;

    .line 85
    .local v0, "ds":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    .line 86
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    .line 87
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;->key:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    .line 88
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;->key:Ljava/lang/String;

    const-string v6, "SCANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const/4 v2, 0x1

    .line 94
    .end local v0    # "ds":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
    .end local v1    # "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public isDriveThruAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;

    .line 99
    .local v1, "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
    iget v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->pod:I

    sget-object v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->DriveThru:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->integerValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 100
    iget-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->digitalServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;

    .line 101
    .local v0, "ds":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    .line 103
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;->key:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    .line 104
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;->key:Ljava/lang/String;

    const-string v6, "RQRC_DYNAMIC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    const/4 v2, 0x1

    .line 110
    .end local v0    # "ds":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
    .end local v1    # "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->storeCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 122
    return-void
.end method

.class public final enum Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;
.super Ljava/lang/Enum;
.source "StoreFeatureFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

.field public static final enum DriveThru:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

.field public static final enum GiftCards:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

.field public static final enum PlayLand:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

.field public static final enum WiFi:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    const-string v1, "PlayLand"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->PlayLand:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    const-string v1, "DriveThru"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->DriveThru:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    .line 14
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    const-string v1, "WiFi"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->WiFi:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    .line 15
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    const-string v1, "GiftCards"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->GiftCards:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->PlayLand:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->DriveThru:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->WiFi:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->GiftCards:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->$VALUES:[Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static allFilters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;>;"
    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->PlayLand:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->DriveThru:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->WiFi:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->GiftCards:Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->$VALUES:[Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/storelocator/StoreFeatureFilter;

    return-object v0
.end method

.class public final enum Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;
.super Ljava/lang/Enum;
.source "StoreLocatorModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeMapsSDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

.field public static final enum AutoNavi:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

.field public static final enum AutoNavi2D:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

.field public static final enum Google:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    const-string v1, "Google"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->Google:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    .line 397
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    const-string v1, "AutoNavi"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    .line 398
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    const-string v1, "AutoNavi2D"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi2D:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    .line 395
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->Google:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi2D:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->$VALUES:[Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

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
    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 395
    const-class v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->$VALUES:[Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    return-object v0
.end method

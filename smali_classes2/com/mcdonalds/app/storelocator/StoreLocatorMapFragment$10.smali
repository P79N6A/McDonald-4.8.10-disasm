.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$10;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->refreshMarkers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/storelocator/Store;)I
    .locals 8
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "store2"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "compare"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v4

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDistance()D

    move-result-wide v0

    .line 869
    .local v0, "d1":D
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDistance()D

    move-result-wide v2

    .line 871
    .local v2, "d2":D
    cmpl-double v6, v0, v2

    if-nez v6, :cond_1

    move v4, v5

    .line 875
    :cond_0
    :goto_0
    return v4

    :cond_1
    cmpg-double v5, v0, v2

    if-gez v5, :cond_0

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const-string v0, "compare"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    check-cast p2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$10;->compare(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/storelocator/Store;)I

    move-result v0

    return v0
.end method

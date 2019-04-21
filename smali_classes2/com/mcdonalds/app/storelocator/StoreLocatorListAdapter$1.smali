.class Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$1;
.super Ljava/lang/Object;
.source "StoreLocatorListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setFavoriteStores(Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;Landroid/location/Location;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/storelocator/Store;)I
    .locals 8
    .param p1, "o1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "o2"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v4, 0x1

    const-string v5, "compare"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    aput-object p2, v6, v4

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$1;->val$location:Landroid/location/Location;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->toLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v0, v5

    .line 188
    .local v0, "d1":D
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$1;->val$location:Landroid/location/Location;

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->toLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v2, v5

    .line 189
    .local v2, "d2":D
    cmpg-double v5, v0, v2

    if-gez v5, :cond_0

    const/4 v4, -0x1

    :cond_0
    return v4
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

    .line 185
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    check-cast p2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$1;->compare(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/storelocator/Store;)I

    move-result v0

    return v0
.end method

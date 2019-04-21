.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$7;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/mcdonalds/app/storelocator/maps/model/Marker;)Z
    .locals 5
    .param p1, "marker"    # Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .prologue
    const/4 v4, 0x0

    const-string v2, "onMarkerClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1500(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 758
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1600(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v0

    .line 760
    .local v0, "section":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1700(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 763
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1802(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 765
    return v4
.end method

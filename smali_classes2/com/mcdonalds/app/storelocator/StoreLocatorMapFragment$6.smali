.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$6;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;


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
    .line 722
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V
    .locals 3
    .param p1, "point"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const-string v0, "onMapClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1200(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    .line 733
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    .line 731
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    goto :goto_0
.end method

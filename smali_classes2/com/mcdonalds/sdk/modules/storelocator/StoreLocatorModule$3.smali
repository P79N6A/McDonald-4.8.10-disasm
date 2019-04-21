.class Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;
.super Ljava/lang/Object;
.source "StoreLocatorModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearCurrentLocationWithinRadius(Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

.field final synthetic val$filters:Ljava/util/List;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$radius:Ljava/lang/Double;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncToken;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$radius:Ljava/lang/Double;

    iput-object p4, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$filters:Ljava/util/List;

    iput-object p5, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$202(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Landroid/location/Location;)Landroid/location/Location;

    .line 235
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$300(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$100(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 238
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$radius:Ljava/lang/Double;

    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$filters:Ljava/util/List;

    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 237
    invoke-static/range {v0 .. v6}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$400(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 240
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$100(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 241
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$102(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/Timer;)Ljava/util/Timer;

    .line 243
    :cond_0
    return-void
.end method

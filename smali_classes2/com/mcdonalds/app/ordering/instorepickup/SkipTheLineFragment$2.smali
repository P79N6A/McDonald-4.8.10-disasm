.class Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;
.super Ljava/lang/Object;
.source "SkipTheLineFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-string v0, "onLocationChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->access$002(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->access$100(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)V

    .line 197
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->access$200(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->access$300(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->access$000(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)Landroid/location/Location;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/util/MapUtils;->updateMap(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/maps/McdMap;Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/location/Location;)V

    .line 199
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setLocation(Landroid/location/Location;)V

    .line 200
    return-void
.end method

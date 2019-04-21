.class Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$6;
.super Ljava/lang/Object;
.source "GoogleImplementation.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$6;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-string v0, "onLocationChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$6;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$700(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$6;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$700(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 230
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setLocation(Landroid/location/Location;)V

    .line 231
    return-void
.end method

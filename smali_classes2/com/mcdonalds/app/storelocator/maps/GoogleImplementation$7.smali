.class Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$7;
.super Ljava/lang/Object;
.source "GoogleImplementation.java"

# interfaces
.implements Lcom/google/android/gms/maps/LocationSource;


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
    .line 234
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$7;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activate(Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)V
    .locals 3
    .param p1, "onLocationChangedListener"    # Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    .prologue
    const-string v0, "activate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$7;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$702(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    .line 238
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$7;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$800(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->requestUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V

    .line 239
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const-string v0, "deactivate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->disableUpdates()V

    .line 244
    return-void
.end method

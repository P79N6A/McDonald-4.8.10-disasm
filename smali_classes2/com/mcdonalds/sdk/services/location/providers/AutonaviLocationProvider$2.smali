.class Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider$2;
.super Lcom/mcdonalds/sdk/services/location/listeners/SimpleAmapLocationListener;
.source "AutonaviLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->requestSingleUpdate(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider$2;->this$0:Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;

    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/location/listeners/SimpleAmapLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 1
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider$2;->this$0:Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->access$100(Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider$2;->this$0:Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->access$000(Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;Lcom/amap/api/location/AMapLocation;)V

    .line 136
    return-void
.end method

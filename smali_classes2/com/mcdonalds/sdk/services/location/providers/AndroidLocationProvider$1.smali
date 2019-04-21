.class Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider$1;
.super Lcom/mcdonalds/sdk/services/location/listeners/SimpleAndroidLocationListener;
.source "AndroidLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider$1;->this$0:Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;

    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/location/listeners/SimpleAndroidLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider$1;->this$0:Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->access$002(Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;Landroid/location/Location;)Landroid/location/Location;

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider$1;->this$0:Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->access$100(Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;)Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider$1;->this$0:Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->access$100(Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;)Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;->onLocationChanged(Landroid/location/Location;)V

    .line 45
    :cond_0
    return-void
.end method

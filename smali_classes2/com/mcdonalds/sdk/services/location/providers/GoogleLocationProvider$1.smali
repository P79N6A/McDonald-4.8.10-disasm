.class Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider$1;
.super Ljava/lang/Object;
.source "GoogleLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider$1;->this$0:Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider$1;->this$0:Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->access$002(Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;Landroid/location/Location;)Landroid/location/Location;

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider$1;->this$0:Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->access$100(Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;)Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider$1;->this$0:Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->access$100(Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;)Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;->onLocationChanged(Landroid/location/Location;)V

    .line 48
    :cond_0
    return-void
.end method

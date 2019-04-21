.class Lcom/mcdonalds/app/storelocator/SimpleLocationListener;
.super Ljava/lang/Object;
.source "SimpleLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;
    }
.end annotation


# instance fields
.field private final mLocationListener:Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;

.field private final mTag:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;
    .param p2, "tag"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;->mLocationListener:Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;

    .line 19
    iput p2, p0, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;->mTag:I

    .line 20
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

    .line 28
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;->mLocationListener:Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;

    iget v1, p0, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;->mTag:I

    invoke-interface {v0, p1, v1}, Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;->onLocationUpdated(Landroid/location/Location;I)V

    .line 29
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "onProviderDisabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;->mLocationListener:Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;->mTag:I

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;->onLocationUpdated(Landroid/location/Location;I)V

    .line 46
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "onProviderEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onStatusChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    if-eqz p2, :cond_0

    if-ne p2, v3, :cond_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;->mLocationListener:Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;->mTag:I

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;->onLocationUpdated(Landroid/location/Location;I)V

    .line 37
    :cond_1
    return-void
.end method

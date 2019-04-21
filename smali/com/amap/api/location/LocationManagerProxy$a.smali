.class Lcom/amap/api/location/LocationManagerProxy$a;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/LocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/LocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/amap/api/location/LocationManagerProxy;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    .line 847
    .line 849
    if-eqz p1, :cond_5

    .line 850
    :try_start_0
    new-instance v3, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v3, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    move v2, v1

    .line 851
    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v4, v0, Lcom/amap/api/location/i;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v4, :cond_0

    .line 855
    iget-object v4, v0, Lcom/amap/api/location/i;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v4, v3}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 862
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    iget-wide v4, v0, Lcom/amap/api/location/i;->a:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 863
    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 868
    :goto_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 869
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v2}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 871
    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 872
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->e(Lcom/amap/api/location/LocationManagerProxy;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->f(Lcom/amap/api/location/LocationManagerProxy;)Lcom/amap/api/location/LocationManagerProxy$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 873
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->e(Lcom/amap/api/location/LocationManagerProxy;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/api/location/LocationManagerProxy;->f(Lcom/amap/api/location/LocationManagerProxy;)Lcom/amap/api/location/LocationManagerProxy$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 900
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v2, v1

    .line 877
    :goto_4
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 878
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/i;

    .line 879
    if-eqz v0, :cond_6

    iget-wide v4, v0, Lcom/amap/api/location/i;->a:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v3}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 880
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v3}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 884
    :cond_7
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 885
    :goto_5
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 886
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v2}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 888
    :cond_8
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 889
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->e(Lcom/amap/api/location/LocationManagerProxy;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->f(Lcom/amap/api/location/LocationManagerProxy;)Lcom/amap/api/location/LocationManagerProxy$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 890
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->e(Lcom/amap/api/location/LocationManagerProxy;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/api/location/LocationManagerProxy;->f(Lcom/amap/api/location/LocationManagerProxy;)Lcom/amap/api/location/LocationManagerProxy$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 894
    :catch_0
    move-exception v0

    .line 898
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 857
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    .prologue
    .line 922
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 915
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 910
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 905
    return-void
.end method

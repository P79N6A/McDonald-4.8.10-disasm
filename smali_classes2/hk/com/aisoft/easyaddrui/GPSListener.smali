.class public Lhk/com/aisoft/easyaddrui/GPSListener;
.super Ljava/lang/Object;
.source "GPSListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public provider1:Ljava/lang/String;

.field public provider2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/GPSListener;->provider1:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/GPSListener;->provider2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "locFromGps"    # Landroid/location/Location;

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Lhk/com/aisoft/easyaddrui/eaView;->sGPSY:D

    .line 25
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    sput-wide v2, Lhk/com/aisoft/easyaddrui/eaView;->sGPSX:D

    .line 26
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, "permission":I
    if-nez v0, :cond_0

    .line 29
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 31
    :cond_0
    invoke-static {}, Lhk/com/aisoft/easyaddrui/ResponseTrigger;->btnGPSPressAction()V

    .line 32
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "ERR"

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/GPSListener;->provider1:Ljava/lang/String;

    .line 43
    :goto_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/GPSListener;->provider1:Ljava/lang/String;

    const-string v1, "ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/GPSListener;->provider2:Ljava/lang/String;

    const-string v1, "ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v1, "zh-HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v1, "\u672a\u5f00\u542f\u5b9a\u4f4d\u670d\u52a1"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    :goto_1
    const-string v0, "onProviderDisabled"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 53
    :cond_0
    return-void

    .line 41
    :cond_1
    const-string v0, "ERR"

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/GPSListener;->provider2:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v1, "GPS is disabled"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 59
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v1, "zh-HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v1, "\u5df2\u5f00\u542f\u5b9a\u4f4d\u670d\u52a1"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v1, "GPS is enabled"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const-string v0, "AAA"

    const-string v1, "onStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.class Lcom/threatmetrix/TrustDefender/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/threatmetrix/TrustDefender/ao;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ao;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ao;->b:Landroid/location/Location;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ao;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ao;->b:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26
    sget-object v0, Lcom/threatmetrix/TrustDefender/ao;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onLocationChanged() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ao;->b:Landroid/location/Location;

    if-nez v7, :cond_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ao;->b:Landroid/location/Location;

    .line 31
    :cond_1
    return-void

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v0, v4, v8

    if-lez v0, :cond_5

    move v3, v1

    :goto_1
    const-wide/32 v8, -0x1d4c0

    cmp-long v0, v4, v8

    if-gez v0, :cond_6

    move v0, v1

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_7

    move v6, v1

    :goto_3
    if-nez v3, :cond_0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_8

    move v5, v1

    :goto_4
    if-gez v0, :cond_9

    move v4, v1

    :goto_5
    const/16 v3, 0xc8

    if-le v0, v3, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_c

    if-nez v7, :cond_b

    move v3, v1

    :goto_7
    if-nez v4, :cond_0

    if-eqz v6, :cond_3

    if-eqz v5, :cond_0

    :cond_3
    if-eqz v6, :cond_4

    if-nez v0, :cond_4

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v6, v2

    goto :goto_3

    :cond_8
    move v5, v2

    goto :goto_4

    :cond_9
    move v4, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v3, v2

    goto :goto_7

    :cond_c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/threatmetrix/TrustDefender/ao;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderDisabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/threatmetrix/TrustDefender/ao;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 48
    sget-object v1, Lcom/threatmetrix/TrustDefender/ao;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onStatusChanged: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string v0, "available "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "temporarily unavailable"

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "Out of Service"

    goto :goto_0

    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method

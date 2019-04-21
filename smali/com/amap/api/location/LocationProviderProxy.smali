.class public Lcom/amap/api/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"


# static fields
.field public static final AMapNetwork:Ljava/lang/String; = "lbs"

.field public static final AVAILABLE:I = 0x2

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/location/LocationManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amap/api/location/LocationProviderProxy;->a:Landroid/location/LocationManager;

    .line 22
    iput-object p2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private a()Landroid/location/LocationProvider;
    .locals 2

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationProviderProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/amap/api/location/LocationProviderProxy;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/amap/api/location/LocationProviderProxy;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/LocationProviderProxy;-><init>(Landroid/location/LocationManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 2

    .prologue
    .line 47
    :try_start_0
    const-string v0, "lbs"

    if-eqz v0, :cond_0

    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x2

    .line 59
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    :try_start_0
    const-string v0, "lbs"

    if-eqz v0, :cond_0

    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "lbs"

    .line 77
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method

.method public getPowerRequirement()I
    .locals 2

    .prologue
    .line 83
    :try_start_0
    const-string v0, "lbs"

    if-eqz v0, :cond_0

    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x2

    .line 96
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getPowerRequirement()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasMonetaryCost()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    :try_start_0
    const-string v1, "lbs"

    if-eqz v1, :cond_1

    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->hasMonetaryCost()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 120
    :try_start_0
    const-string v2, "lbs"

    if-eqz v2, :cond_3

    const-string v2, "lbs"

    iget-object v3, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    if-ne v2, v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 128
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationProvider;->meetsCriteria(Landroid/location/Criteria;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public requiresCell()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 143
    :try_start_0
    const-string v1, "lbs"

    if-eqz v1, :cond_1

    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->requiresCell()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requiresNetwork()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 161
    :try_start_0
    const-string v1, "lbs"

    if-eqz v1, :cond_1

    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->requiresNetwork()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requiresSatellite()Z
    .locals 2

    .prologue
    .line 179
    :try_start_0
    const-string v0, "lbs"

    if-eqz v0, :cond_0

    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->requiresNetwork()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 197
    :try_start_0
    const-string v1, "lbs"

    if-eqz v1, :cond_1

    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->supportsAltitude()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public supportsBearing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 215
    :try_start_0
    const-string v1, "lbs"

    if-eqz v1, :cond_1

    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->supportsBearing()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public supportsSpeed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 233
    :try_start_0
    const-string v1, "lbs"

    if-eqz v1, :cond_1

    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->supportsSpeed()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

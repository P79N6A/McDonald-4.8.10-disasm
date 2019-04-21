.class final Lcom/ensighten/K$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/K;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ensighten/K;


# direct methods
.method constructor <init>(Lcom/ensighten/K;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ensighten/K$1;->b:Lcom/ensighten/K;

    iput-object p2, p0, Lcom/ensighten/K$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    iget-object v1, p0, Lcom/ensighten/K$1;->b:Lcom/ensighten/K;

    iget-object v2, p0, Lcom/ensighten/K$1;->a:Landroid/content/Context;

    .line 1026
    const/4 v0, 0x0

    .line 1029
    :try_start_0
    invoke-static {}, Lcom/ensighten/i;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1030
    const-string v3, "Attempting to retrieve the Google Play advertising id."

    invoke-static {v3}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 1031
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1037
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 1038
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ensighten/K;->a:Ljava/lang/String;

    .line 1039
    invoke-static {}, Lcom/ensighten/i;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1040
    const-string v2, "The Google Play advertising id is %s."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/ensighten/K;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 1042
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ensighten/K;->b:Ljava/lang/String;

    .line 1043
    invoke-static {}, Lcom/ensighten/i;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1044
    const-string v0, "The Google Play isLimitAdTrackingEnabled is %s."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/ensighten/K;->b:Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    .line 1033
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/ensighten/i;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1034
    const-string v2, "Unable to retrieve the Google Play advertising id."

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_4
    const-string/jumbo v0, "unavailable"

    iput-object v0, v1, Lcom/ensighten/K;->a:Ljava/lang/String;

    .line 1048
    const-string/jumbo v0, "unavailable"

    iput-object v0, v1, Lcom/ensighten/K;->b:Ljava/lang/String;

    goto :goto_1
.end method

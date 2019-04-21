.class public Lcom/ensighten/google/ads/AdHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleLoadAd(Ljava/lang/Object;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/Object;

    .prologue
    .line 20
    :try_start_0
    instance-of v0, p0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_3

    .line 21
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "k"

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    invoke-static {v1, v2}, Lcom/ensighten/Utils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/AdListener;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 26
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/ensighten/d;

    if-nez v1, :cond_1

    .line 27
    :cond_0
    check-cast p0, Lcom/google/ads/AdView;

    .end local p0    # "source":Ljava/lang/Object;
    new-instance v1, Lcom/ensighten/d;

    invoke-direct {v1, v0}, Lcom/ensighten/d;-><init>(Lcom/google/ads/AdListener;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 52
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    invoke-static {}, Lcom/ensighten/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string v0, "Unable to find the AdListener member field on com.google.ads.AdView, can not set AdListener without potentially overwriting client code, no ad tracking available."

    invoke-static {v0}, Lcom/ensighten/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {}, Lcom/ensighten/i;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0

    .line 33
    :cond_3
    :try_start_1
    instance-of v0, p0, Lcom/google/ads/InterstitialAd;

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "b"

    invoke-static {p0, v0}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "k"

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    invoke-static {v1, v2}, Lcom/ensighten/Utils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/AdListener;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 39
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/ensighten/d;

    if-nez v1, :cond_1

    .line 40
    :cond_4
    check-cast p0, Lcom/google/ads/InterstitialAd;

    .end local p0    # "source":Ljava/lang/Object;
    new-instance v1, Lcom/ensighten/d;

    invoke-direct {v1, v0}, Lcom/ensighten/d;-><init>(Lcom/google/ads/AdListener;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    goto :goto_0

    .line 43
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_5
    invoke-static {}, Lcom/ensighten/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "Unable to find the AdListener member field on com.google.ads.InterstitialAd, can not set AdListener without potentially overwriting client code, no ad tracking available"

    invoke-static {v0}, Lcom/ensighten/i;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

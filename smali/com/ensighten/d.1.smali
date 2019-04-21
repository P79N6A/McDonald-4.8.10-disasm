.class public final Lcom/ensighten/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private a:Lcom/google/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/AdListener;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    .line 15
    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 19
    new-instance v0, Lcom/ensighten/y;

    const-string v1, "onDismissScreen"

    invoke-direct {v0, v1}, Lcom/ensighten/y;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v0}, Lcom/ensighten/Ensighten;->evaluateNotification(Lcom/ensighten/H;)V

    .line 21
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    invoke-interface {v0, p1}, Lcom/google/ads/AdListener;->onDismissScreen(Lcom/google/ads/Ad;)V

    .line 24
    :cond_0
    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;
    .param p2, "err"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 28
    new-instance v0, Lcom/ensighten/y;

    const-string v1, "onFailedToReceiveAd"

    invoke-direct {v0, v1}, Lcom/ensighten/y;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {v0}, Lcom/ensighten/Ensighten;->evaluateNotification(Lcom/ensighten/H;)V

    .line 30
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    invoke-interface {v0, p1, p2}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 37
    new-instance v0, Lcom/ensighten/y;

    const-string v1, "onLeaveApplication"

    invoke-direct {v0, v1}, Lcom/ensighten/y;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/ensighten/Ensighten;->evaluateNotification(Lcom/ensighten/H;)V

    .line 39
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    invoke-interface {v0, p1}, Lcom/google/ads/AdListener;->onLeaveApplication(Lcom/google/ads/Ad;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 46
    new-instance v0, Lcom/ensighten/y;

    const-string v1, "onPresentScreen"

    invoke-direct {v0, v1}, Lcom/ensighten/y;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Lcom/ensighten/Ensighten;->evaluateNotification(Lcom/ensighten/H;)V

    .line 48
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    invoke-interface {v0, p1}, Lcom/google/ads/AdListener;->onPresentScreen(Lcom/google/ads/Ad;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 55
    new-instance v0, Lcom/ensighten/y;

    const-string v1, "onReceiveAd"

    invoke-direct {v0, v1}, Lcom/ensighten/y;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/ensighten/Ensighten;->evaluateNotification(Lcom/ensighten/H;)V

    .line 57
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ensighten/d;->a:Lcom/google/ads/AdListener;

    invoke-interface {v0, p1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V

    .line 60
    :cond_0
    return-void
.end method

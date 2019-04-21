.class public Lcom/mcdonalds/app/account/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-string v0, "onBind"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lcom/mcdonalds/app/account/Authenticator;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/Authenticator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/mcdonalds/app/web/WebHamburgerActivity;
.super Lcom/mcdonalds/app/web/WebActivity;
.source "WebHamburgerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/mcdonalds/app/web/WebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    const/4 v0, 0x1

    return v0
.end method

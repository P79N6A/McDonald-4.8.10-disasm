.class public Lcom/mcdonalds/app/account/CardHintActivity;
.super Lcom/mcdonalds/app/ui/URLNavigationActivity;
.source "CardHintActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContainerResource()I
    .locals 2

    .prologue
    const-string v0, "getContainerResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected getContentViewResource()I
    .locals 2

    .prologue
    const-string v0, "getContentViewResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const v0, 0x7f040021

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/CardHintActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    return-void
.end method

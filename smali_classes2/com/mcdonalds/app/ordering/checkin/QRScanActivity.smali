.class public Lcom/mcdonalds/app/ordering/checkin/QRScanActivity;
.super Lcom/mcdonalds/app/ui/URLNavigationActivity;
.source "QRScanActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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

    .line 20
    const v0, 0x7f1100bd

    return v0
.end method

.method protected getContentViewResource()I
    .locals 2

    .prologue
    const-string v0, "getContentViewResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    const v0, 0x7f04002c

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onBackPressed()V

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/QRScanActivity;->finish()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/QRScanActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 44
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/QRScanActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/checkin/QRScanActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 47
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 48
    return-void
.end method

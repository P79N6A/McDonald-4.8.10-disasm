.class public Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutActivity;
.super Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;
.source "EatInTakeOutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 17
    return-void
.end method

.class public Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "DriveThruConfirmationActivity.java"


# instance fields
.field private fragment:Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationActivity;->fragment:Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;

    .line 17
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationActivity;->getContainerResource()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationActivity;->fragment:Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 21
    return-void
.end method

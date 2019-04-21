.class public Lcom/mcdonalds/app/ordering/summary/TrackOrderActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "TrackOrderActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f0907c8

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/TrackOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/TrackOrderActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 20
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/summary/TrackOrderActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 23
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 24
    return-void
.end method

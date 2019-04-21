.class public Lcom/mcdonalds/app/ordering/alert/checkin/RestaurantMismatchFragment;
.super Lcom/mcdonalds/app/ordering/alert/AlertFragment;
.source "RestaurantMismatchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentResourceId()I
    .locals 2

    .prologue
    const-string v0, "getFragmentResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    const v0, 0x7f04010b

    return v0
.end method

.method public onNegativeButtonClicked()V
    .locals 2

    .prologue
    const-string v0, "onNegativeButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/RestaurantMismatchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 22
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/RestaurantMismatchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 23
    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 2

    .prologue
    const-string v0, "onPositiveButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/RestaurantMismatchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/RestaurantMismatchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 29
    return-void
.end method

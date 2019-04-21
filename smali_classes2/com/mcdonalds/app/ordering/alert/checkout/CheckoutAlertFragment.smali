.class public abstract Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;
.source "CheckoutAlertFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButtonClicked()V
    .locals 2

    .prologue
    const-string v0, "onPositiveButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 14
    return-void
.end method

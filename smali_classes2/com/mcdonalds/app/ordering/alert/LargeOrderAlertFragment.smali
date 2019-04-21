.class public Lcom/mcdonalds/app/ordering/alert/LargeOrderAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/AlertFragment;
.source "LargeOrderAlertFragment.java"


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

    .line 15
    const v0, 0x7f0400c0

    return v0
.end method

.method public onNegativeButtonClicked()V
    .locals 2

    .prologue
    const-string v0, "onNegativeButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 2

    .prologue
    const-string v0, "onPositiveButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const-class v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryActivity;

    const-string v1, "order_summary"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/alert/LargeOrderAlertFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 26
    return-void
.end method

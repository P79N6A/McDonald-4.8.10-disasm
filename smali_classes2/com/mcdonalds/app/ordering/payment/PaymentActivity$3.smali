.class Lcom/mcdonalds/app/ordering/payment/PaymentActivity$3;
.super Ljava/lang/Object;
.source "PaymentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$3;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$3;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->access$000(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->tableServices()V

    .line 125
    return-void
.end method

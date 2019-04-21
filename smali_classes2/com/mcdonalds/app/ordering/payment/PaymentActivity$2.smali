.class Lcom/mcdonalds/app/ordering/payment/PaymentActivity$2;
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
    .line 113
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$2;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$2;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$2;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->access$000(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->takeOut()V

    .line 118
    return-void
.end method

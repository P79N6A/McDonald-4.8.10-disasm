.class Lcom/mcdonalds/app/ordering/payment/PaymentActivity$8;
.super Ljava/lang/Object;
.source "PaymentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->requestCVV(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$8;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 262
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->access$000(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setCVVEntered(Ljava/lang/String;)V

    .line 263
    return-void
.end method

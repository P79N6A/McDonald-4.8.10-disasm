.class Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5$1;
.super Ljava/lang/Object;
.source "PreparePaymentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

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

    .line 587
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 588
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 589
    return-void
.end method

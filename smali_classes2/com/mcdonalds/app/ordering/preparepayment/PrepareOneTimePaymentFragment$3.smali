.class Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$3;
.super Ljava/lang/Object;
.source "PrepareOneTimePaymentFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->afterResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

.field final synthetic val$InvoiceFooter:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$3;->val$InvoiceFooter:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "onCheckedChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-static {v1, p2}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->access$302(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Z)Z

    .line 318
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$3;->val$InvoiceFooter:Landroid/view/View;

    const v2, 0x7f110431

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 319
    return-void

    .line 318
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

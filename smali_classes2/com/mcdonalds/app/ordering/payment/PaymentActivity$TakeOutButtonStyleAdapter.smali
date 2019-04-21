.class public Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;
.super Ljava/lang/Object;
.source "PaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TakeOutButtonStyleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRed(Landroid/widget/Button;Z)V
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "isRed"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
    .end annotation

    .prologue
    const-string v0, "isRed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    if-eqz p2, :cond_0

    .line 595
    const v0, 0x7f02008d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_0
    const v0, 0x7f02008b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

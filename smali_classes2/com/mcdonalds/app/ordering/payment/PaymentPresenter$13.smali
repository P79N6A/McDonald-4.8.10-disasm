.class Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$13;
.super Ljava/lang/Object;
.source "PaymentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkinAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$13;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$13;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkin(Z)V

    .line 1262
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$13;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setPaymentNewCardStub(Z)V

    .line 1263
    return-void
.end method
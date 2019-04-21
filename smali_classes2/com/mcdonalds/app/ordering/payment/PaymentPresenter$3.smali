.class Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$3;
.super Ljava/lang/Object;
.source "PaymentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->handleOrderNotReadyError()V
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
    .line 877
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$3;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

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

    .line 880
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$3;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$500(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    .line 881
    return-void
.end method

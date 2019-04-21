.class Lcom/mcdonalds/app/ordering/payment/PaymentActivity$17;
.super Ljava/lang/Object;
.source "PaymentActivity.java"

# interfaces
.implements Landroid/databinding/DataBindingComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentActivity;
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
    .line 585
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$17;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTakeOutButtonStyleAdapter()Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;
    .locals 2

    .prologue
    const-string v0, "getTakeOutButtonStyleAdapter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$17;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    return-object v0
.end method

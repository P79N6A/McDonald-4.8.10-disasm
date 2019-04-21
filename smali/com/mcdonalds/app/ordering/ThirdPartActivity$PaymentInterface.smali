.class Lcom/mcdonalds/app/ordering/ThirdPartActivity$PaymentInterface;
.super Ljava/lang/Object;
.source "ThirdPartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/ThirdPartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$PaymentInterface;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity;
    .param p2, "x1"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ThirdPartActivity$PaymentInterface;-><init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V

    return-void
.end method


# virtual methods
.method public onPaymentResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "onPaymentResult"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$PaymentInterface;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->access$300(Lcom/mcdonalds/app/ordering/ThirdPartActivity;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

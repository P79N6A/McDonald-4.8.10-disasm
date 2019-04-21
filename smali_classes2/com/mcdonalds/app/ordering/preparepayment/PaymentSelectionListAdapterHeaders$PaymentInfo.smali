.class Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;
.super Ljava/lang/Object;
.source "PaymentSelectionListAdapterHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentInfo"
.end annotation


# instance fields
.field mCreditCardRowType:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

.field mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

.field mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 0
    .param p2, "paymentMode"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .param p3, "creditCardRowType"    # Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;
    .param p4, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 439
    iput-object p3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->mCreditCardRowType:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    .line 440
    iput-object p4, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 441
    return-void
.end method


# virtual methods
.method public getCreditCardRowType()Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;
    .locals 2

    .prologue
    const-string v0, "getCreditCardRowType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->mCreditCardRowType:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    return-object v0
.end method

.method public getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 2

    .prologue
    const-string v0, "getPaymentCard"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    return-object v0
.end method

.method public getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .locals 2

    .prologue
    const-string v0, "getPaymentMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    return-object v0
.end method

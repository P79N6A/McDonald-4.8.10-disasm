.class public Lcom/mcdonalds/app/model/PaymentResult;
.super Ljava/lang/Object;
.source "PaymentResult.java"


# instance fields
.field private cutomerPaymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerPaymentMethodID"
    .end annotation
.end field

.field private orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderNumber"
    .end annotation
.end field

.field private paymentDataId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentDataId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCutomerPaymentMethodId()I
    .locals 2

    .prologue
    const-string v0, "getCutomerPaymentMethodId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget v0, p0, Lcom/mcdonalds/app/model/PaymentResult;->cutomerPaymentMethodId:I

    return v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getOrderNumber"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/mcdonalds/app/model/PaymentResult;->orderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDataId()I
    .locals 2

    .prologue
    const-string v0, "getPaymentDataId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget v0, p0, Lcom/mcdonalds/app/model/PaymentResult;->paymentDataId:I

    return v0
.end method

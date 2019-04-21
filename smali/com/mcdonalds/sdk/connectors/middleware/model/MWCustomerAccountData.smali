.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerAccountData;
.super Ljava/lang/Object;
.source "MWCustomerAccountData.java"


# instance fields
.field public accountID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AccountID"
    .end annotation
.end field

.field public customerPaymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerPaymentMethodId"
    .end annotation
.end field

.field public isPreferred:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsPreferred"
    .end annotation
.end field

.field public isValid:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NickName"
    .end annotation
.end field

.field public paymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethodId"
    .end annotation
.end field

.field public schemaId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SchemaId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

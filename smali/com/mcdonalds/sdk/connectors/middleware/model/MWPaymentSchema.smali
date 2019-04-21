.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;
.super Ljava/lang/Object;
.source "MWPaymentSchema.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAllowBalanceInquiry:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AllowBalanceInquiry"
    .end annotation
.end field

.field private mAllowCardUpdate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AllowCardUpdate"
    .end annotation
.end field

.field private mCVVLength:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CVVLength"
    .end annotation
.end field

.field private mDisplayImageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayImageName"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field private mPaymentSchemaID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentSchemaID"
    .end annotation
.end field

.field private mRequiresCVV:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequiresCVV"
    .end annotation
.end field

.field private mStaticData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private meArchCardAmountPreDefList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eArchCardAmountPreDefList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowBalanceInquiry()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->mAllowBalanceInquiry:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowCardUpdate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->mAllowCardUpdate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCVVLength()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->mCVVLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDisplayImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->mDisplayImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMeArchCardAmountPreDefList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->meArchCardAmountPreDefList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentSchemaID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->mPaymentSchemaID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequiresCVV()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->mRequiresCVV:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStaticData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;->mStaticData:Ljava/util/List;

    return-object v0
.end method

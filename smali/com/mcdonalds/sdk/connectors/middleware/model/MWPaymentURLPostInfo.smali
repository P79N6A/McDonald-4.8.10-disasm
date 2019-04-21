.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;
.super Ljava/lang/Object;
.source "MWPaymentURLPostInfo.java"


# instance fields
.field mBody:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Body"
    .end annotation
.end field

.field mCustomerId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerID"
    .end annotation
.end field

.field mMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Method"
    .end annotation
.end field

.field mURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "URL"
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
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;->mCustomerId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;->mURL:Ljava/lang/String;

    return-object v0
.end method

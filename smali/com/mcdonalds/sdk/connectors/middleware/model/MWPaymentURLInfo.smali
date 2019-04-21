.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLInfo;
.super Ljava/lang/Object;
.source "MWPaymentURLInfo.java"


# instance fields
.field mCustomerId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerId"
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
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomerId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLInfo;->mCustomerId:Ljava/lang/Long;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLInfo;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomerId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "customerId"    # Ljava/lang/Long;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLInfo;->mCustomerId:Ljava/lang/Long;

    .line 15
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "URL"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLInfo;->mURL:Ljava/lang/String;

    .line 23
    return-void
.end method

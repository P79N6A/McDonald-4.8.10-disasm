.class Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;
.super Ljava/lang/Object;
.source "MWPreparePaymentResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MWPaymentCustomDataEntry"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Key"
    .end annotation
.end field

.field private mValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Value"
    .end annotation
.end field


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;->mValue:Ljava/lang/String;

    return-object v0
.end method

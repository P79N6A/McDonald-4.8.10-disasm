.class public final Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;
.super Ljava/lang/Object;
.source "AnalyticsArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductMapBuilder"
.end annotation


# instance fields
.field private mProductMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    return-object v0
.end method

.method public setTransactionCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;
    .locals 2
    .param p1, "transactionCategory"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    const-string v1, "category"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object p0
.end method

.method public setTransactionCurrency(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;
    .locals 2
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    const-string v1, "currency"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;
    .locals 2
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    const-string v1, "transactionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-object p0
.end method

.method public setTransactionItemName(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;
    .locals 2
    .param p1, "transactionItemName"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object p0
.end method

.method public setTransactionPrice(Ljava/lang/Double;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;
    .locals 2
    .param p1, "transactionPrice"    # Ljava/lang/Double;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    const-string v1, "price"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-object p0
.end method

.method public setTransactionQuantity(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;
    .locals 2
    .param p1, "transactionQuantity"    # Ljava/lang/Integer;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    const-string v1, "quantity"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-object p0
.end method

.method public setTransactionSKU(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;
    .locals 2
    .param p1, "transactionSKU"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->mProductMap:Ljava/util/Map;

    const-string v1, "sku"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-object p0
.end method

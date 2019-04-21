.class public final Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;
.super Ljava/lang/Object;
.source "AnalyticsArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionMapBuilder"
.end annotation


# instance fields
.field private mTransactionMap:Ljava/util/Map;
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
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

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
    .line 181
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

    return-object v0
.end method

.method public setTransactionAffiliation(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;
    .locals 2
    .param p1, "transactionAffiliation"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

    const-string v1, "affliation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object p0
.end method

.method public setTransactionCurrencyCode(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;
    .locals 2
    .param p1, "transactionCurrencyCode"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

    const-string v1, "CurrencyCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;
    .locals 2
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

    const-string v1, "transactionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object p0
.end method

.method public setTransactionRevenue(Ljava/lang/Double;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;
    .locals 2
    .param p1, "transactionRevenue"    # Ljava/lang/Double;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

    const-string v1, "revenue"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object p0
.end method

.method public setTransactionShipping(Ljava/lang/Double;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;
    .locals 2
    .param p1, "transactionShipping"    # Ljava/lang/Double;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

    const-string v1, "Shipping"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-object p0
.end method

.method public setTransactionTax(Ljava/lang/Double;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;
    .locals 2
    .param p1, "transactionTax"    # Ljava/lang/Double;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

    const-string v1, "Tax"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-object p0
.end method

.method public setTransactionTotal(D)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;
    .locals 3
    .param p1, "total"    # D

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->mTransactionMap:Ljava/util/Map;

    const-string v1, "transactionTotal"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-object p0
.end method

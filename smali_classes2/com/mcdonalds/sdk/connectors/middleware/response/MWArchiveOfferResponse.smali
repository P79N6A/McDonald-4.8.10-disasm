.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWArchiveOfferResponse;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
.source "MWArchiveOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/MWArchiveOfferResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWArchiveOfferResponse<TT;>;"
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;-><init>()V

    return-void
.end method

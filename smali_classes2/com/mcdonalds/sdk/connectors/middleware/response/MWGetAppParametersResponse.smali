.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAppParametersResponse;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
.source "MWGetAppParametersResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;-><init>()V

    return-void
.end method

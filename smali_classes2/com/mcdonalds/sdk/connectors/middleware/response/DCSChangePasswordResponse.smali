.class public Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;
.source "DCSChangePasswordResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse$DCSChangePasswordDetails;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse$DCSChangePasswordDetails;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;-><init>()V

    return-void
.end method
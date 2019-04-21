.class public Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;
.source "DCSRegistrationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse$DCSRegistrationDetails;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse$DCSRegistrationDetails;",
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

.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "MWOrderingConnectorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

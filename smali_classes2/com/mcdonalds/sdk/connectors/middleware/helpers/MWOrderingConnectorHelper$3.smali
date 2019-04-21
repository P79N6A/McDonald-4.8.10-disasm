.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->orderUnAttendedCheckIn(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 227
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v5, :cond_1

    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getEcpResultCode()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getEcpResultCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, -0x1784

    if-ne v5, v6, :cond_3

    .line 231
    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3$1;

    invoke-direct {v7, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;)V

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    instance-of v8, v5, Lcom/google/gson/Gson;

    if-nez v8, :cond_2

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse;

    .line 232
    .local v3, "responseMWErrorResponse":Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse<Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;>;"
    iget-object v5, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse;->data:Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponseData;

    iget-object v4, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponseData;->backEndResponse:Ljava/lang/Object;

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;

    .line 233
    .local v4, "unAttendedCheckInResponse":Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;
    if-eqz v4, :cond_0

    .line 234
    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;->toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;)Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fromFoundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 245
    .end local v3    # "responseMWErrorResponse":Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse<Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;>;"
    .end local v4    # "unAttendedCheckInResponse":Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v5, v2, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 247
    .end local v2    # "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    :cond_1
    return-void

    .line 231
    .restart local v2    # "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    :cond_2
    :try_start_1
    check-cast v5, Lcom/google/gson/Gson;

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "nullException":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NullPointerException while parsing the Partial payment data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    .end local v1    # "nullException":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "jsonException":Lcom/google/gson/JsonSyntaxException;
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JsonSyntaxException while parsing the Partial payment data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v0    # "jsonException":Lcom/google/gson/JsonSyntaxException;
    :cond_3
    if-eqz p1, :cond_0

    .line 242
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;->toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;)Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fromFoundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 224
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

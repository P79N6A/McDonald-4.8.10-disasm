.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$3;
.super Ljava/lang/Object;
.source "MWDCSConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->signOut(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/Object;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->setAppParams(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->access$002(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .line 156
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, p2, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 157
    return-void
.end method

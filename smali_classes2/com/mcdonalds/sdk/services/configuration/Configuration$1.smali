.class Lcom/mcdonalds/sdk/services/configuration/Configuration$1;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/configuration/Configuration;->networkUpdate(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;)V
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
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/configuration/Configuration;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/configuration/Configuration;Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->this$0:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    iput-object p2, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->val$listener:Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 619
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->onResponse(Ljava/util/Map;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/Map;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "response"    # Ljava/util/Map;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 623
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->this$0:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->access$000(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->access$100(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->this$0:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->this$0:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->access$000(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mergeConfiguration(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->access$002(Lcom/mcdonalds/sdk/services/configuration/Configuration;Ljava/util/Map;)Ljava/util/Map;

    .line 625
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->this$0:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->this$0:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->access$000(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->access$200(Lcom/mcdonalds/sdk/services/configuration/Configuration;Ljava/util/Map;)V

    .line 626
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->this$0:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->access$300(Lcom/mcdonalds/sdk/services/configuration/Configuration;)V

    .line 633
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;->val$listener:Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;->onComplete()V

    goto :goto_0
.end method

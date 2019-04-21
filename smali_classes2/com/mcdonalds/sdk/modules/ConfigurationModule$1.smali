.class Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;
.super Ljava/lang/Object;
.source "ConfigurationModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/ConfigurationModule;->getServerConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/ConfigurationModule;

.field final synthetic val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/ConfigurationModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/ConfigurationModule;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;->this$0:Lcom/mcdonalds/sdk/modules/ConfigurationModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;->val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;->onResponse(Ljava/util/Map;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/Map;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;->val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 34
    :cond_0
    return-void
.end method

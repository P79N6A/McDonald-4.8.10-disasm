.class Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;
.super Ljava/lang/Object;
.source "RonaldServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/RonaldServiceConnection;->getModule(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$moduleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/RonaldServiceConnection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;->this$0:Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

    iput-object p2, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;->val$moduleName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;->val$moduleName:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/BaseModule;

    .line 72
    .local v1, "module":Lcom/mcdonalds/sdk/modules/BaseModule;
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 75
    .local v0, "casted":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/BaseModule;>;"
    invoke-interface {v0, v1, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 77
    .end local v0    # "casted":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/BaseModule;>;"
    :cond_0
    return-void
.end method

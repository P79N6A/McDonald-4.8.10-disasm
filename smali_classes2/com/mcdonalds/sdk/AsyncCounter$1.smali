.class Lcom/mcdonalds/sdk/AsyncCounter$1;
.super Ljava/lang/Object;
.source "AsyncCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/AsyncCounter;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/AsyncCounter;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/AsyncCounter;

    .prologue
    .line 27
    .local p0, "this":Lcom/mcdonalds/sdk/AsyncCounter$1;, "Lcom/mcdonalds/sdk/AsyncCounter$1;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/AsyncCounter$1;->this$0:Lcom/mcdonalds/sdk/AsyncCounter;

    iput-object p2, p0, Lcom/mcdonalds/sdk/AsyncCounter$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/AsyncCounter$1;, "Lcom/mcdonalds/sdk/AsyncCounter$1;"
    const/4 v2, 0x0

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/AsyncCounter$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 31
    return-void
.end method

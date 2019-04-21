.class Lcom/mcdonalds/app/util/ServiceUtils$7;
.super Ljava/lang/Object;
.source "ServiceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/ServiceUtils;->retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/ServiceUtils;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$offers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/ServiceUtils;Lcom/mcdonalds/sdk/AsyncListener;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mcdonalds/app/util/ServiceUtils$7;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    iput-object p2, p0, Lcom/mcdonalds/app/util/ServiceUtils$7;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/app/util/ServiceUtils$7;->val$offers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "run"

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils$7;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$7;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    iget-object v2, p0, Lcom/mcdonalds/app/util/ServiceUtils$7;->val$offers:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/ServiceUtils;->access$900(Lcom/mcdonalds/app/util/ServiceUtils;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 354
    return-void
.end method

.class Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread$1;
.super Ljava/lang/Object;
.source "OrderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread$1;->this$0:Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "run"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread$1;->this$0:Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->access$100(Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread$1;->val$result:Ljava/util/List;

    invoke-interface {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 126
    return-void
.end method

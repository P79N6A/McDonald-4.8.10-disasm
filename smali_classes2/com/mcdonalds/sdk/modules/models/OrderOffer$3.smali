.class final Lcom/mcdonalds/sdk/modules/models/OrderOffer$3;
.super Ljava/lang/Object;
.source "OrderOffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/models/OrderOffer;->createOrderOffer(Lcom/mcdonalds/sdk/modules/models/Offer;ZLcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOffer;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$3;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$3;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-interface {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 80
    return-void
.end method

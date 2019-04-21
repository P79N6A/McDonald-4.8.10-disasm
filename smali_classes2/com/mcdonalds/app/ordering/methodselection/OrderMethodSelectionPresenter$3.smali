.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$3;
.super Ljava/lang/Object;
.source "OrderMethodSelectionPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupStoreForDelivery()V
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
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$3;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$3;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->hideActivityIndicator()V

    .line 269
    if-nez p3, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$3;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$200(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$3;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

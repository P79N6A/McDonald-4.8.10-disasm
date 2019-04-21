.class Lcom/mcdonalds/app/account/EditCardPresenter$2;
.super Ljava/lang/Object;
.source "EditCardPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/EditCardPresenter;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/EditCardPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EditCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/EditCardPresenter;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$2;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 279
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/EditCardPresenter$2;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    if-eqz p1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$2;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$100(Lcom/mcdonalds/app/account/EditCardPresenter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 285
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$2;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$200(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v1

    invoke-virtual {v0, p1, v4, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updatePayment(Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 296
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$2;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mcdonalds/app/account/EditCardView;->notifyOneTimePaymentSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    if-eqz p3, :cond_2

    .line 290
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$2;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v1

    invoke-interface {v1}, Lcom/mcdonalds/app/account/EditCardView;->stopSavingCardIndicator()V

    .line 291
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$2;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/mcdonalds/app/account/EditCardView;->notifyCardSavingError(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$2;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v1

    invoke-interface {v1}, Lcom/mcdonalds/app/account/EditCardView;->stopSavingCardIndicator()V

    .line 294
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$2;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v1

    const v2, 0x7f090215

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/account/EditCardView;->notifyCardSavingError(I)V

    goto :goto_0
.end method

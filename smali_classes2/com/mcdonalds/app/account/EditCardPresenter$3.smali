.class Lcom/mcdonalds/app/account/EditCardPresenter$3;
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
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
    .line 299
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditCardPresenter$3;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
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

    .line 302
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter$3;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/account/EditCardView;->stopSavingCardIndicator()V

    .line 303
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter$3;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/account/EditCardView;->notifyCardSaved()V

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    if-eqz p3, :cond_1

    .line 306
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter$3;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/mcdonalds/app/account/EditCardView;->notifyCardSavingError(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter$3;->this$0:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/account/EditCardPresenter;->access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;

    move-result-object v0

    const v1, 0x7f090215

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/account/EditCardView;->notifyCardSavingError(I)V

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

    .line 299
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/EditCardPresenter$3;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

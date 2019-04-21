.class Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1;
.super Ljava/lang/Object;
.source "LiteAccountProfileFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;

.field final synthetic val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1;->this$1:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;

    iput-object p2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

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

    .line 406
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 407
    if-nez p3, :cond_0

    .line 408
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v1, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logout(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 419
    :goto_0
    return-void

    .line 417
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

    .line 403
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

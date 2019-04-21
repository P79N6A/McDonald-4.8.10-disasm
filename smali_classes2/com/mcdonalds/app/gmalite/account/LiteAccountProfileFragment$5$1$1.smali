.class Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1$1;
.super Ljava/lang/Object;
.source "LiteAccountProfileFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1$1;->this$2:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;

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

    .line 450
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1$1;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Void;
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

    .line 453
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1$1;->this$2:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;->this$1:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mcdonalds/app/MainActivity;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1$1;->this$2:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;->this$1:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-string v1, "dashboard"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1$1;->this$2:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;->this$1:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0
.end method

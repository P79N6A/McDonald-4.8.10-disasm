.class Lcom/mcdonalds/app/account/DeleteAccountFragment$2;
.super Ljava/lang/Object;
.source "DeleteAccountFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/DeleteAccountFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

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

    .line 181
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 188
    if-eqz p1, :cond_0

    const-string v1, "Pass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$300(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 194
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/mcdonalds/app/account/DeleteAccountFragment$2$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment$2$1;-><init>(Lcom/mcdonalds/app/account/DeleteAccountFragment$2;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 206
    :cond_0
    if-eqz p3, :cond_1

    .line 207
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$002(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)Z

    .line 210
    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v1, v5}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$100(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)V

    goto :goto_0
.end method

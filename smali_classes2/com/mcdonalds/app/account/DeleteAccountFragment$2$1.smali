.class Lcom/mcdonalds/app/account/DeleteAccountFragment$2$1;
.super Ljava/lang/Object;
.source "DeleteAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/account/DeleteAccountFragment$2;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/DeleteAccountFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/DeleteAccountFragment$2;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2$1;->this$1:Lcom/mcdonalds/app/account/DeleteAccountFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2$1;->this$1:Lcom/mcdonalds/app/account/DeleteAccountFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$400(Lcom/mcdonalds/app/account/DeleteAccountFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logout(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 200
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2$1;->this$1:Lcom/mcdonalds/app/account/DeleteAccountFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$500(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V

    .line 202
    return-void
.end method

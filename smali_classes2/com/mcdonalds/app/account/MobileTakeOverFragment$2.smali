.class Lcom/mcdonalds/app/account/MobileTakeOverFragment$2;
.super Ljava/lang/Object;
.source "MobileTakeOverFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/MobileTakeOverFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$2;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x2

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    if-eqz p3, :cond_1

    .line 100
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$2;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$202(Lcom/mcdonalds/app/account/MobileTakeOverFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 106
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$2;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$200(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 108
    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setActivationOption(I)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$2;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$400(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$2;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$600(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

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

    .line 92
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/MobileTakeOverFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

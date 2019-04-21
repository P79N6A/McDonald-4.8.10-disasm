.class Lcom/mcdonalds/app/customer/ValidationResendFragment$2;
.super Ljava/lang/Object;
.source "ValidationResendFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/ValidationResendFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/ValidationResendFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$2;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

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
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$2;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->access$000(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V

    .line 189
    if-eqz p3, :cond_0

    .line 191
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    .line 195
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 196
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$2;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->access$100(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V

    goto :goto_0

    .line 200
    :cond_1
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$2;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    const v2, 0x7f090311

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "unknownError":Lcom/mcdonalds/sdk/AsyncException;
    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 184
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/ValidationResendFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

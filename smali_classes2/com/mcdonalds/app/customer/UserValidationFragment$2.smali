.class Lcom/mcdonalds/app/customer/UserValidationFragment$2;
.super Ljava/lang/Object;
.source "UserValidationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/UserValidationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/UserValidationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$2;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 182
    .local v1, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 183
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$2;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$300(Lcom/mcdonalds/app/customer/UserValidationFragment;)V

    .line 184
    new-instance v2, Lcom/mcdonalds/app/customer/UserValidationFragment$2$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/customer/UserValidationFragment$2$1;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 203
    return-void
.end method

.class Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;
.super Ljava/lang/Object;
.source "MobileTakeOverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/MobileTakeOverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$000(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$100(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "mobile":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$200(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$400(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$200(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$300(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 89
    .end local v0    # "mobile":Ljava/lang/String;
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/MobileTakeOverFragment$1;->this$0:Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;->access$500(Lcom/mcdonalds/app/account/MobileTakeOverFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

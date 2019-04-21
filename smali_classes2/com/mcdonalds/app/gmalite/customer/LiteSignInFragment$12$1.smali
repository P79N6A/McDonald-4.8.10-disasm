.class Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;
.super Ljava/lang/Object;
.source "LiteSignInFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

.field final synthetic val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

    iput-object p2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 622
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Verify Account"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    sget-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$15;->$SwitchMap$com$mcdonalds$sdk$modules$customer$CustomerProfile$AccountVerificationType:[I

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 632
    :goto_0
    return-void

    .line 626
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

    iget-object v1, v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$1200(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    goto :goto_0

    .line 629
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

    iget-object v1, v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$1300(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    goto :goto_0

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

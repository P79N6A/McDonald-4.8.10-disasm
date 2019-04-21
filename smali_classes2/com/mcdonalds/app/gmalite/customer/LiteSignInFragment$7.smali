.class Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$7;
.super Ljava/lang/Object;
.source "LiteSignInFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$7;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$7;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Forgot password"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$7;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "email"

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$7;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$7;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

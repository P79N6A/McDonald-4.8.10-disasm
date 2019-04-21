.class Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "ResetPasswordConfirmationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 58
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "validation_method"

    iget-object v3, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->access$000(Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    iget-object v2, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;

    const-class v3, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    const-string v4, "reset_password"

    invoke-virtual {v2, v3, v4, v1}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

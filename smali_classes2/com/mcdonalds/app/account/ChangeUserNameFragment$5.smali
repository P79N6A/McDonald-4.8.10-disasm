.class Lcom/mcdonalds/app/account/ChangeUserNameFragment$5;
.super Ljava/lang/Object;
.source "ChangeUserNameFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChangeUserNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$5;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "first"

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$5;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->access$300(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "last"

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$5;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->access$400(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$5;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(ILandroid/content/Intent;)V

    .line 231
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$5;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 232
    return-void
.end method

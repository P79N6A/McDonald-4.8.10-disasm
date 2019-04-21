.class Lcom/mcdonalds/app/msa/MsaEditFragment$3;
.super Ljava/lang/Object;
.source "MsaEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$3;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

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

    .line 99
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$3;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MsaEditFragment;->saveSettings()V

    .line 100
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$3;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/msa/MsaEditFragment;->access$100(Lcom/mcdonalds/app/msa/MsaEditFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v0, Lcom/mcdonalds/app/msa/MsaEditFragment$3$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/msa/MsaEditFragment$3$1;-><init>(Lcom/mcdonalds/app/msa/MsaEditFragment$3;)V

    .line 107
    .local v0, "positiveClick":Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$3;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$3;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    const v3, 0x7f090664

    .line 108
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    .line 109
    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 115
    .end local v0    # "positiveClick":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$3;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/msa/MsaEditFragment;->access$200(Lcom/mcdonalds/app/msa/MsaEditFragment;)V

    goto :goto_0
.end method

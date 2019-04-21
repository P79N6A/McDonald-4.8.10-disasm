.class Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->dismissDialog(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;->this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    iput-object p2, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;->val$dialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1162
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;->this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->access$700(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;->this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->access$700(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;->val$dialog:Landroid/content/DialogInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1166
    :cond_0
    return-void
.end method

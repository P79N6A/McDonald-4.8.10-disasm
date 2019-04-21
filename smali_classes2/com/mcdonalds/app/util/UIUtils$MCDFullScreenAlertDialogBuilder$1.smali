.class Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder$1;->this$0:Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->access$400(Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 881
    return-void
.end method

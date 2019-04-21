.class Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->onShowListener()Landroid/content/DialogInterface$OnShowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$1;->this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const-string v0, "onShow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$1;->this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->access$500(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$1;->this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->access$500(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$1;->this$0:Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->access$600(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;Landroid/content/DialogInterface;)V

    .line 1152
    :cond_0
    return-void
.end method

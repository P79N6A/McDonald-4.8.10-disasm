.class Lcom/mcdonalds/app/ordering/ThirdPartActivity$2;
.super Ljava/lang/Object;
.source "ThirdPartActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/ThirdPartActivity;->loadResultsURI(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$2;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onErrorResponse"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1, p1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$2;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090575

    .line 92
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090619

    .line 93
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/ThirdPartActivity$2$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/ThirdPartActivity$2$1;-><init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity$2;)V

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 103
    return-void
.end method

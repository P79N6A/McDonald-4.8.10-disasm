.class Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$2;
.super Ljava/lang/Object;
.source "TableServiceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->showInvalidInputAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$2;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$2;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$2;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 128
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$2;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$2;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    invoke-static {v0, v1, v4}, Lcom/mcdonalds/app/util/UIUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;Z)V

    .line 129
    return-void
.end method

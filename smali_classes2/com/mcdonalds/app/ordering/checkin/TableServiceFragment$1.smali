.class Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;
.super Ljava/lang/Object;
.source "TableServiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;
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
    .line 104
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mFinishAndPayButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->access$000(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "userInputId":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->access$100(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;I)V

    .line 118
    .end local v0    # "userInputId":I
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->access$200(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mTableServiceTouchableLayout:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 116
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;->this$0:Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_0
.end method

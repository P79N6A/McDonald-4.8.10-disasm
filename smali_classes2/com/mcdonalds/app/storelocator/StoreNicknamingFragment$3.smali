.class Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;
.super Ljava/lang/Object;
.source "StoreNicknamingFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

.field final synthetic val$customCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->val$customCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const-string v1, "onFocusChange"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    if-eqz p2, :cond_0

    move-object v1, p1

    .line 149
    check-cast v1, Landroid/widget/EditText;

    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 150
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->selectedNickname:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->val$customCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->val$customCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->val$customCheckBox:Landroid/widget/CheckBox;

    invoke-static {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/CheckBox;)V

    .line 156
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 157
    .local v0, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 160
    .end local v0    # "keyboard":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.class Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;
.super Ljava/lang/Object;
.source "StoreNicknamingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "onItemClick"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const v2, 0x7f11046a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 92
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 94
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    invoke-static {v2, v0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/CheckBox;)V

    .line 97
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 103
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 106
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 107
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 125
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->selectedNickname:Ljava/lang/String;

    .line 126
    return-void
.end method

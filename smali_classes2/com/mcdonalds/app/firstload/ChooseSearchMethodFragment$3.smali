.class Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;
.super Ljava/lang/Object;
.source "ChooseSearchMethodFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

.field final synthetic val$searchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->val$searchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "onEditorAction"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v4

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "searchString":Ljava/lang/String;
    if-eq p2, v8, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_1

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    iget-object v5, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->val$searchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v5}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->clearFocus()V

    .line 134
    iget-object v5, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 135
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->val$searchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v5}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 137
    iget-object v3, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "map_only"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v3, "search_by_address"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v3, "set_current_store"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    iget-object v3, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    const-class v5, Lcom/mcdonalds/app/ordering/start/FindStoreActivity;

    invoke-virtual {v3, v5, v0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    move v3, v4

    .line 153
    :cond_2
    return v3

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

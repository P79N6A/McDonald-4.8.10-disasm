.class public Lcom/mcdonalds/app/firstload/SearchByAddressFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "SearchByAddressFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mGeoSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    const v0, 0x7f090877

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    const v1, 0x7f04010c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    .local v0, "group":Landroid/view/ViewGroup;
    const v1, 0x7f110293

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    iput-object v1, p0, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->mGeoSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .line 42
    iget-object v1, p0, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->mGeoSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 44
    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
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

    .line 49
    if-eq p2, v8, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_1

    .line 51
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->mGeoSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v5}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 53
    iget-object v5, p0, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->mGeoSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v5}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getText()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    iget-object v5, p0, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->mGeoSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v5}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->clearFocus()V

    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 60
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->mGeoSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v5}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getField()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 62
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "map_only"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string v3, "search_by_address"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "set_current_store"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    const-class v3, Lcom/mcdonalds/app/ordering/start/FindStoreActivity;

    const-string v5, "store_locator"

    invoke-virtual {p0, v3, v5, v0}, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "query":Ljava/lang/String;
    :cond_1
    :goto_0
    move v3, v4

    .line 78
    :cond_2
    return v3

    .line 72
    .restart local v2    # "query":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/SearchByAddressFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

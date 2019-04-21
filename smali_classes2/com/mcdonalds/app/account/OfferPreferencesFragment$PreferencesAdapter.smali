.class public Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;
.super Landroid/widget/BaseAdapter;
.source "OfferPreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/OfferPreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferencesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field protected mOffersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/account/OfferData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;


# direct methods
.method protected constructor <init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/account/OfferData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p2, "offersList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/account/OfferData;>;"
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->mOffersList:Ljava/util/List;

    .line 387
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->mOffersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->mOffersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 407
    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 409
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 410
    const v3, 0x7f04018f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 411
    new-instance v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;)V

    .line 412
    .local v1, "holder":Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;
    const v3, 0x7f110067

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 413
    const v3, 0x7f110514

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;->stateSwitch:Landroid/widget/Switch;

    .line 414
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 418
    :goto_0
    const-class v3, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;

    invoke-static {p2, v3, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 420
    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->mOffersList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/OfferData;

    .line 421
    .local v0, "adapterOfferData":Lcom/mcdonalds/app/account/OfferData;
    iget-object v3, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/OfferData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v3, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;->stateSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v3, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;->stateSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/OfferData;->getState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 446
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v3, "getView"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-static {v5, v3}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 416
    .end local v0    # "adapterOfferData":Lcom/mcdonalds/app/account/OfferData;
    .end local v1    # "holder":Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$ViewHolder;
    goto :goto_0
.end method

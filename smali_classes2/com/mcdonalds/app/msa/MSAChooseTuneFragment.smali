.class public Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "MSAChooseTuneFragment.java"


# instance fields
.field private mAdapter:Lcom/mcdonalds/app/msa/MSATuneListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x0

    .line 69
    if-ne p2, v10, :cond_2

    .line 70
    if-ne p1, v0, :cond_2

    .line 71
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 74
    const-string v9, ""

    .line 75
    .local v9, "name":Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v11

    .line 76
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    aget-object v0, v2, v11

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 81
    .local v7, "colIndex":I
    if-eq v7, v10, :cond_0

    .line 82
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 85
    .end local v7    # "colIndex":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_1
    sget-object v8, Lcom/mcdonalds/app/msa/MSASettings;->PHONE_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 89
    .local v8, "item":Lcom/mcdonalds/app/msa/MSATuneItem;
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/msa/MSATuneItem;->setChoice(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v8, v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->setMusicUri(Landroid/net/Uri;)V

    .line 91
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    .line 92
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {v0, v3, v4, v9}, Lcom/mcdonalds/app/msa/MSASettings;->saveAlarmId(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;->mAdapter:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->notifyDataSetChanged()V

    .line 97
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "item":Lcom/mcdonalds/app/msa/MSATuneItem;
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v3, 0x7f0400dc

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, "rootView":Landroid/view/View;
    const v3, 0x7f1102f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 45
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/msa/MSATuneItem;>;"
    sget-object v3, Lcom/mcdonalds/app/msa/MSASettings;->BUNDLED_TUNES:[Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    sget-object v3, Lcom/mcdonalds/app/msa/MSASettings;->RANDOM_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v0}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v3, p0, Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;->mAdapter:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    .line 54
    iget-object v3, p0, Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;->mAdapter:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;->mAdapter:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAChooseTuneFragment;->mAdapter:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->onDestroy()V

    .line 65
    :cond_0
    return-void
.end method

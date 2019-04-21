.class Landroid/databinding/adapters/ObservableListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ObservableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDropDownResourceId:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResourceId:I

.field private final mTextViewResourceId:I


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter;, "Landroid/databinding/adapters/ObservableListAdapter<TT;>;"
    iget-object v0, p0, Landroid/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter;, "Landroid/databinding/adapters/ObservableListAdapter<TT;>;"
    iget v0, p0, Landroid/databinding/adapters/ObservableListAdapter;->mDropDownResourceId:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/databinding/adapters/ObservableListAdapter;->getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter;, "Landroid/databinding/adapters/ObservableListAdapter<TT;>;"
    iget-object v0, p0, Landroid/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter;, "Landroid/databinding/adapters/ObservableListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter;, "Landroid/databinding/adapters/ObservableListAdapter<TT;>;"
    iget v0, p0, Landroid/databinding/adapters/ObservableListAdapter;->mResourceId:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/databinding/adapters/ObservableListAdapter;->getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "resourceId"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 122
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter;, "Landroid/databinding/adapters/ObservableListAdapter<TT;>;"
    if-nez p3, :cond_0

    .line 123
    if-nez p1, :cond_1

    .line 124
    new-instance p3, Landroid/widget/TextView;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v3, p0, Landroid/databinding/adapters/ObservableListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 129
    .restart local p3    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    iget v3, p0, Landroid/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    if-nez v3, :cond_2

    move-object v3, p3

    .line 130
    :goto_1
    check-cast v3, Landroid/widget/TextView;

    move-object v1, v3

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "text":Landroid/widget/TextView;
    iget-object v3, p0, Landroid/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "item":Ljava/lang/Object;, "TT;"
    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    move-object v2, v0

    .line 134
    check-cast v2, Ljava/lang/CharSequence;

    .line 138
    .local v2, "value":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-object p3

    .line 126
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Landroid/databinding/adapters/ObservableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 129
    :cond_2
    iget v3, p0, Landroid/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    .line 130
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 136
    .restart local v0    # "item":Ljava/lang/Object;, "TT;"
    .restart local v1    # "text":Landroid/widget/TextView;
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/CharSequence;
    goto :goto_2
.end method

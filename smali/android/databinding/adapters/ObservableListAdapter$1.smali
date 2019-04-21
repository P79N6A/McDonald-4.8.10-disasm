.class Landroid/databinding/adapters/ObservableListAdapter$1;
.super Landroid/databinding/ObservableList$OnListChangedCallback;
.source "ObservableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/ObservableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/databinding/adapters/ObservableListAdapter;


# virtual methods
.method public onChanged(Landroid/databinding/ObservableList;)V
    .locals 1
    .param p1, "observableList"    # Landroid/databinding/ObservableList;

    .prologue
    .line 62
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter$1;, "Landroid/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public onItemRangeChanged(Landroid/databinding/ObservableList;II)V
    .locals 1
    .param p1, "observableList"    # Landroid/databinding/ObservableList;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 68
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter$1;, "Landroid/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public onItemRangeInserted(Landroid/databinding/ObservableList;II)V
    .locals 1
    .param p1, "observableList"    # Landroid/databinding/ObservableList;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 74
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter$1;, "Landroid/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public onItemRangeMoved(Landroid/databinding/ObservableList;III)V
    .locals 1
    .param p1, "observableList"    # Landroid/databinding/ObservableList;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 80
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter$1;, "Landroid/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public onItemRangeRemoved(Landroid/databinding/ObservableList;II)V
    .locals 1
    .param p1, "observableList"    # Landroid/databinding/ObservableList;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 86
    .local p0, "this":Landroid/databinding/adapters/ObservableListAdapter$1;, "Landroid/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.class Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$TitleViewOnClickListener;
.super Ljava/lang/Object;
.source "ExpandableListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleViewOnClickListener"
.end annotation


# instance fields
.field private final mContentParent:Landroid/view/View;

.field final synthetic this$0:Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$TitleViewOnClickListener;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>.TitleViewOnClickListener;"
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->access$100(Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;Landroid/view/View;)V

    .line 419
    return-void
.end method

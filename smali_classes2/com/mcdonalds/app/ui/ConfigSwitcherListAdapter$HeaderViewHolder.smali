.class Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "ConfigSwitcherListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;->this$0:Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

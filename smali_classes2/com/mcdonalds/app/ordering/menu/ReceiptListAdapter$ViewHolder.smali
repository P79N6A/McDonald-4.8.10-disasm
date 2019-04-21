.class Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ReceiptListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field order_again_btn:Landroid/widget/Button;

.field receipt_layout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

.field zigzag_view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;
    .param p2, "x1"    # Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;)V

    return-void
.end method

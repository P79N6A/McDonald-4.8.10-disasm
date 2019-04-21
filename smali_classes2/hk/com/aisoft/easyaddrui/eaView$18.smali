.class Lhk/com/aisoft/easyaddrui/eaView$18;
.super Ljava/lang/Object;
.source "eaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhk/com/aisoft/easyaddrui/eaView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhk/com/aisoft/easyaddrui/eaView;


# direct methods
.method constructor <init>(Lhk/com/aisoft/easyaddrui/eaView;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$18;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 635
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sCurrLot:Ljava/lang/String;

    .line 636
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sCurrDau:Ljava/lang/String;

    .line 637
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    const-string v1, "0"

    iput-object v1, v0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    .line 639
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 640
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 641
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 642
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 644
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 645
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnSearch:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 646
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 648
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llAddrWarn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 649
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llAddrMisc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 651
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbKeyword:Landroid/widget/TextView;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormKeyAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFloor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 654
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFlat:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 655
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrRemarks:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 657
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 659
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 660
    return-void
.end method

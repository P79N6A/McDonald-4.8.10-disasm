.class public Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;
.super Ljava/lang/Object;
.source "UIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/util/UIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MCDFullScreenAlertDialogBuilder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mMessage:Landroid/widget/TextView;

.field private final mPositiveButton:Landroid/widget/Button;

.field private final mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-object p1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mContext:Landroid/content/Context;

    .line 858
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mRootView:Landroid/view/View;

    .line 860
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    .line 861
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 862
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mRootView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 864
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f1101b6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mMessage:Landroid/widget/TextView;

    .line 867
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f1101b7

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mPositiveButton:Landroid/widget/Button;

    .line 868
    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;)Landroid/app/Dialog;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils$MCDFullScreenAlertDialogBuilder"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils$MCDFullScreenAlertDialogBuilder"

    const-string v2, "withContext"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    new-instance v0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 2

    .prologue
    const-string v0, "create"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    invoke-static {}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->getInstance()Lcom/mcdonalds/sdk/services/error/ErrorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->getLastError()Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 899
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;
    .locals 4
    .param p1, "stringId"    # I

    .prologue
    const-string v0, "setMessage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    return-object p0
.end method

.method public setPositiveButtonText(ILandroid/view/View$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;
    .locals 4
    .param p1, "stringId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const-string v0, "setPositiveButtonText"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mPositiveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    return-object p0
.end method

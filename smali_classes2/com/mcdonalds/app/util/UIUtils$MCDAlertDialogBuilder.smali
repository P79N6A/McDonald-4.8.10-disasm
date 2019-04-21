.class public Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
.super Ljava/lang/Object;
.source "UIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/util/UIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MCDAlertDialogBuilder"
.end annotation


# instance fields
.field mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

.field protected mContext:Landroid/content/Context;

.field private mDelayToDismissInSeconds:Ljava/lang/Integer;

.field private mOnDismiss:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-object p1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mContext:Landroid/content/Context;

    .line 920
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0b00b1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    .line 921
    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;)Ljava/lang/Integer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils$MCDAlertDialogBuilder"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mDelayToDismissInSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;Landroid/content/DialogInterface;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils$MCDAlertDialogBuilder"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->dismissDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils$MCDAlertDialogBuilder"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mOnDismiss:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private dismissDialog(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const-string v0, "dismissDialog"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$2;-><init>(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;Landroid/content/DialogInterface;)V

    iget-object v2, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mDelayToDismissInSeconds:Ljava/lang/Integer;

    .line 1167
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 1157
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1168
    return-void
.end method

.method private onShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 2

    .prologue
    const-string v0, "onShowListener"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    new-instance v0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder$1;-><init>(Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;)V

    return-object v0
.end method

.method public static withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils$MCDAlertDialogBuilder"

    const-string v2, "withContext"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 935
    new-instance v0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public create()Landroid/support/v7/app/AlertDialog;
    .locals 3

    .prologue
    const-string v1, "create"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1111
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-direct {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->onShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1113
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    invoke-static {}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->getInstance()Lcom/mcdonalds/sdk/services/error/ErrorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->getLastError()Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1115
    return-object v0
.end method

.method public setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 4
    .param p1, "cancelable"    # Z

    .prologue
    const-string v0, "setCancelable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1085
    return-object p0
.end method

.method public setDelayToDismissInSeconds(Ljava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 3
    .param p1, "delayToDismissInSeconds"    # Ljava/lang/Integer;
    .param p2, "onDismiss"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const-string v0, "setDelayToDismissInSeconds"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    iput-object p1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mDelayToDismissInSeconds:Ljava/lang/Integer;

    .line 1141
    iput-object p2, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mOnDismiss:Landroid/content/DialogInterface$OnClickListener;

    .line 1142
    return-object p0
.end method

.method public setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 4
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const-string v0, "setMessage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 994
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-string v0, "setMessage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 982
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 4
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const-string v0, "setNegativeButton"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1033
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const-string v0, "setNegativeButton"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1046
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 4
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const-string v0, "setNeutralButton"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1059
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const-string v0, "setNeutralButton"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1072
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 3
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const-string v0, "setOnCancelListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1096
    if-eqz p1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1100
    :cond_0
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 4
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const-string v0, "setPositiveButton"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1007
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const-string v0, "setPositiveButton"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1020
    return-object p0
.end method

.method public setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 4
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const-string v0, "setTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 958
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "setTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 970
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "setView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    iget-object v0, p0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->mAlertBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1127
    return-object p0
.end method

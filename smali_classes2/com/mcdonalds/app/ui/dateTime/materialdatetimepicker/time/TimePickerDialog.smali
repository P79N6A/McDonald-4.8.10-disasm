.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
.super Landroid/app/DialogFragment;
.source "TimePickerDialog.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
.implements Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;,
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;,
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;,
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;,
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mAccentColor:I

.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmLayout:Landroid/view/View;

.field private mAmText:Ljava/lang/String;

.field private mAmTextView:Landroid/widget/TextView;

.field private mCallback:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelColor:I

.field private mCancelResid:I

.field private mCancelString:Ljava/lang/String;

.field private mDefaultLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDismissOnPause:Z

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mEnableMinutes:Z

.field private mEnableSeconds:Z

.field private mHapticFeedbackController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialMessage:Ljava/lang/String;

.field private mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

.field private mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;

.field private mOkColor:I

.field private mOkResid:I

.field private mOkString:Ljava/lang/String;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mPmTextView:Landroid/widget/TextView;

.field private mSecondPickerDescription:Ljava/lang/String;

.field private mSecondSpaceView:Landroid/widget/TextView;

.field private mSecondView:Landroid/widget/TextView;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSelectSeconds:Ljava/lang/String;

.field private mSelectedColor:I

.field private mThemeDark:Z

.field private mThemeDarkChanged:Z

.field private mTimeChangedListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;

.field private mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

.field private mTitle:Ljava/lang/String;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectedColor:I

.field private mVersion:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

.field private mVibrate:Z

.field private timePickerHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 146
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;

    .line 147
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    .line 191
    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;IZZZ)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v2, "access$100"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;I)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method private addKeyIfLegal(I)Z
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "addKeyIfLegal"

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v2

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1361
    const/4 v0, 0x6

    .line 1362
    .local v0, "textSize":I
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez v4, :cond_0

    const/4 v0, 0x4

    .line 1363
    :cond_0
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez v4, :cond_1

    const/4 v0, 0x2

    .line 1364
    :cond_1
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v0, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v4, :cond_4

    .line 1365
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1386
    :cond_3
    :goto_0
    return v2

    .line 1369
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1371
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    goto :goto_0

    .line 1375
    :cond_5
    invoke-static {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v1

    .line 1376
    .local v1, "val":I
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1378
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1379
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v4, v0, -0x1

    if-gt v2, v4, :cond_6

    .line 1380
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1381
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1383
    :cond_6
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    move v2, v3

    .line 1386
    goto :goto_0
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    const-string v1, "deleteLastTypedKey"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1423
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1424
    .local v0, "deleted":I
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1427
    :cond_0
    return v0
.end method

.method private finishKbMode(Z)V
    .locals 10
    .param p1, "updateDisplays"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v2, "finishKbMode"

    new-array v3, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v7

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1435
    iput-boolean v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 1436
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1437
    new-array v0, v9, [Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v6

    .line 1438
    .local v0, "enteredZeros":[Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v1

    .line 1439
    .local v1, "values":[I
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    aget v4, v1, v7

    aget v5, v1, v8

    aget v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 1440
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v2, :cond_0

    .line 1441
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    aget v3, v1, v9

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 1443
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1445
    .end local v0    # "enteredZeros":[Ljava/lang/Boolean;
    .end local v1    # "values":[I
    :cond_1
    if-eqz p1, :cond_2

    .line 1446
    invoke-direct {p0, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 1447
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    .line 1449
    :cond_2
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 25

    .prologue
    const-string v22, "generateLegalTimesTree"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1633
    const/4 v6, 0x7

    .line 1634
    .local v6, "k0":I
    const/16 v7, 0x8

    .line 1635
    .local v7, "k1":I
    const/16 v8, 0x9

    .line 1636
    .local v8, "k2":I
    const/16 v9, 0xa

    .line 1637
    .local v9, "k3":I
    const/16 v10, 0xb

    .line 1638
    .local v10, "k4":I
    const/16 v11, 0xc

    .line 1639
    .local v11, "k5":I
    const/16 v12, 0xd

    .line 1640
    .local v12, "k6":I
    const/16 v13, 0xe

    .line 1641
    .local v13, "k7":I
    const/16 v14, 0xf

    .line 1642
    .local v14, "k8":I
    const/16 v15, 0x10

    .line 1645
    .local v15, "k9":I
    new-instance v22, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 1648
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1650
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1651
    .local v4, "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1654
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    const/16 v23, 0x6

    aput v12, v22, v23

    const/16 v23, 0x7

    aput v13, v22, v23

    const/16 v23, 0x8

    aput v14, v22, v23

    const/16 v23, 0x9

    aput v15, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1655
    .local v18, "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1658
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v8, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1659
    .restart local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1662
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1663
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1666
    .end local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 1669
    new-instance v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v24

    aput v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1672
    .local v3, "ampm":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v7, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1673
    .restart local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1676
    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1678
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1679
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1680
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1683
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v8, v22, v23

    const/16 v23, 0x1

    aput v9, v22, v23

    const/16 v23, 0x2

    aput v10, v22, v23

    const/16 v23, 0x3

    aput v11, v22, v23

    const/16 v23, 0x4

    aput v12, v22, v23

    const/16 v23, 0x5

    aput v13, v22, v23

    const/16 v23, 0x6

    aput v14, v22, v23

    const/16 v23, 0x7

    aput v15, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1684
    .restart local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1685
    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    goto/16 :goto_0

    .line 1690
    .end local v3    # "ampm":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1692
    new-instance v16, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1693
    .local v16, "minuteFirstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v17, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    const/16 v23, 0x6

    aput v12, v22, v23

    const/16 v23, 0x7

    aput v13, v22, v23

    const/16 v23, 0x8

    aput v14, v22, v23

    const/16 v23, 0x9

    aput v15, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1695
    .local v17, "minuteSecondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v16 .. v17}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1697
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 1698
    new-instance v19, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1699
    .local v19, "secondsFirstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v20, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    const/16 v23, 0x6

    aput v12, v22, v23

    const/16 v23, 0x7

    aput v13, v22, v23

    const/16 v23, 0x8

    aput v14, v22, v23

    const/16 v23, 0x9

    aput v15, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1700
    .local v20, "secondsSecondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1703
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1707
    .end local v19    # "secondsFirstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v20    # "secondsSecondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_3
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1708
    .restart local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1711
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1712
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1714
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1717
    new-instance v21, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v12, v22, v23

    const/16 v23, 0x1

    aput v13, v22, v23

    const/16 v23, 0x2

    aput v14, v22, v23

    const/16 v23, 0x3

    aput v15, v22, v23

    invoke-direct/range {v21 .. v22}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1719
    .local v21, "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1722
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v12, v22, v23

    const/16 v23, 0x1

    aput v13, v22, v23

    const/16 v23, 0x2

    aput v14, v22, v23

    const/16 v23, 0x3

    aput v15, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1723
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1725
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1728
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v8, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1729
    .restart local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1732
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1733
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1735
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1738
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v10, v22, v23

    const/16 v23, 0x1

    aput v11, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1739
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1741
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1744
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v9, v22, v23

    const/16 v23, 0x1

    aput v10, v22, v23

    const/16 v23, 0x2

    aput v11, v22, v23

    const/16 v23, 0x3

    aput v12, v22, v23

    const/16 v23, 0x4

    aput v13, v22, v23

    const/16 v23, 0x5

    aput v14, v22, v23

    const/16 v23, 0x6

    aput v15, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1745
    .restart local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1747
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    goto/16 :goto_0

    .line 1751
    .end local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v16    # "minuteFirstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v17    # "minuteSecondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v21    # "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_4
    new-instance v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v24

    aput v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1754
    .restart local v3    # "ampm":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v19, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1755
    .restart local v19    # "secondsFirstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v20, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    const/16 v23, 0x6

    aput v12, v22, v23

    const/16 v23, 0x7

    aput v13, v22, v23

    const/16 v23, 0x8

    aput v14, v22, v23

    const/16 v23, 0x9

    aput v15, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1756
    .restart local v20    # "secondsSecondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1757
    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1760
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v7, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1761
    .restart local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1763
    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1766
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1767
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1769
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1772
    new-instance v21, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    invoke-direct/range {v21 .. v22}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1773
    .restart local v21    # "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1775
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1779
    new-instance v5, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    const/16 v23, 0x6

    aput v12, v22, v23

    const/16 v23, 0x7

    aput v13, v22, v23

    const/16 v23, 0x8

    aput v14, v22, v23

    const/16 v23, 0x9

    aput v15, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1780
    .local v5, "fourthDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1782
    invoke-virtual {v5, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1786
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1788
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1792
    :cond_5
    new-instance v21, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v21    # "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v12, v22, v23

    const/16 v23, 0x1

    aput v13, v22, v23

    const/16 v23, 0x2

    aput v14, v22, v23

    const/16 v23, 0x3

    aput v15, v22, v23

    invoke-direct/range {v21 .. v22}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1793
    .restart local v21    # "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1795
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1799
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 1801
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1805
    :cond_6
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v9, v22, v23

    const/16 v23, 0x1

    aput v10, v22, v23

    const/16 v23, 0x2

    aput v11, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1806
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1809
    new-instance v21, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v21    # "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    const/16 v23, 0x6

    aput v12, v22, v23

    const/16 v23, 0x7

    aput v13, v22, v23

    const/16 v23, 0x8

    aput v14, v22, v23

    const/16 v23, 0x9

    aput v15, v22, v23

    invoke-direct/range {v21 .. v22}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1810
    .restart local v21    # "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1812
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1816
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 1818
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1822
    :cond_7
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v8, v22, v23

    const/16 v23, 0x1

    aput v9, v22, v23

    const/16 v23, 0x2

    aput v10, v22, v23

    const/16 v23, 0x3

    aput v11, v22, v23

    const/16 v23, 0x4

    aput v12, v22, v23

    const/16 v23, 0x5

    aput v13, v22, v23

    const/16 v23, 0x6

    aput v14, v22, v23

    const/16 v23, 0x7

    aput v15, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1823
    .restart local v4    # "firstDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1825
    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1828
    new-instance v18, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1829
    .restart local v18    # "secondDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1832
    new-instance v21, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v21    # "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v6, v22, v23

    const/16 v23, 0x1

    aput v7, v22, v23

    const/16 v23, 0x2

    aput v8, v22, v23

    const/16 v23, 0x3

    aput v9, v22, v23

    const/16 v23, 0x4

    aput v10, v22, v23

    const/16 v23, 0x5

    aput v11, v22, v23

    const/16 v23, 0x6

    aput v12, v22, v23

    const/16 v23, 0x7

    aput v13, v22, v23

    const/16 v23, 0x8

    aput v14, v22, v23

    const/16 v23, 0x9

    aput v15, v22, v23

    invoke-direct/range {v21 .. v22}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1833
    .restart local v21    # "thirdDigit":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1835
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1839
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1841
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V

    goto/16 :goto_0
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 12
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, -0x1

    const-string v6, "getAmOrPmKeyCode"

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1598
    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    if-ne v6, v5, :cond_1

    .line 1600
    :cond_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 1603
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1604
    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1605
    .local v0, "amChar":C
    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1606
    .local v4, "pmChar":C
    if-eq v0, v4, :cond_4

    .line 1607
    new-array v6, v11, [C

    aput-char v0, v6, v9

    aput-char v4, v6, v10

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 1609
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_3

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 1610
    aget-object v6, v1, v9

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 1611
    aget-object v6, v1, v11

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    .line 1619
    .end local v0    # "amChar":C
    .end local v1    # "events":[Landroid/view/KeyEvent;
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_1
    :goto_1
    if-nez p1, :cond_5

    .line 1620
    iget v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 1625
    :cond_2
    :goto_2
    return v5

    .line 1613
    .restart local v0    # "amChar":C
    .restart local v1    # "events":[Landroid/view/KeyEvent;
    .restart local v2    # "i":I
    .restart local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v4    # "pmChar":C
    :cond_3
    const-string v6, "TimePickerDialog"

    const-string v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1603
    .end local v1    # "events":[Landroid/view/KeyEvent;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1621
    .end local v0    # "amChar":C
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_5
    if-ne p1, v10, :cond_2

    .line 1622
    iget v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 14
    .param p1, "enteredZeros"    # [Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v13, 0x1

    const-string v9, "getEnteredTime"

    new-array v12, v13, [Ljava/lang/Object;

    aput-object p1, v12, v11

    invoke-static {p0, v9, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1535
    const/4 v0, -0x1

    .line 1536
    .local v0, "amOrPm":I
    const/4 v7, 0x1

    .line 1537
    .local v7, "startIndex":I
    iget-boolean v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v9, :cond_1

    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1538
    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1539
    .local v3, "keyCode":I
    invoke-direct {p0, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v9

    if-ne v3, v9, :cond_4

    .line 1540
    const/4 v0, 0x0

    .line 1544
    :cond_0
    :goto_0
    const/4 v7, 0x2

    .line 1546
    .end local v3    # "keyCode":I
    :cond_1
    const/4 v4, -0x1

    .line 1547
    .local v4, "minute":I
    const/4 v1, -0x1

    .line 1548
    .local v1, "hour":I
    const/4 v5, 0x0

    .line 1549
    .local v5, "second":I
    iget-boolean v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v9, :cond_5

    move v6, v10

    .line 1550
    .local v6, "shift":I
    :goto_1
    move v2, v7

    .local v2, "i":I
    :goto_2
    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v2, v9, :cond_c

    .line 1551
    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v8

    .line 1552
    .local v8, "val":I
    iget-boolean v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v9, :cond_2

    .line 1553
    if-ne v2, v7, :cond_6

    .line 1554
    move v5, v8

    .line 1562
    :cond_2
    :goto_3
    iget-boolean v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz v9, :cond_a

    .line 1563
    add-int v9, v7, v6

    if-ne v2, v9, :cond_7

    .line 1564
    move v4, v8

    .line 1550
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1541
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v5    # "second":I
    .end local v6    # "shift":I
    .end local v8    # "val":I
    .restart local v3    # "keyCode":I
    :cond_4
    invoke-direct {p0, v13}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v9

    if-ne v3, v9, :cond_0

    .line 1542
    const/4 v0, 0x1

    goto :goto_0

    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    .restart local v5    # "second":I
    :cond_5
    move v6, v11

    .line 1549
    goto :goto_1

    .line 1555
    .restart local v2    # "i":I
    .restart local v6    # "shift":I
    .restart local v8    # "val":I
    :cond_6
    add-int/lit8 v9, v7, 0x1

    if-ne v2, v9, :cond_2

    .line 1556
    mul-int/lit8 v9, v8, 0xa

    add-int/2addr v5, v9

    .line 1557
    if-eqz p1, :cond_2

    if-nez v8, :cond_2

    .line 1558
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, p1, v10

    goto :goto_3

    .line 1565
    :cond_7
    add-int v9, v7, v6

    add-int/lit8 v9, v9, 0x1

    if-ne v2, v9, :cond_8

    .line 1566
    mul-int/lit8 v9, v8, 0xa

    add-int/2addr v4, v9

    .line 1567
    if-eqz p1, :cond_3

    if-nez v8, :cond_3

    .line 1568
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, p1, v13

    goto :goto_4

    .line 1570
    :cond_8
    add-int v9, v7, v6

    add-int/lit8 v9, v9, 0x2

    if-ne v2, v9, :cond_9

    .line 1571
    move v1, v8

    goto :goto_4

    .line 1572
    :cond_9
    add-int v9, v7, v6

    add-int/lit8 v9, v9, 0x3

    if-ne v2, v9, :cond_3

    .line 1573
    mul-int/lit8 v9, v8, 0xa

    add-int/2addr v1, v9

    .line 1574
    if-eqz p1, :cond_3

    if-nez v8, :cond_3

    .line 1575
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, p1, v11

    goto :goto_4

    .line 1579
    :cond_a
    add-int v9, v7, v6

    if-ne v2, v9, :cond_b

    .line 1580
    move v1, v8

    goto :goto_4

    .line 1581
    :cond_b
    add-int v9, v7, v6

    add-int/lit8 v9, v9, 0x1

    if-ne v2, v9, :cond_3

    .line 1582
    mul-int/lit8 v9, v8, 0xa

    add-int/2addr v1, v9

    .line 1583
    if-eqz p1, :cond_3

    if-nez v8, :cond_3

    .line 1584
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, p1, v11

    goto :goto_4

    .line 1590
    .end local v8    # "val":I
    :cond_c
    const/4 v9, 0x4

    new-array v9, v9, [I

    aput v1, v9, v11

    aput v4, v9, v13

    aput v5, v9, v10

    const/4 v10, 0x3

    aput v0, v9, v10

    return-object v9
.end method

.method private static getValFromKeyCode(I)I
    .locals 7
    .param p0, "keyCode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v4, "getValFromKeyCode"

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 1499
    packed-switch p0, :pswitch_data_0

    .line 1521
    const/4 v0, -0x1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1503
    goto :goto_0

    .line 1505
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1507
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1509
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1511
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1513
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1515
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1517
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 1519
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 1499
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 8

    .prologue
    const/16 v7, 0x3c

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "isTypedTimeFullyLegal"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v4, :cond_1

    .line 1411
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v6

    .line 1412
    .local v0, "enteredZeros":[Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v1

    .line 1413
    .local v1, "values":[I
    aget v4, v1, v3

    if-ltz v4, :cond_0

    aget v4, v1, v2

    if-ltz v4, :cond_0

    aget v4, v1, v2

    if-ge v4, v7, :cond_0

    aget v4, v1, v6

    if-ltz v4, :cond_0

    aget v4, v1, v6

    if-ge v4, v7, :cond_0

    .line 1417
    .end local v0    # "enteredZeros":[Ljava/lang/Boolean;
    .end local v1    # "values":[I
    :goto_0
    return v2

    .restart local v0    # "enteredZeros":[Ljava/lang/Boolean;
    .restart local v1    # "values":[I
    :cond_0
    move v2, v3

    .line 1413
    goto :goto_0

    .line 1417
    .end local v0    # "enteredZeros":[Ljava/lang/Boolean;
    .end local v1    # "values":[I
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 1418
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    move v2, v3

    .line 1417
    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    .prologue
    const-string v2, "isTypedTimeLegalSoFar"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 1395
    .local v1, "node":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1396
    .local v0, "keyCode":I
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->canReach(I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    move-result-object v1

    .line 1397
    if-nez v1, :cond_0

    .line 1398
    const/4 v2, 0x0

    .line 1401
    .end local v0    # "keyCode":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;IIIZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    .locals 7
    .param p0, "callback"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p1, "timeChangedListener"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I
    .param p5, "is24HourMode"    # Z

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v3, "newInstance"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;-><init>()V

    .local v0, "ret":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 196
    invoke-virtual/range {v0 .. v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->initialize(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;IIIZ)V

    .line 197
    return-object v0
.end method

.method public static newInstance(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;IIZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    .locals 7
    .param p0, "callback"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p1, "timeChangedListener"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourMode"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog"

    const-string v2, "newInstance"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v3, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v3, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 202
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->newInstance(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;IIIZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    move-result-object v0

    return-object v0
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "processKeyUp"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    const/16 v4, 0x6f

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isCancelable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    .line 1339
    :cond_1
    :goto_0
    return v2

    .line 1279
    :cond_2
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_3

    .line 1280
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 1281
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1282
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_0

    .line 1286
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_6

    .line 1287
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_4

    .line 1288
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1291
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    .line 1293
    :cond_4
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v3, :cond_5

    .line 1294
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .line 1295
    invoke-virtual {v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v4

    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v6

    .line 1294
    invoke-interface {v3, p0, v4, v5, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;III)V

    .line 1297
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    goto :goto_0

    .line 1299
    :cond_6
    const/16 v4, 0x43

    if-ne p1, v4, :cond_a

    .line 1300
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 1301
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1302
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    move-result v0

    .line 1304
    .local v0, "deleted":I
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 1305
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 1311
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    .line 1312
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1311
    invoke-static {v4, v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1313
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 1339
    goto :goto_0

    .line 1306
    .restart local v0    # "deleted":I
    :cond_8
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 1307
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 1309
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_9
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 1316
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x7

    if-eq p1, v4, :cond_b

    const/16 v4, 0x8

    if-eq p1, v4, :cond_b

    const/16 v4, 0x9

    if-eq p1, v4, :cond_b

    const/16 v4, 0xa

    if-eq p1, v4, :cond_b

    const/16 v4, 0xb

    if-eq p1, v4, :cond_b

    const/16 v4, 0xc

    if-eq p1, v4, :cond_b

    const/16 v4, 0xd

    if-eq p1, v4, :cond_b

    const/16 v4, 0xe

    if-eq p1, v4, :cond_b

    const/16 v4, 0xf

    if-eq p1, v4, :cond_b

    const/16 v4, 0x10

    if-eq p1, v4, :cond_b

    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v4, :cond_7

    .line 1322
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_b

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_7

    .line 1323
    :cond_b
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-nez v4, :cond_d

    .line 1324
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    if-nez v3, :cond_c

    .line 1326
    const-string v3, "TimePickerDialog"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1329
    :cond_c
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1330
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    goto/16 :goto_0

    .line 1334
    :cond_d
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1335
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    goto/16 :goto_0
.end method

.method private roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 3
    .param p1, "time"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "roundToNearest"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 14
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "delayLabelAnimate"    # Z
    .param p4, "announce"    # Z

    .prologue
    const-string v10, "setCurrentItemShowing"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/Boolean;

    move/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/Boolean;

    move/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v13, v11, v12

    const/4 v12, 0x3

    new-instance v13, Ljava/lang/Boolean;

    move/from16 v0, p4

    invoke-direct {v13, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v13, v11, v12

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 1227
    packed-switch p1, :pswitch_data_0

    .line 1248
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v9

    .line 1249
    .local v9, "seconds":I
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1250
    if-eqz p4, :cond_0

    .line 1251
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v11, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectSeconds:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1253
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    .line 1256
    .end local v9    # "seconds":I
    .local v4, "labelToAnimate":Landroid/widget/TextView;
    :goto_0
    if-nez p1, :cond_5

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 1257
    .local v2, "hourColor":I
    :goto_1
    const/4 v10, 0x1

    if-ne p1, v10, :cond_6

    iget v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 1258
    .local v5, "minuteColor":I
    :goto_2
    const/4 v10, 0x2

    if-ne p1, v10, :cond_7

    iget v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 1259
    .local v8, "secondColor":I
    :goto_3
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1260
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1261
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1263
    const v10, 0x3f59999a    # 0.85f

    const v11, 0x3f8ccccd    # 1.1f

    invoke-static {v4, v10, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1264
    .local v7, "pulseAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_1

    .line 1265
    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1267
    :cond_1
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 1268
    return-void

    .line 1229
    .end local v2    # "hourColor":I
    .end local v4    # "labelToAnimate":Landroid/widget/TextView;
    .end local v5    # "minuteColor":I
    .end local v7    # "pulseAnimator":Landroid/animation/ObjectAnimator;
    .end local v8    # "secondColor":I
    :pswitch_0
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v3

    .line 1230
    .local v3, "hours":I
    iget-boolean v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v10, :cond_2

    .line 1231
    rem-int/lit8 v3, v3, 0xc

    .line 1233
    :cond_2
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1234
    if-eqz p4, :cond_3

    .line 1235
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v11, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1237
    :cond_3
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 1238
    .restart local v4    # "labelToAnimate":Landroid/widget/TextView;
    goto :goto_0

    .line 1240
    .end local v3    # "hours":I
    .end local v4    # "labelToAnimate":Landroid/widget/TextView;
    :pswitch_1
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    .line 1241
    .local v6, "minutes":I
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1242
    if-eqz p4, :cond_4

    .line 1243
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v11, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1245
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 1246
    .restart local v4    # "labelToAnimate":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1256
    .end local v6    # "minutes":I
    :cond_5
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto/16 :goto_1

    .line 1257
    .restart local v2    # "hourColor":I
    :cond_6
    iget v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto/16 :goto_2

    .line 1258
    .restart local v5    # "minuteColor":I
    :cond_7
    iget v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto/16 :goto_3

    .line 1227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHour(IZ)V
    .locals 7
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "setHour"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_2

    .line 1184
    const-string v0, "%02d"

    .line 1193
    .local v0, "format":Ljava/lang/String;
    :cond_0
    :goto_0
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1194
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    if-eqz p2, :cond_1

    .line 1197
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v2, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1199
    :cond_1
    return-void

    .line 1186
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    const-string v0, "%d"

    .line 1187
    .restart local v0    # "format":Ljava/lang/String;
    rem-int/lit8 p1, p1, 0xc

    .line 1188
    if-nez p1, :cond_0

    .line 1189
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private setMinute(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "setMinute"

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 1203
    const/4 p1, 0x0

    .line 1205
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1207
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    return-void
.end method

.method private setSecond(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "setSecond"

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 1213
    const/4 p1, 0x0

    .line 1215
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1217
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "tryStartingKbMode"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1350
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1351
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    :cond_0
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 1353
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1354
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 1356
    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 5
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "updateAmPmDisplay"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-ne v0, v1, :cond_1

    .line 1039
    if-nez p1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1041
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1042
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1061
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1045
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1046
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1049
    :cond_1
    if-nez p1, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1053
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 16
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    const-string v12, "updateDisplay"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/Boolean;

    move/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1459
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1460
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v12}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    .line 1461
    .local v2, "hour":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v12}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v5

    .line 1462
    .local v5, "minute":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v12}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v8

    .line 1463
    .local v8, "second":I
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 1464
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 1465
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    .line 1466
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v12, :cond_0

    .line 1467
    const/16 v12, 0xc

    if-ge v2, v12, :cond_2

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 1469
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v12}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1496
    .end local v2    # "hour":I
    .end local v5    # "minute":I
    .end local v8    # "second":I
    :cond_1
    :goto_1
    return-void

    .line 1467
    .restart local v2    # "hour":I
    .restart local v5    # "minute":I
    .restart local v8    # "second":I
    :cond_2
    const/4 v12, 0x1

    goto :goto_0

    .line 1472
    .end local v2    # "hour":I
    .end local v5    # "minute":I
    .end local v8    # "second":I
    :cond_3
    const/4 v12, 0x3

    new-array v1, v12, [Ljava/lang/Boolean;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v1, v12

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v1, v12

    .line 1473
    .local v1, "enteredZeros":[Ljava/lang/Boolean;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v11

    .line 1474
    .local v11, "values":[I
    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v3, "%02d"

    .line 1475
    .local v3, "hourFormat":Ljava/lang/String;
    :goto_2
    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v6, "%02d"

    .line 1476
    .local v6, "minuteFormat":Ljava/lang/String;
    :goto_3
    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v9, "%02d"

    .line 1477
    .local v9, "secondFormat":Ljava/lang/String;
    :goto_4
    const/4 v12, 0x0

    aget v12, v11, v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 1479
    .local v4, "hourStr":Ljava/lang/String;
    :goto_5
    const/4 v12, 0x1

    aget v12, v11, v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 1481
    .local v7, "minuteStr":Ljava/lang/String;
    :goto_6
    const/4 v12, 0x2

    aget v12, v11, v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 1483
    .local v10, "secondStr":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1492
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v12, :cond_1

    .line 1493
    const/4 v12, 0x3

    aget v12, v11, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto/16 :goto_1

    .line 1474
    .end local v3    # "hourFormat":Ljava/lang/String;
    .end local v4    # "hourStr":Ljava/lang/String;
    .end local v6    # "minuteFormat":Ljava/lang/String;
    .end local v7    # "minuteStr":Ljava/lang/String;
    .end local v9    # "secondFormat":Ljava/lang/String;
    .end local v10    # "secondStr":Ljava/lang/String;
    :cond_4
    const-string v3, "%2d"

    goto/16 :goto_2

    .line 1475
    .restart local v3    # "hourFormat":Ljava/lang/String;
    :cond_5
    const-string v6, "%2d"

    goto/16 :goto_3

    .line 1476
    .restart local v6    # "minuteFormat":Ljava/lang/String;
    :cond_6
    const-string v9, "%2d"

    goto/16 :goto_4

    .line 1477
    .restart local v9    # "secondFormat":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget v14, v11, v14

    .line 1478
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x20

    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 1479
    .restart local v4    # "hourStr":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    aget v14, v11, v14

    .line 1480
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x20

    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 1481
    .restart local v7    # "minuteStr":Ljava/lang/String;
    :cond_9
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    aget v14, v11, v14

    .line 1482
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x20

    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7
.end method


# virtual methods
.method public advancePicker(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "advancePicker"

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    if-nez v1, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz v1, :cond_2

    .line 1120
    invoke-direct {p0, v4, v4, v4, v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "announcement":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1124
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_2
    if-ne p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v1, :cond_0

    .line 1125
    const/4 v1, 0x2

    invoke-direct {p0, v1, v4, v4, v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .restart local v0    # "announcement":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enablePicker()V
    .locals 2

    .prologue
    const-string v0, "enablePicker"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1135
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    .line 1136
    return-void
.end method

.method public getAccentColor()I
    .locals 2

    .prologue
    const-string v0, "getAccentColor"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    return v0
.end method

.method getPickerResolution()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v0, "getPickerResolution"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    .line 1178
    :goto_0
    return-object v0

    .line 1177
    :cond_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    goto :goto_0

    .line 1178
    :cond_1
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    goto :goto_0
.end method

.method public getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;
    .locals 2

    .prologue
    const-string v0, "getVersion"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    return-object v0
.end method

.method public initialize(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;IIIZ)V
    .locals 7
    .param p1, "callback"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p2, "timeChangedListener"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "is24HourMode"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v0, "initialize"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v6

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 215
    iput-object p2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimeChangedListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;

    .line 217
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p3, p4, p5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 218
    iput-boolean p6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 219
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    .line 221
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 222
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    .line 223
    iput v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 224
    iput-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    .line 225
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    .line 226
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    .line 227
    iput-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    .line 228
    const v0, 0x7f090a2f

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    .line 229
    iput v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkColor:I

    .line 230
    const v0, 0x7f090a1f

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    .line 231
    iput v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:I

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    :goto_0
    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .line 235
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    goto :goto_0
.end method

.method public is24HourMode()Z
    .locals 2

    .prologue
    const-string v0, "is24HourMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    return v0
.end method

.method public isAmDisabled()Z
    .locals 2

    .prologue
    const-string v0, "isAmDisabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    invoke-interface {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;->isAmDisabled()Z

    move-result v0

    return v0
.end method

.method public isOutOfRange(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Z
    .locals 4
    .param p1, "current"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .param p2, "index"    # I

    .prologue
    const-string v0, "isOutOfRange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getPickerResolution()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;->isOutOfRange(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ILcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v0

    return v0
.end method

.method public isPmDisabled()Z
    .locals 2

    .prologue
    const-string v0, "isPmDisabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    invoke-interface {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;->isPmDisabled()Z

    move-result v0

    return v0
.end method

.method public isThemeDark()Z
    .locals 2

    .prologue
    const-string v0, "isThemeDark"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    return v0
.end method

.method public notifyOnDateListener()V
    .locals 4

    .prologue
    const-string v0, "notifyOnDateListener"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1895
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;III)V

    .line 1898
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onActivityCreated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "onAttach"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const-string v0, "onCancel"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 1023
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 1024
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 992
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 993
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 995
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 996
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 998
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "TimePickerDialog"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "TimePickerDialog#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 606
    if-eqz p1, :cond_0

    const-string v0, "initial_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is_24_hour_view"

    .line 607
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const-string v0, "initial_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 609
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 610
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 611
    const-string v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    .line 612
    const-string v0, "theme_dark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 613
    const-string v0, "theme_dark_changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    .line 614
    const-string v0, "accent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 615
    const-string v0, "vibrate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    .line 616
    const-string v0, "dismiss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    .line 617
    const-string v0, "enable_seconds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    .line 618
    const-string v0, "enable_minutes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    .line 619
    const-string v0, "ok_resid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    .line 620
    const-string v0, "ok_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    .line 621
    const-string v0, "ok_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkColor:I

    .line 622
    const-string v0, "cancel_resid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    .line 623
    const-string v0, "cancel_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    .line 624
    const-string v0, "cancel_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:I

    .line 625
    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    .line 626
    const-string v0, "timepoint_limiter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    .line 636
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    instance-of v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;

    :goto_1
    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;

    .line 640
    :cond_0
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TimePickerDialog#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 636
    :cond_1
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;-><init>()V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onCreateDialog"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1003
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1004
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 28

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    move-object/from16 v24, v0

    const-string v25, "TimePickerDialog#onCreateView"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v24, "onCreateView"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object p1, v25, v26

    const/16 v26, 0x1

    aput-object p2, v25, v26

    const/16 v26, 0x2

    aput-object p3, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    const v24, 0x7f04013b

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 646
    .local v23, "view":Landroid/view/View;
    new-instance v12, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$1;)V

    .line 647
    .local v12, "keyboardListener":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;
    const v24, 0x7f110448

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 654
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 655
    .local v20, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 656
    .local v8, "context":Landroid/content/Context;
    const v24, 0x7f090a29

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    .line 657
    const v24, 0x7f090a35

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    .line 658
    const v24, 0x7f090a2b

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    .line 659
    const v24, 0x7f090a36

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    .line 660
    const v24, 0x7f090a33

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    .line 661
    const v24, 0x7f090a37

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectSeconds:Ljava/lang/String;

    .line 662
    const v24, 0x7f0e008b

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 663
    const v24, 0x7f0e0069

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    .line 665
    const v24, 0x7f11043f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 667
    const v24, 0x7f11043d

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    .line 668
    const v24, 0x7f110440

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 669
    const v24, 0x7f110441

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 671
    const v24, 0x7f110443

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    .line 672
    const v24, 0x7f110444

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 674
    const v24, 0x7f110446

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 676
    const v24, 0x7f110447

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 678
    const v24, 0x7f110445

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    .line 679
    new-instance v24, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v24 .. v24}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, "amPmTexts":[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v24, v5, v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 681
    const/16 v24, 0x1

    aget-object v24, v5, v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .line 683
    new-instance v24, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 686
    new-instance v24, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v27

    invoke-direct/range {v24 .. v27}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 689
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 691
    const v24, 0x7f11044a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move-object/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Z)V

    .line 696
    const/4 v9, 0x0

    .line 697
    .local v9, "currentItemShowing":I
    if-eqz p3, :cond_2

    const-string v24, "current_item_showing"

    .line 698
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 699
    const-string v24, "current_item_showing"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 701
    :cond_2
    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->invalidate()V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$1;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$2;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$3;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    const v24, 0x7f11043a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    new-instance v25, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 743
    :goto_1
    const v24, 0x7f110439

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    new-instance v25, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$5;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 753
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isCancelable()Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 788
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    const v24, 0x7f110442

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 794
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    const v24, 0x7f11043e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 800
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    const/4 v11, 0x1

    .line 802
    .local v11, "isLandscape":Z
    :goto_5
    if-eqz v11, :cond_13

    .line 803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    move/from16 v24, v0

    if-nez v24, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v24, v0

    if-nez v24, :cond_f

    .line 806
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 809
    .local v16, "paramsHour":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x2

    const v25, 0x7f11043c

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 810
    const/16 v24, 0xe

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 815
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 818
    .local v15, "paramsAmPm":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x1

    const v25, 0x7f11043d

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    .end local v15    # "paramsAmPm":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "paramsHour":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    :goto_6
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    .line 946
    const v24, 0x7f090a40

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 947
    const v24, 0x7f090a27

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    .line 949
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->generateLegalTimesTree()V

    .line 951
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 952
    const-string v24, "typed_times"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 953
    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->invalidate()V

    .line 960
    :cond_6
    :goto_7
    const v24, 0x7f11044b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->timePickerHeader:Landroid/widget/TextView;

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->timePickerHeader:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 964
    const v24, 0x7f110449

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundColor(I)V

    .line 965
    const v24, 0x7f11043b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundColor(I)V

    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v24

    if-nez v24, :cond_7

    .line 974
    const v24, 0x7f110438

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 977
    :cond_7
    const v24, 0x7f0e0070

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 978
    .local v7, "circleBackground":I
    const v24, 0x7f0e006b

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 979
    .local v6, "backgroundColor":I
    const v24, 0x7f0e0083

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 980
    .local v10, "darkBackgroundColor":I
    const v24, 0x7f0e0083

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    .line 982
    .local v13, "lightGray":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .end local v13    # "lightGray":I
    :goto_8
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setBackgroundColor(I)V

    .line 983
    const v24, 0x7f110448

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19

    .end local v10    # "darkBackgroundColor":I
    :goto_9
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setTitlebutton(Ljava/lang/String;)V

    .line 986
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v23

    .line 4294967295
    .end local v5    # "amPmTexts":[Ljava/lang/String;
    .end local v6    # "backgroundColor":I
    .end local v7    # "circleBackground":I
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "currentItemShowing":I
    .end local v11    # "isLandscape":Z
    .end local v12    # "keyboardListener":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;
    .end local v20    # "res":Landroid/content/res/Resources;
    .end local v23    # "view":Landroid/view/View;
    :catch_0
    move-exception v24

    const/16 v24, 0x0

    :try_start_1
    const-string v25, "TimePickerDialog#onCreateView"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 741
    .restart local v5    # "amPmTexts":[Ljava/lang/String;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "currentItemShowing":I
    .restart local v12    # "keyboardListener":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;
    .restart local v20    # "res":Landroid/content/res/Resources;
    .restart local v23    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 752
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 753
    :cond_a
    const/16 v24, 0x8

    goto/16 :goto_3

    .line 759
    :cond_b
    new-instance v14, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)V

    .line 775
    .local v14, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-object/from16 v24, v0

    sget-object v25, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v24

    if-eqz v24, :cond_d

    const/16 v24, 0x0

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto/16 :goto_4

    :cond_d
    const/16 v24, 0x1

    goto :goto_a

    .line 800
    .end local v14    # "listener":Landroid/view/View$OnClickListener;
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 821
    .restart local v11    # "isLandscape":Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v24, v0

    if-nez v24, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 824
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 827
    .local v19, "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xe

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 828
    const/16 v24, 0x2

    const v25, 0x7f11043c

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 829
    const v24, 0x7f11043e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 830
    .local v22, "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 831
    .end local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "separatorView":Landroid/widget/TextView;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v24, v0

    if-nez v24, :cond_11

    .line 834
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 837
    .restart local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xe

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 838
    const/16 v24, 0x2

    const v25, 0x7f11043c

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 839
    const v24, 0x7f11043e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 840
    .restart local v22    # "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 845
    .restart local v15    # "paramsAmPm":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xd

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 846
    const/16 v24, 0x3

    const v25, 0x7f11043c

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 848
    .end local v15    # "paramsAmPm":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "separatorView":Landroid/widget/TextView;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 851
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 854
    .restart local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xe

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 855
    const/16 v24, 0x2

    const v25, 0x7f110443

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 856
    const v24, 0x7f11043e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 857
    .restart local v22    # "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 862
    .local v18, "paramsSeconds":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 867
    .end local v18    # "paramsSeconds":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "separatorView":Landroid/widget/TextView;
    :cond_12
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 870
    .restart local v18    # "paramsSeconds":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 876
    .restart local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xe

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 877
    const/16 v24, 0x2

    const v25, 0x7f110443

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 878
    const v24, 0x7f11043e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 879
    .restart local v22    # "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 884
    .restart local v15    # "paramsAmPm":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 885
    const/16 v24, 0x3

    const v25, 0x7f110443

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 889
    .end local v15    # "paramsAmPm":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "paramsSeconds":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "separatorView":Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v24, v0

    if-nez v24, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 891
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 894
    .restart local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xd

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 895
    const v24, 0x7f11043e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 896
    .restart local v22    # "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 897
    .end local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "separatorView":Landroid/widget/TextView;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    move/from16 v24, v0

    if-nez v24, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v24, v0

    if-nez v24, :cond_15

    .line 899
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 902
    .restart local v16    # "paramsHour":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xd

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 906
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 909
    .restart local v15    # "paramsAmPm":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x1

    const v25, 0x7f11043d

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 910
    const/16 v24, 0x4

    const v25, 0x7f11043d

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 913
    .end local v15    # "paramsAmPm":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "paramsHour":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 915
    const v24, 0x7f11043e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 916
    .local v21, "separator":Landroid/view/View;
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 919
    .restart local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x0

    const v25, 0x7f110440

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 920
    const/16 v24, 0xf

    const/16 v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 921
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_16

    .line 925
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 928
    .local v17, "paramsMinutes":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xd

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 932
    .end local v17    # "paramsMinutes":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_16
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 935
    .restart local v17    # "paramsMinutes":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x1

    const v25, 0x7f11043c

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 955
    .end local v17    # "paramsMinutes":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21    # "separator":Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-nez v24, :cond_6

    .line 956
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    goto/16 :goto_7

    .restart local v6    # "backgroundColor":I
    .restart local v7    # "circleBackground":I
    .restart local v10    # "darkBackgroundColor":I
    .restart local v13    # "lightGray":I
    :cond_18
    move v13, v7

    .line 982
    goto/16 :goto_8

    .end local v13    # "lightGray":I
    :cond_19
    move v10, v6

    .line 983
    goto/16 :goto_9
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "onDestroyView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const-string v0, "onDetach"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const-string v0, "onDismiss"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1029
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1030
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 1016
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->stop()V

    .line 1017
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    .line 1018
    :cond_0
    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 1010
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->start()V

    .line 1011
    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    .line 1066
    const-string v0, "initial_time"

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getTime()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1067
    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1068
    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1069
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1070
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    .line 1071
    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1073
    :cond_0
    const-string v0, "dialog_title"

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v0, "theme_dark"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1075
    const-string v0, "theme_dark_changed"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1076
    const-string v0, "accent"

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1077
    const-string v0, "vibrate"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1078
    const-string v0, "dismiss"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1079
    const-string v0, "enable_seconds"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1080
    const-string v0, "enable_minutes"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1081
    const-string v0, "ok_resid"

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    const-string v0, "ok_string"

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v0, "ok_color"

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1084
    const-string v0, "cancel_resid"

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1085
    const-string v0, "cancel_string"

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v0, "cancel_color"

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1087
    const-string v0, "version"

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1088
    const-string v0, "timepoint_limiter"

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1090
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onValueSelected(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V
    .locals 5
    .param p1, "newValue"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "onValueSelected"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimeChangedListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v3

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;->onTimeChanged(II)V

    .line 1099
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 1100
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1101
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 1102
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    .line 1104
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1105
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 1106
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1105
    goto :goto_0
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onViewStateRestored"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v0, "onViewStateRestored"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 3
    .param p1, "time"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "roundToNearest"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->getPickerResolution()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;->roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method public setTitlebutton(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-string v0, "setTitlebutton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mInitialMessage:Ljava/lang/String;

    .line 1110
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->timePickerHeader:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->timePickerHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1114
    :cond_1
    return-void
.end method

.method public tryVibrate()V
    .locals 2

    .prologue
    const-string v0, "tryVibrate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 1035
    :cond_0
    return-void
.end method

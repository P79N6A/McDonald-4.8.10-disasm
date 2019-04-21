.class public Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "RangeTimePickerDialog.java"


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private currentHour:I

.field private currentMinute:I

.field private dateFormat:Ljava/text/DateFormat;

.field private maxHour:I

.field private maxMinute:I

.field private minHour:I

.field private minMinute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/16 v5, 0x19

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 30
    invoke-direct/range {p0 .. p6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 17
    iput v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->minHour:I

    .line 18
    iput v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->minMinute:I

    .line 20
    iput v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->maxHour:I

    .line 21
    iput v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->maxMinute:I

    .line 23
    iput v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentHour:I

    .line 24
    iput v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentMinute:I

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->calendar:Ljava/util/Calendar;

    .line 31
    iput p4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentHour:I

    .line 32
    iput p5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentMinute:I

    .line 33
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->dateFormat:Ljava/text/DateFormat;

    .line 36
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 37
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "mTimePicker"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 38
    .local v1, "mTimePickerField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    .line 40
    .local v0, "mTimePicker":Landroid/widget/TimePicker;
    invoke-virtual {v0, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "mTimePicker":Landroid/widget/TimePicker;
    .end local v1    # "mTimePickerField":Ljava/lang/reflect/Field;
    .end local v2    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v3

    goto :goto_0

    .line 42
    :catch_1
    move-exception v3

    goto :goto_0

    .line 41
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private updateDialogTitle(Landroid/widget/TimePicker;II)V
    .locals 5
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const-string v1, "updateDialogTitle"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->dateFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const-string v1, "onTimeChanged"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "validTime":Z
    iget v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->minHour:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->minHour:I

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->minMinute:I

    if-ge p3, v1, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 65
    :cond_1
    iget v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->maxHour:I

    if-gt p2, v1, :cond_2

    iget v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->maxHour:I

    if-ne p2, v1, :cond_3

    iget v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->maxMinute:I

    if-le p3, v1, :cond_3

    .line 66
    :cond_2
    const/4 v0, 0x0

    .line 69
    :cond_3
    if-eqz v0, :cond_4

    .line 70
    iput p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentHour:I

    .line 71
    iput p3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentMinute:I

    .line 74
    :cond_4
    iget v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentHour:I

    iget v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentMinute:I

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->updateTime(II)V

    .line 75
    iget v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentHour:I

    iget v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->currentMinute:I

    invoke-direct {p0, p1, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->updateDialogTitle(Landroid/widget/TimePicker;II)V

    .line 76
    return-void
.end method

.method public setMax(II)V
    .locals 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const-string v0, "setMax"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->maxHour:I

    .line 54
    iput p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->maxMinute:I

    .line 55
    return-void
.end method

.method public setMin(II)V
    .locals 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const-string v0, "setMin"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iput p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->minHour:I

    .line 49
    iput p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->minMinute:I

    .line 50
    return-void
.end method

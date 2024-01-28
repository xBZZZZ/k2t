//this file is from https://github.com/xBZZZZ/k2t/blob/m/k2t_preload.zig

extern fn dlsym(handle:isize,symbol:[*:0]const u8) callconv(.C) usize;//handle -1 is RTLD_NEXT
extern fn printf(format:[*:0]const u8,...) callconv(.C) i32;
extern fn getenv(name:[*:0]const u8) callconv(.C) usize;
extern fn open(pathname:usize,flags:i32,...) callconv(.C) i32;
extern fn close(fd:i32) callconv(.C) i32;
extern fn memfd_create(name:[*:0]const u8,flags:u32) callconv(.C) i32;
extern fn writev(fd:i32,iov:*const[6]usize,iovcnt:i32) callconv(.C) isize;
extern fn mmap(addr:usize,len:usize,prot:i32,flags:i32,fd:i32,offset:isize) callconv(.C) isize;
extern fn munmap(addr:isize,len:usize) callconv(.C) i32;

comptime{for(.{

//void QScrollArea::setWidget(QWidget *widget)
struct{
	const fname="_ZN11QScrollArea9setWidgetEP7QWidget";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:usize,widget_addr:usize) callconv(.C) void{
		(origf orelse b:{
			do_stuff_on_first_setWidget(@ptrFromInt(cpp_this),@ptrFromInt(widget_addr));
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this,widget_addr);
	}
},

//QTouchDevice::DeviceType QTouchDevice::type() const
struct{
	const fname="_ZNK12QTouchDevice4typeEv";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:isize) callconv(.C) i32{
		if(-1==cpp_this)return 0;//QTouchDevice::QTouchDevice::TouchScreen
		return (origf orelse b:{
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this);
	}
},

//Qt::TouchPointState QTouchEvent::TouchPoint::state() const
struct{
	const fname="_ZNK11QTouchEvent10TouchPoint5stateEv";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:*const isize) callconv(.C) i32{
		if(-1==cpp_this.*)return touch_state;
		return (origf orelse b:{
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this);
	}
},

//QPointF QTouchEvent::TouchPoint::pos() const
struct{
	const fname="_ZNK11QTouchEvent10TouchPoint3posEv";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:*const isize) callconv(.C) QPointF{
		if(-1==cpp_this.*)return kmt.*.touches[touch_index].pos;
		return (origf orelse b:{
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this);
	}
},

//QPointF QTouchEvent::TouchPoint::screenPos() const
struct{
	const fname="_ZNK11QTouchEvent10TouchPoint9screenPosEv";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:*const isize) callconv(.C) QPointF{
		if(-1==cpp_this.*)return QPointF{.x=0,.y=0};
		return (origf orelse b:{
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this);
	}
},

//int QTouchEvent::TouchPoint::id() const
struct{
	const fname="_ZNK11QTouchEvent10TouchPoint2idEv";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:*const isize) callconv(.C) i32{
		if(-1==cpp_this.*)return touch_index;
		return (origf orelse b:{
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this);
	}
},

//qreal QTouchEvent::TouchPoint::pressure() const
struct{
	const fname="_ZNK11QTouchEvent10TouchPoint8pressureEv";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:*const isize) callconv(.C) f64{
		if(-1==cpp_this.*)return kmt.*.touches[touch_index].pressure;
		return (origf orelse b:{
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this);
	}
},

//QSizeF QTouchEvent::TouchPoint::ellipseDiameters() const
struct{
	const fname="_ZNK11QTouchEvent10TouchPoint16ellipseDiametersEv";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:*const isize) callconv(.C) QSizeF{
		if(-1==cpp_this.*)return kmt.*.touches[touch_index].ellipseDiameters;
		return (origf orelse b:{
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this);
	}
},

//qreal QTouchEvent::TouchPoint::rotation() const
struct{
	const fname="_ZNK11QTouchEvent10TouchPoint8rotationEv";
	const ftype=*const @TypeOf(replacedf);
	var origf:?ftype=null;
	fn replacedf(cpp_this:*const isize) callconv(.C) f64{
		if(-1==cpp_this.*)return 0;
		return (origf orelse b:{
			const f:ftype=@ptrFromInt(dlsym(-1,fname));
			origf=f;
			break:b f;
		})(cpp_this);
	}
},

})|s|@export(s.replacedf,.{.name=s.fname});}

//todo: figure out real vtable size, 256*@sizeOf(usize) is arbitrary big enough number
const EmulatorContainer_vtable_size:usize=256*@sizeOf(usize);

//offset of these:
//virtual void keyPressEvent(QKeyEvent *event);
//virtual void keyReleaseEvent(QKeyEvent *event);
const EmulatorContainer_vtable_offset:usize=24*@sizeOf(usize);

//offset of virtual bool event(QEvent *event);
const EmulatorQtWindow_vtable_event_offset:usize=5*@sizeOf(usize);

var EmulatorQtWindow_addr:*const usize=undefined;
var EmulatorQtWindow_event:*const fn(cpp_this:*const usize,event_addr:*const QTouchEvent) callconv(.C) bool=undefined;

const key_func_type=*const @TypeOf(replaced_keyPressEvent);

var orig_keyPressEvent:key_func_type=undefined;
var orig_keyReleaseEvent:key_func_type=undefined;

fn do_stuff_on_first_setWidget(vtable_addr_addr:*isize,EmulatorQtWindow_addr2:*const usize) void{
	const key_map_table_path:usize=getenv("k2t_key_map_table");
	if(0==key_map_table_path){
		_=printf("[k2t] 'k2t_key_map_table' environment variable doesn't exist\n");
		return;
	}
	const mm:isize=b:{
		const fd=open(
			key_map_table_path,
			0//O_RDONLY
		);
		if(-1==fd){
			_=printf("[k2t] open '%s' failed %#m\n",key_map_table_path);
			return;
		}
		defer _=close(fd);
		break:b mmap(
			0,
			@sizeOf(KeyMapTable),
			1,//PROT_READ
			1,//MAP_SHARED
			fd,
			0
		);
	};
	if(-1==mm){
		_=printf("[k2t] mmap '%s' failed %#m\n",key_map_table_path);
		return;
	}
	const kmt2:*const KeyMapTable=@ptrFromInt(@as(usize,@bitCast(mm)));
	//correct magic is "[k2t]0"
	if(1949461339!=kmt2.*.magic1 or 12381!=kmt2.*.magic2){
		_=printf("[k2t] bad '%s' magic\n",key_map_table_path);
		if(0!=munmap(mm,@sizeOf(KeyMapTable)))_=printf("[k2t] munmap '%s' failed %#m\n",key_map_table_path);
		return;
	}
	kmt=kmt2;
	const mm2:isize=b:{
		const fd=memfd_create("[k2t] replacement EmulatorContainer vtable",0);
		if(-1==fd){
			_=printf("[k2t] memfd_create failed %#m\n");
			return;
		}
		defer _=close(fd);
		const wcount=b2:{
			const orig_vtable_addr:usize=@bitCast(vtable_addr_addr.*);
			orig_keyPressEvent=@as(*const key_func_type,@ptrFromInt(orig_vtable_addr+EmulatorContainer_vtable_offset)).*;
			orig_keyReleaseEvent=@as(*const key_func_type,@ptrFromInt(orig_vtable_addr+comptime(EmulatorContainer_vtable_offset+@sizeOf(usize)))).*;
			const replaced_funcs=[2]key_func_type{
				replaced_keyPressEvent,
				replaced_keyReleaseEvent
			};
			const iov=[6]usize{
				orig_vtable_addr,
				EmulatorContainer_vtable_offset,

				@intFromPtr(&replaced_funcs),
				comptime(2*@sizeOf(usize)),

				orig_vtable_addr+comptime(EmulatorContainer_vtable_offset+2*@sizeOf(usize)),
				comptime(EmulatorContainer_vtable_size-EmulatorContainer_vtable_offset-2*@sizeOf(usize))
			};
			break:b2 writev(fd,&iov,3);
		};
		switch(wcount){
			EmulatorContainer_vtable_size=>{},
			-1=>{
				_=printf("[k2t] writev to memfd failed %#m\n");
				return;
			},
			else=>{
				_=printf("[k2t] writev to memfd incomplete %zd/%zd\n",wcount,EmulatorContainer_vtable_size);
				return;
			}
		}
		break:b mmap(
			0,
			EmulatorContainer_vtable_size,
			1,//PROT_READ
			2,//MAP_PRIVATE
			fd,
			0
		);
	};
	if(-1==mm2){
		_=printf("[k2t] mmap memfd failed %#m\n");
		return;
	}
	vtable_addr_addr.*=mm2;
	EmulatorQtWindow_addr=EmulatorQtWindow_addr2;
	EmulatorQtWindow_event=@as(*const @TypeOf(EmulatorQtWindow_event),@ptrFromInt(EmulatorQtWindow_addr2.*+EmulatorQtWindow_vtable_event_offset)).*;
	_=printf("[k2t] replaced EmulatorContainer vtable\n");
}


//only care about k
const QKeyEvent=extern struct{
	vtable_addr:usize,

	//from QEvent
	d:usize,//QEventPrivate *d;
	t:u16,//ushort t;
	bits:u16,//ushort posted : 1;ushort spont : 1;ushort m_accept : 1;ushort reserved : 13;

	//from QInputEvent
	modState:u32,//Qt::KeyboardModifiers modState;
	ts:usize,//ulong ts;

	//from QKeyEvent
	txt:usize,//QString txt;
	k:i32,//int k;
	nScanCode:u32,//quint32 nScanCode;
	nVirtualKey:u32,//quint32 nVirtualKey;
	nModifiers:u32,//quint32 nModifiers;
	c:u16,//ushort c;
	bits2:u16//ushort autor:1;
};

//https://codebrowser.dev/qt5/qtbase/src/corelib/tools/qlist.h.html#91
//only care about begin,end,item
const QListData_Data_with_1_isize=extern struct{
	refcount:i32,
	alloc:i32,
	begin:i32,
	end:i32,
	item:isize
};

//only care about t,_device,_touchPoints
const QTouchEvent=extern struct{
	vtable_addr:usize,

	//from QEvent
	d:usize,//QEventPrivate *d;
	t:u16,//ushort t;
	bits:u16,//ushort posted : 1;ushort spont : 1;ushort m_accept : 1;ushort reserved : 13;

	//from QInputEvent
	modState:i32,//Qt::KeyboardModifiers modState;
	ts:usize,//ulong ts;

	//from QTouchEvent
	_window:usize,//QWindow *_window;
	_target:usize,//QObject *_target;
	//_device is isize to allow -1
	_device:isize,//QTouchDevice *_device;
	_touchPointStates:i32,//Qt::TouchPointStates _touchPointStates;
	_touchPoints:*const QListData_Data_with_1_isize//QList<QTouchEvent::TouchPoint> _touchPoints;
};

const touchev_addr=&QTouchEvent{
	.vtable_addr=0,

	.d=0,
	.t=195,//QEvent::TouchUpdate
	.bits=0,

	.modState=0,
	.ts=0,

	._window=0,
	._target=0,
	._device=-1,
	._touchPointStates=0,
	._touchPoints=&QListData_Data_with_1_isize{
		.refcount=0,
		.alloc=0,
		.begin=0,
		.end=1,
		.item=-1
	}
};

const QPointF=extern struct{
	x:f64,
	y:f64
};

const QSizeF=extern struct{
	width:f64,
	height:f64
};

comptime{
	if(@as(u16,@bitCast([2]u8{0x42,0x69}))!=0x6942)@compileError("not little endian");
}

const Touch=extern struct{
	pos:QPointF,
	ellipseDiameters:QSizeF,
	pressure:f64
};
comptime{
	if(@sizeOf(Touch)!=40){@compileError("weird size");}
	if(@alignOf(Touch)>8){@compileError("weird alignment");}
}

const KeyMapTable=extern struct{
	magic1:u32,
	magic2:u16,
	enables:u16,
	qtkeys:[16]i32,
	touches:[16]Touch
};
comptime{
	if(@sizeOf(KeyMapTable)!=712){@compileError("weird size");}
}

var kmt:*const KeyMapTable=undefined;
var touch_index:u8=undefined;
var touch_state:u8=undefined;

fn update_touch(ev:*const QKeyEvent,ts:u8) bool{
	if(ev.*.bits2&1>0)return false;//don't spam when holding key for long time
	var e:u16=kmt.*.enables;
	while(e>0){
		if(kmt.*.qtkeys[@ctz(e)]==ev.*.k){
			touch_index=@ctz(e);
			touch_state=ts;
			_=EmulatorQtWindow_event(EmulatorQtWindow_addr,touchev_addr);
			return false;
		}
		e&=e-1;//turn off least significant 1 bit
	}
	return true;
}

fn replaced_keyPressEvent(cpp_this:usize,event_addr:*const QKeyEvent) callconv(.C) void{
	if(update_touch(
		event_addr,
		1//Qt::TouchPointPressed
	))orig_keyPressEvent(cpp_this,event_addr);
}

fn replaced_keyReleaseEvent(cpp_this:usize,event_addr:*const QKeyEvent) callconv(.C) void{
	if(update_touch(
		event_addr,
		8//Qt::TouchPointReleased
	))orig_keyReleaseEvent(cpp_this,event_addr);
}
??$
?#?#
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
7
Square
x"T
y"T"
Ttype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.22v2.8.2-0-g2ea19cbb5758??!
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
encoder_conv_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*,
shared_nameencoder_conv_layer_0/kernel
?
/encoder_conv_layer_0/kernel/Read/ReadVariableOpReadVariableOpencoder_conv_layer_0/kernel*$
_output_shapes
:??*
dtype0
?
encoder_conv_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameencoder_conv_layer_0/bias
?
-encoder_conv_layer_0/bias/Read/ReadVariableOpReadVariableOpencoder_conv_layer_0/bias*
_output_shapes	
:?*
dtype0
?
encoder_conv_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*,
shared_nameencoder_conv_layer_1/kernel
?
/encoder_conv_layer_1/kernel/Read/ReadVariableOpReadVariableOpencoder_conv_layer_1/kernel*$
_output_shapes
:??*
dtype0
?
encoder_conv_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameencoder_conv_layer_1/bias
?
-encoder_conv_layer_1/bias/Read/ReadVariableOpReadVariableOpencoder_conv_layer_1/bias*
_output_shapes	
:?*
dtype0
?
encoder_conv_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*,
shared_nameencoder_conv_layer_2/kernel
?
/encoder_conv_layer_2/kernel/Read/ReadVariableOpReadVariableOpencoder_conv_layer_2/kernel*$
_output_shapes
:??*
dtype0
?
encoder_conv_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameencoder_conv_layer_2/bias
?
-encoder_conv_layer_2/bias/Read/ReadVariableOpReadVariableOpencoder_conv_layer_2/bias*
_output_shapes	
:?*
dtype0
?
encoder_conv_layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*,
shared_nameencoder_conv_layer_3/kernel
?
/encoder_conv_layer_3/kernel/Read/ReadVariableOpReadVariableOpencoder_conv_layer_3/kernel*$
_output_shapes
:??*
dtype0
?
encoder_conv_layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameencoder_conv_layer_3/bias
?
-encoder_conv_layer_3/bias/Read/ReadVariableOpReadVariableOpencoder_conv_layer_3/bias*
_output_shapes	
:?*
dtype0
}
encoder_ln_0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameencoder_ln_0/gamma
v
&encoder_ln_0/gamma/Read/ReadVariableOpReadVariableOpencoder_ln_0/gamma*
_output_shapes	
:?*
dtype0
{
encoder_ln_0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameencoder_ln_0/beta
t
%encoder_ln_0/beta/Read/ReadVariableOpReadVariableOpencoder_ln_0/beta*
_output_shapes	
:?*
dtype0
}
encoder_ln_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameencoder_ln_1/gamma
v
&encoder_ln_1/gamma/Read/ReadVariableOpReadVariableOpencoder_ln_1/gamma*
_output_shapes	
:?*
dtype0
{
encoder_ln_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameencoder_ln_1/beta
t
%encoder_ln_1/beta/Read/ReadVariableOpReadVariableOpencoder_ln_1/beta*
_output_shapes	
:?*
dtype0
}
encoder_ln_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameencoder_ln_2/gamma
v
&encoder_ln_2/gamma/Read/ReadVariableOpReadVariableOpencoder_ln_2/gamma*
_output_shapes	
:?*
dtype0
{
encoder_ln_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameencoder_ln_2/beta
t
%encoder_ln_2/beta/Read/ReadVariableOpReadVariableOpencoder_ln_2/beta*
_output_shapes	
:?*
dtype0
}
encoder_ln_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameencoder_ln_3/gamma
v
&encoder_ln_3/gamma/Read/ReadVariableOpReadVariableOpencoder_ln_3/gamma*
_output_shapes	
:?*
dtype0
{
encoder_ln_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameencoder_ln_3/beta
t
%encoder_ln_3/beta/Read/ReadVariableOpReadVariableOpencoder_ln_3/beta*
_output_shapes	
:?*
dtype0
?
vae/encoder/mu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*&
shared_namevae/encoder/mu/kernel
?
)vae/encoder/mu/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/mu/kernel*!
_output_shapes
:???*
dtype0

vae/encoder/mu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namevae/encoder/mu/bias
x
'vae/encoder/mu/bias/Read/ReadVariableOpReadVariableOpvae/encoder/mu/bias*
_output_shapes	
:?*
dtype0
?
vae/encoder/log_variance/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*0
shared_name!vae/encoder/log_variance/kernel
?
3vae/encoder/log_variance/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/log_variance/kernel*!
_output_shapes
:???*
dtype0
?
vae/encoder/log_variance/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namevae/encoder/log_variance/bias
?
1vae/encoder/log_variance/bias/Read/ReadVariableOpReadVariableOpvae/encoder/log_variance/bias*
_output_shapes	
:?*
dtype0
?
 vae/decoder/decoder_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*1
shared_name" vae/decoder/decoder_dense/kernel
?
4vae/decoder/decoder_dense/kernel/Read/ReadVariableOpReadVariableOp vae/decoder/decoder_dense/kernel*!
_output_shapes
:???*
dtype0
?
vae/decoder/decoder_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*/
shared_name vae/decoder/decoder_dense/bias
?
2vae/decoder/decoder_dense/bias/Read/ReadVariableOpReadVariableOpvae/decoder/decoder_dense/bias*
_output_shapes

:??*
dtype0
?
1vae/decoder/decoder_conv_transpose_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*B
shared_name31vae/decoder/decoder_conv_transpose_layer_0/kernel
?
Evae/decoder/decoder_conv_transpose_layer_0/kernel/Read/ReadVariableOpReadVariableOp1vae/decoder/decoder_conv_transpose_layer_0/kernel*$
_output_shapes
:??*
dtype0
?
/vae/decoder/decoder_conv_transpose_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/vae/decoder/decoder_conv_transpose_layer_0/bias
?
Cvae/decoder/decoder_conv_transpose_layer_0/bias/Read/ReadVariableOpReadVariableOp/vae/decoder/decoder_conv_transpose_layer_0/bias*
_output_shapes	
:?*
dtype0
?
1vae/decoder/decoder_conv_transpose_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*B
shared_name31vae/decoder/decoder_conv_transpose_layer_1/kernel
?
Evae/decoder/decoder_conv_transpose_layer_1/kernel/Read/ReadVariableOpReadVariableOp1vae/decoder/decoder_conv_transpose_layer_1/kernel*$
_output_shapes
:??*
dtype0
?
/vae/decoder/decoder_conv_transpose_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/vae/decoder/decoder_conv_transpose_layer_1/bias
?
Cvae/decoder/decoder_conv_transpose_layer_1/bias/Read/ReadVariableOpReadVariableOp/vae/decoder/decoder_conv_transpose_layer_1/bias*
_output_shapes	
:?*
dtype0
?
1vae/decoder/decoder_conv_transpose_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*B
shared_name31vae/decoder/decoder_conv_transpose_layer_2/kernel
?
Evae/decoder/decoder_conv_transpose_layer_2/kernel/Read/ReadVariableOpReadVariableOp1vae/decoder/decoder_conv_transpose_layer_2/kernel*$
_output_shapes
:??*
dtype0
?
/vae/decoder/decoder_conv_transpose_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/vae/decoder/decoder_conv_transpose_layer_2/bias
?
Cvae/decoder/decoder_conv_transpose_layer_2/bias/Read/ReadVariableOpReadVariableOp/vae/decoder/decoder_conv_transpose_layer_2/bias*
_output_shapes	
:?*
dtype0
?
vae/decoder/decoder_ln_0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name vae/decoder/decoder_ln_0/gamma
?
2vae/decoder/decoder_ln_0/gamma/Read/ReadVariableOpReadVariableOpvae/decoder/decoder_ln_0/gamma*
_output_shapes	
:?*
dtype0
?
vae/decoder/decoder_ln_0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namevae/decoder/decoder_ln_0/beta
?
1vae/decoder/decoder_ln_0/beta/Read/ReadVariableOpReadVariableOpvae/decoder/decoder_ln_0/beta*
_output_shapes	
:?*
dtype0
?
vae/decoder/decoder_ln_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name vae/decoder/decoder_ln_1/gamma
?
2vae/decoder/decoder_ln_1/gamma/Read/ReadVariableOpReadVariableOpvae/decoder/decoder_ln_1/gamma*
_output_shapes	
:?*
dtype0
?
vae/decoder/decoder_ln_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namevae/decoder/decoder_ln_1/beta
?
1vae/decoder/decoder_ln_1/beta/Read/ReadVariableOpReadVariableOpvae/decoder/decoder_ln_1/beta*
_output_shapes	
:?*
dtype0
?
vae/decoder/decoder_ln_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name vae/decoder/decoder_ln_2/gamma
?
2vae/decoder/decoder_ln_2/gamma/Read/ReadVariableOpReadVariableOpvae/decoder/decoder_ln_2/gamma*
_output_shapes	
:?*
dtype0
?
vae/decoder/decoder_ln_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namevae/decoder/decoder_ln_2/beta
?
1vae/decoder/decoder_ln_2/beta/Read/ReadVariableOpReadVariableOpvae/decoder/decoder_ln_2/beta*
_output_shapes	
:?*
dtype0
?
1vae/decoder/decoder_conv_transpose_layer_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*B
shared_name31vae/decoder/decoder_conv_transpose_layer_4/kernel
?
Evae/decoder/decoder_conv_transpose_layer_4/kernel/Read/ReadVariableOpReadVariableOp1vae/decoder/decoder_conv_transpose_layer_4/kernel*$
_output_shapes
:??*
dtype0
?
/vae/decoder/decoder_conv_transpose_layer_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/vae/decoder/decoder_conv_transpose_layer_4/bias
?
Cvae/decoder/decoder_conv_transpose_layer_4/bias/Read/ReadVariableOpReadVariableOp/vae/decoder/decoder_conv_transpose_layer_4/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
f
	vae/totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	vae/total
_
vae/total/Read/ReadVariableOpReadVariableOp	vae/total*
_output_shapes
: *
dtype0
f
	vae/countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	vae/count
_
vae/count/Read/ReadVariableOpReadVariableOp	vae/count*
_output_shapes
: *
dtype0
j
vae/total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namevae/total_1
c
vae/total_1/Read/ReadVariableOpReadVariableOpvae/total_1*
_output_shapes
: *
dtype0
j
vae/count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namevae/count_1
c
vae/count_1/Read/ReadVariableOpReadVariableOpvae/count_1*
_output_shapes
: *
dtype0
?
"Adam/encoder_conv_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"Adam/encoder_conv_layer_0/kernel/m
?
6Adam/encoder_conv_layer_0/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/encoder_conv_layer_0/kernel/m*$
_output_shapes
:??*
dtype0
?
 Adam/encoder_conv_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/encoder_conv_layer_0/bias/m
?
4Adam/encoder_conv_layer_0/bias/m/Read/ReadVariableOpReadVariableOp Adam/encoder_conv_layer_0/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/encoder_conv_layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"Adam/encoder_conv_layer_1/kernel/m
?
6Adam/encoder_conv_layer_1/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/encoder_conv_layer_1/kernel/m*$
_output_shapes
:??*
dtype0
?
 Adam/encoder_conv_layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/encoder_conv_layer_1/bias/m
?
4Adam/encoder_conv_layer_1/bias/m/Read/ReadVariableOpReadVariableOp Adam/encoder_conv_layer_1/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/encoder_conv_layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"Adam/encoder_conv_layer_2/kernel/m
?
6Adam/encoder_conv_layer_2/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/encoder_conv_layer_2/kernel/m*$
_output_shapes
:??*
dtype0
?
 Adam/encoder_conv_layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/encoder_conv_layer_2/bias/m
?
4Adam/encoder_conv_layer_2/bias/m/Read/ReadVariableOpReadVariableOp Adam/encoder_conv_layer_2/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/encoder_conv_layer_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"Adam/encoder_conv_layer_3/kernel/m
?
6Adam/encoder_conv_layer_3/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/encoder_conv_layer_3/kernel/m*$
_output_shapes
:??*
dtype0
?
 Adam/encoder_conv_layer_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/encoder_conv_layer_3/bias/m
?
4Adam/encoder_conv_layer_3/bias/m/Read/ReadVariableOpReadVariableOp Adam/encoder_conv_layer_3/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_0/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/encoder_ln_0/gamma/m
?
-Adam/encoder_ln_0/gamma/m/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_0/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_0/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/encoder_ln_0/beta/m
?
,Adam/encoder_ln_0/beta/m/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_0/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/encoder_ln_1/gamma/m
?
-Adam/encoder_ln_1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_1/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/encoder_ln_1/beta/m
?
,Adam/encoder_ln_1/beta/m/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_1/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/encoder_ln_2/gamma/m
?
-Adam/encoder_ln_2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_2/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/encoder_ln_2/beta/m
?
,Adam/encoder_ln_2/beta/m/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_2/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/encoder_ln_3/gamma/m
?
-Adam/encoder_ln_3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_3/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/encoder_ln_3/beta/m
?
,Adam/encoder_ln_3/beta/m/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_3/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/vae/encoder/mu/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*-
shared_nameAdam/vae/encoder/mu/kernel/m
?
0Adam/vae/encoder/mu/kernel/m/Read/ReadVariableOpReadVariableOpAdam/vae/encoder/mu/kernel/m*!
_output_shapes
:???*
dtype0
?
Adam/vae/encoder/mu/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/vae/encoder/mu/bias/m
?
.Adam/vae/encoder/mu/bias/m/Read/ReadVariableOpReadVariableOpAdam/vae/encoder/mu/bias/m*
_output_shapes	
:?*
dtype0
?
&Adam/vae/encoder/log_variance/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*7
shared_name(&Adam/vae/encoder/log_variance/kernel/m
?
:Adam/vae/encoder/log_variance/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/vae/encoder/log_variance/kernel/m*!
_output_shapes
:???*
dtype0
?
$Adam/vae/encoder/log_variance/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/vae/encoder/log_variance/bias/m
?
8Adam/vae/encoder/log_variance/bias/m/Read/ReadVariableOpReadVariableOp$Adam/vae/encoder/log_variance/bias/m*
_output_shapes	
:?*
dtype0
?
'Adam/vae/decoder/decoder_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*8
shared_name)'Adam/vae/decoder/decoder_dense/kernel/m
?
;Adam/vae/decoder/decoder_dense/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/vae/decoder/decoder_dense/kernel/m*!
_output_shapes
:???*
dtype0
?
%Adam/vae/decoder/decoder_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*6
shared_name'%Adam/vae/decoder/decoder_dense/bias/m
?
9Adam/vae/decoder/decoder_dense/bias/m/Read/ReadVariableOpReadVariableOp%Adam/vae/decoder/decoder_dense/bias/m*
_output_shapes

:??*
dtype0
?
8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*I
shared_name:8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/m
?
LAdam/vae/decoder/decoder_conv_transpose_layer_0/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/m*$
_output_shapes
:??*
dtype0
?
6Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/m
?
JAdam/vae/decoder/decoder_conv_transpose_layer_0/bias/m/Read/ReadVariableOpReadVariableOp6Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/m*
_output_shapes	
:?*
dtype0
?
8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*I
shared_name:8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/m
?
LAdam/vae/decoder/decoder_conv_transpose_layer_1/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/m*$
_output_shapes
:??*
dtype0
?
6Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/m
?
JAdam/vae/decoder/decoder_conv_transpose_layer_1/bias/m/Read/ReadVariableOpReadVariableOp6Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/m*
_output_shapes	
:?*
dtype0
?
8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*I
shared_name:8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/m
?
LAdam/vae/decoder/decoder_conv_transpose_layer_2/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/m*$
_output_shapes
:??*
dtype0
?
6Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/m
?
JAdam/vae/decoder/decoder_conv_transpose_layer_2/bias/m/Read/ReadVariableOpReadVariableOp6Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/m*
_output_shapes	
:?*
dtype0
?
%Adam/vae/decoder/decoder_ln_0/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/vae/decoder/decoder_ln_0/gamma/m
?
9Adam/vae/decoder/decoder_ln_0/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/vae/decoder/decoder_ln_0/gamma/m*
_output_shapes	
:?*
dtype0
?
$Adam/vae/decoder/decoder_ln_0/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/vae/decoder/decoder_ln_0/beta/m
?
8Adam/vae/decoder/decoder_ln_0/beta/m/Read/ReadVariableOpReadVariableOp$Adam/vae/decoder/decoder_ln_0/beta/m*
_output_shapes	
:?*
dtype0
?
%Adam/vae/decoder/decoder_ln_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/vae/decoder/decoder_ln_1/gamma/m
?
9Adam/vae/decoder/decoder_ln_1/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/vae/decoder/decoder_ln_1/gamma/m*
_output_shapes	
:?*
dtype0
?
$Adam/vae/decoder/decoder_ln_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/vae/decoder/decoder_ln_1/beta/m
?
8Adam/vae/decoder/decoder_ln_1/beta/m/Read/ReadVariableOpReadVariableOp$Adam/vae/decoder/decoder_ln_1/beta/m*
_output_shapes	
:?*
dtype0
?
%Adam/vae/decoder/decoder_ln_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/vae/decoder/decoder_ln_2/gamma/m
?
9Adam/vae/decoder/decoder_ln_2/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/vae/decoder/decoder_ln_2/gamma/m*
_output_shapes	
:?*
dtype0
?
$Adam/vae/decoder/decoder_ln_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/vae/decoder/decoder_ln_2/beta/m
?
8Adam/vae/decoder/decoder_ln_2/beta/m/Read/ReadVariableOpReadVariableOp$Adam/vae/decoder/decoder_ln_2/beta/m*
_output_shapes	
:?*
dtype0
?
8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*I
shared_name:8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/m
?
LAdam/vae/decoder/decoder_conv_transpose_layer_4/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/m*$
_output_shapes
:??*
dtype0
?
6Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/m
?
JAdam/vae/decoder/decoder_conv_transpose_layer_4/bias/m/Read/ReadVariableOpReadVariableOp6Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/encoder_conv_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"Adam/encoder_conv_layer_0/kernel/v
?
6Adam/encoder_conv_layer_0/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/encoder_conv_layer_0/kernel/v*$
_output_shapes
:??*
dtype0
?
 Adam/encoder_conv_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/encoder_conv_layer_0/bias/v
?
4Adam/encoder_conv_layer_0/bias/v/Read/ReadVariableOpReadVariableOp Adam/encoder_conv_layer_0/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/encoder_conv_layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"Adam/encoder_conv_layer_1/kernel/v
?
6Adam/encoder_conv_layer_1/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/encoder_conv_layer_1/kernel/v*$
_output_shapes
:??*
dtype0
?
 Adam/encoder_conv_layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/encoder_conv_layer_1/bias/v
?
4Adam/encoder_conv_layer_1/bias/v/Read/ReadVariableOpReadVariableOp Adam/encoder_conv_layer_1/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/encoder_conv_layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"Adam/encoder_conv_layer_2/kernel/v
?
6Adam/encoder_conv_layer_2/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/encoder_conv_layer_2/kernel/v*$
_output_shapes
:??*
dtype0
?
 Adam/encoder_conv_layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/encoder_conv_layer_2/bias/v
?
4Adam/encoder_conv_layer_2/bias/v/Read/ReadVariableOpReadVariableOp Adam/encoder_conv_layer_2/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/encoder_conv_layer_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"Adam/encoder_conv_layer_3/kernel/v
?
6Adam/encoder_conv_layer_3/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/encoder_conv_layer_3/kernel/v*$
_output_shapes
:??*
dtype0
?
 Adam/encoder_conv_layer_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/encoder_conv_layer_3/bias/v
?
4Adam/encoder_conv_layer_3/bias/v/Read/ReadVariableOpReadVariableOp Adam/encoder_conv_layer_3/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_0/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/encoder_ln_0/gamma/v
?
-Adam/encoder_ln_0/gamma/v/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_0/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_0/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/encoder_ln_0/beta/v
?
,Adam/encoder_ln_0/beta/v/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_0/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/encoder_ln_1/gamma/v
?
-Adam/encoder_ln_1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_1/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/encoder_ln_1/beta/v
?
,Adam/encoder_ln_1/beta/v/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_1/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/encoder_ln_2/gamma/v
?
-Adam/encoder_ln_2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_2/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/encoder_ln_2/beta/v
?
,Adam/encoder_ln_2/beta/v/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_2/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/encoder_ln_3/gamma/v
?
-Adam/encoder_ln_3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_3/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_ln_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/encoder_ln_3/beta/v
?
,Adam/encoder_ln_3/beta/v/Read/ReadVariableOpReadVariableOpAdam/encoder_ln_3/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/vae/encoder/mu/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*-
shared_nameAdam/vae/encoder/mu/kernel/v
?
0Adam/vae/encoder/mu/kernel/v/Read/ReadVariableOpReadVariableOpAdam/vae/encoder/mu/kernel/v*!
_output_shapes
:???*
dtype0
?
Adam/vae/encoder/mu/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/vae/encoder/mu/bias/v
?
.Adam/vae/encoder/mu/bias/v/Read/ReadVariableOpReadVariableOpAdam/vae/encoder/mu/bias/v*
_output_shapes	
:?*
dtype0
?
&Adam/vae/encoder/log_variance/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*7
shared_name(&Adam/vae/encoder/log_variance/kernel/v
?
:Adam/vae/encoder/log_variance/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/vae/encoder/log_variance/kernel/v*!
_output_shapes
:???*
dtype0
?
$Adam/vae/encoder/log_variance/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/vae/encoder/log_variance/bias/v
?
8Adam/vae/encoder/log_variance/bias/v/Read/ReadVariableOpReadVariableOp$Adam/vae/encoder/log_variance/bias/v*
_output_shapes	
:?*
dtype0
?
'Adam/vae/decoder/decoder_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*8
shared_name)'Adam/vae/decoder/decoder_dense/kernel/v
?
;Adam/vae/decoder/decoder_dense/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/vae/decoder/decoder_dense/kernel/v*!
_output_shapes
:???*
dtype0
?
%Adam/vae/decoder/decoder_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*6
shared_name'%Adam/vae/decoder/decoder_dense/bias/v
?
9Adam/vae/decoder/decoder_dense/bias/v/Read/ReadVariableOpReadVariableOp%Adam/vae/decoder/decoder_dense/bias/v*
_output_shapes

:??*
dtype0
?
8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*I
shared_name:8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/v
?
LAdam/vae/decoder/decoder_conv_transpose_layer_0/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/v*$
_output_shapes
:??*
dtype0
?
6Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/v
?
JAdam/vae/decoder/decoder_conv_transpose_layer_0/bias/v/Read/ReadVariableOpReadVariableOp6Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/v*
_output_shapes	
:?*
dtype0
?
8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*I
shared_name:8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/v
?
LAdam/vae/decoder/decoder_conv_transpose_layer_1/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/v*$
_output_shapes
:??*
dtype0
?
6Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/v
?
JAdam/vae/decoder/decoder_conv_transpose_layer_1/bias/v/Read/ReadVariableOpReadVariableOp6Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/v*
_output_shapes	
:?*
dtype0
?
8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*I
shared_name:8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/v
?
LAdam/vae/decoder/decoder_conv_transpose_layer_2/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/v*$
_output_shapes
:??*
dtype0
?
6Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/v
?
JAdam/vae/decoder/decoder_conv_transpose_layer_2/bias/v/Read/ReadVariableOpReadVariableOp6Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/v*
_output_shapes	
:?*
dtype0
?
%Adam/vae/decoder/decoder_ln_0/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/vae/decoder/decoder_ln_0/gamma/v
?
9Adam/vae/decoder/decoder_ln_0/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/vae/decoder/decoder_ln_0/gamma/v*
_output_shapes	
:?*
dtype0
?
$Adam/vae/decoder/decoder_ln_0/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/vae/decoder/decoder_ln_0/beta/v
?
8Adam/vae/decoder/decoder_ln_0/beta/v/Read/ReadVariableOpReadVariableOp$Adam/vae/decoder/decoder_ln_0/beta/v*
_output_shapes	
:?*
dtype0
?
%Adam/vae/decoder/decoder_ln_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/vae/decoder/decoder_ln_1/gamma/v
?
9Adam/vae/decoder/decoder_ln_1/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/vae/decoder/decoder_ln_1/gamma/v*
_output_shapes	
:?*
dtype0
?
$Adam/vae/decoder/decoder_ln_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/vae/decoder/decoder_ln_1/beta/v
?
8Adam/vae/decoder/decoder_ln_1/beta/v/Read/ReadVariableOpReadVariableOp$Adam/vae/decoder/decoder_ln_1/beta/v*
_output_shapes	
:?*
dtype0
?
%Adam/vae/decoder/decoder_ln_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/vae/decoder/decoder_ln_2/gamma/v
?
9Adam/vae/decoder/decoder_ln_2/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/vae/decoder/decoder_ln_2/gamma/v*
_output_shapes	
:?*
dtype0
?
$Adam/vae/decoder/decoder_ln_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/vae/decoder/decoder_ln_2/beta/v
?
8Adam/vae/decoder/decoder_ln_2/beta/v/Read/ReadVariableOpReadVariableOp$Adam/vae/decoder/decoder_ln_2/beta/v*
_output_shapes	
:?*
dtype0
?
8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*I
shared_name:8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/v
?
LAdam/vae/decoder/decoder_conv_transpose_layer_4/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/v*$
_output_shapes
:??*
dtype0
?
6Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/v
?
JAdam/vae/decoder/decoder_conv_transpose_layer_4/bias/v/Read/ReadVariableOpReadVariableOp6Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
	inp_shape
_reduce_axis
encoder
decoder
	optimizer
loss

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature*
* 
* 
?
conv_filters
conv_kernels
conv_strides
	convs

layernorms
flatten
dense_mu
dense_logvar
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
conv_filters
 conv_kernels
!conv_strides
	"dense
#reshape
	$convs
%
layernorms
&output_conv
#'_self_saveable_object_factories
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses*
?
.iter

/beta_1

0beta_2
	1decay
2learning_rate4m?5m?6m?7m?8m?9m?:m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?Pm?Qm?Rm?Sm?Tm?Um?Vm?Wm?4v?5v?6v?7v?8v?9v?:v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?Pv?Qv?Rv?Sv?Tv?Uv?Vv?Wv?*
* 

3serving_default* 
* 
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19
H20
I21
J22
K23
L24
M25
N26
O27
P28
Q29
R30
S31
T32
U33
V34
W35*
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19
H20
I21
J22
K23
L24
M25
N26
O27
P28
Q29
R30
S31
T32
U33
V34
W35*
* 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
 
]0
^1
_2
`3*
 
a0
b1
c2
d3*
?
#e_self_saveable_object_factories
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses* 
?

Dkernel
Ebias
#l_self_saveable_object_factories
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses*
?

Fkernel
Gbias
#s_self_saveable_object_factories
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses*
* 
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19*
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19*
* 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?

Hkernel
Ibias
#_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 

?0
?1
?2*

?0
?1
?2*
?

Vkernel
Wbias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
* 
z
H0
I1
J2
K3
L4
M5
N6
O7
P8
Q9
R10
S11
T12
U13
V14
W15*
z
H0
I1
J2
K3
L4
M5
N6
O7
P8
Q9
R10
S11
T12
U13
V14
W15*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
[U
VARIABLE_VALUEencoder_conv_layer_0/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEencoder_conv_layer_0/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEencoder_conv_layer_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEencoder_conv_layer_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEencoder_conv_layer_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEencoder_conv_layer_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEencoder_conv_layer_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEencoder_conv_layer_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEencoder_ln_0/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEencoder_ln_0/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEencoder_ln_1/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEencoder_ln_1/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEencoder_ln_2/gamma'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEencoder_ln_2/beta'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEencoder_ln_3/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEencoder_ln_3/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEvae/encoder/mu/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEvae/encoder/mu/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEvae/encoder/log_variance/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEvae/encoder/log_variance/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE vae/decoder/decoder_dense/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEvae/decoder/decoder_dense/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1vae/decoder/decoder_conv_transpose_layer_0/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/vae/decoder/decoder_conv_transpose_layer_0/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1vae/decoder/decoder_conv_transpose_layer_1/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/vae/decoder/decoder_conv_transpose_layer_1/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1vae/decoder/decoder_conv_transpose_layer_2/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/vae/decoder/decoder_conv_transpose_layer_2/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEvae/decoder/decoder_ln_0/gamma'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEvae/decoder/decoder_ln_0/beta'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEvae/decoder/decoder_ln_1/gamma'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEvae/decoder/decoder_ln_1/beta'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEvae/decoder/decoder_ln_2/gamma'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEvae/decoder/decoder_ln_2/beta'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1vae/decoder/decoder_conv_transpose_layer_4/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/vae/decoder/decoder_conv_transpose_layer_4/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

?0
?1
?2*
* 
#
?
recon_loss
?kl_loss*
?

4kernel
5bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?

6kernel
7bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?

8kernel
9bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?

:kernel
;bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis
	<gamma
=beta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis
	>gamma
?beta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis
	@gamma
Abeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis
	Bgamma
Cbeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 
* 
* 
* 

D0
E1*

D0
E1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*
* 
* 
* 

F0
G1*

F0
G1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*
* 
* 
* 
R
]0
^1
_2
`3
a4
b5
c6
d7
8
9
10*
* 
* 
* 
* 

H0
I1*

H0
I1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
?

Jkernel
Kbias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?

Lkernel
Mbias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?

Nkernel
Obias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis
	Pgamma
Qbeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis
	Rgamma
Sbeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis
	Tgamma
Ubeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
* 

V0
W1*

V0
W1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
I
"0
#1
?2
?3
?4
?5
?6
?7
&8*
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
b

?total

?count
$?_self_saveable_object_factories
?	variables
?	keras_api*
b

?total

?count
$?_self_saveable_object_factories
?	variables
?	keras_api*
* 

40
51*

40
51*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 

60
71*

60
71*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 

80
91*

80
91*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 

:0
;1*

:0
;1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

<0
=1*

<0
=1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

>0
?1*

>0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

@0
A1*

@0
A1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

B0
C1*

B0
C1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

J0
K1*

J0
K1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 

L0
M1*

L0
M1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 

N0
O1*

N0
O1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

P0
Q1*

P0
Q1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

R0
S1*

R0
S1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

T0
U1*

T0
U1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
WQ
VARIABLE_VALUE	vae/total4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUE	vae/count4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
YS
VARIABLE_VALUEvae/total_14keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEvae/count_14keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
~x
VARIABLE_VALUE"Adam/encoder_conv_layer_0/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/encoder_conv_layer_0/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/encoder_conv_layer_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/encoder_conv_layer_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/encoder_conv_layer_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/encoder_conv_layer_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/encoder_conv_layer_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/encoder_conv_layer_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/encoder_ln_0/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/encoder_ln_0/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/encoder_ln_1/gamma/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/encoder_ln_1/beta/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/encoder_ln_2/gamma/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/encoder_ln_2/beta/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/encoder_ln_3/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/encoder_ln_3/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/vae/encoder/mu/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/vae/encoder/mu/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUE&Adam/vae/encoder/log_variance/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE$Adam/vae/encoder/log_variance/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/vae/decoder/decoder_dense/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/vae/decoder/decoder_dense/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/vae/decoder/decoder_ln_0/gamma/mCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE$Adam/vae/decoder/decoder_ln_0/beta/mCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/vae/decoder/decoder_ln_1/gamma/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE$Adam/vae/decoder/decoder_ln_1/beta/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/vae/decoder/decoder_ln_2/gamma/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE$Adam/vae/decoder/decoder_ln_2/beta/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/mCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/mCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/encoder_conv_layer_0/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/encoder_conv_layer_0/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/encoder_conv_layer_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/encoder_conv_layer_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/encoder_conv_layer_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/encoder_conv_layer_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/encoder_conv_layer_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/encoder_conv_layer_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/encoder_ln_0/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/encoder_ln_0/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/encoder_ln_1/gamma/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/encoder_ln_1/beta/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/encoder_ln_2/gamma/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/encoder_ln_2/beta/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/encoder_ln_3/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/encoder_ln_3/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/vae/encoder/mu/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/vae/encoder/mu/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUE&Adam/vae/encoder/log_variance/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE$Adam/vae/encoder/log_variance/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/vae/decoder/decoder_dense/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/vae/decoder/decoder_dense/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/vae/decoder/decoder_ln_0/gamma/vCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE$Adam/vae/decoder/decoder_ln_0/beta/vCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/vae/decoder/decoder_ln_1/gamma/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE$Adam/vae/decoder/decoder_ln_1/beta/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/vae/decoder/decoder_ln_2/gamma/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE$Adam/vae/decoder/decoder_ln_2/beta/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/vCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/vCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_args_0Placeholder*-
_output_shapes
:??????????
?*
dtype0*"
shape:??????????
?
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0encoder_conv_layer_0/kernelencoder_conv_layer_0/biasencoder_ln_0/gammaencoder_ln_0/betaencoder_conv_layer_1/kernelencoder_conv_layer_1/biasencoder_ln_1/gammaencoder_ln_1/betaencoder_conv_layer_2/kernelencoder_conv_layer_2/biasencoder_ln_2/gammaencoder_ln_2/betaencoder_conv_layer_3/kernelencoder_conv_layer_3/biasencoder_ln_3/gammaencoder_ln_3/betavae/encoder/mu/kernelvae/encoder/mu/biasvae/encoder/log_variance/kernelvae/encoder/log_variance/bias vae/decoder/decoder_dense/kernelvae/decoder/decoder_dense/bias1vae/decoder/decoder_conv_transpose_layer_0/kernel/vae/decoder/decoder_conv_transpose_layer_0/biasvae/decoder/decoder_ln_0/gammavae/decoder/decoder_ln_0/beta1vae/decoder/decoder_conv_transpose_layer_1/kernel/vae/decoder/decoder_conv_transpose_layer_1/biasvae/decoder/decoder_ln_1/gammavae/decoder/decoder_ln_1/beta1vae/decoder/decoder_conv_transpose_layer_2/kernel/vae/decoder/decoder_conv_transpose_layer_2/biasvae/decoder/decoder_ln_2/gammavae/decoder/decoder_ln_2/beta1vae/decoder/decoder_conv_transpose_layer_4/kernel/vae/decoder/decoder_conv_transpose_layer_4/bias	vae/total	vae/countvae/total_1vae/count_1*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:??????????:??????????
?*F
_read_only_resource_inputs(
&$	
 !"#$*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_399821
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?5
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/encoder_conv_layer_0/kernel/Read/ReadVariableOp-encoder_conv_layer_0/bias/Read/ReadVariableOp/encoder_conv_layer_1/kernel/Read/ReadVariableOp-encoder_conv_layer_1/bias/Read/ReadVariableOp/encoder_conv_layer_2/kernel/Read/ReadVariableOp-encoder_conv_layer_2/bias/Read/ReadVariableOp/encoder_conv_layer_3/kernel/Read/ReadVariableOp-encoder_conv_layer_3/bias/Read/ReadVariableOp&encoder_ln_0/gamma/Read/ReadVariableOp%encoder_ln_0/beta/Read/ReadVariableOp&encoder_ln_1/gamma/Read/ReadVariableOp%encoder_ln_1/beta/Read/ReadVariableOp&encoder_ln_2/gamma/Read/ReadVariableOp%encoder_ln_2/beta/Read/ReadVariableOp&encoder_ln_3/gamma/Read/ReadVariableOp%encoder_ln_3/beta/Read/ReadVariableOp)vae/encoder/mu/kernel/Read/ReadVariableOp'vae/encoder/mu/bias/Read/ReadVariableOp3vae/encoder/log_variance/kernel/Read/ReadVariableOp1vae/encoder/log_variance/bias/Read/ReadVariableOp4vae/decoder/decoder_dense/kernel/Read/ReadVariableOp2vae/decoder/decoder_dense/bias/Read/ReadVariableOpEvae/decoder/decoder_conv_transpose_layer_0/kernel/Read/ReadVariableOpCvae/decoder/decoder_conv_transpose_layer_0/bias/Read/ReadVariableOpEvae/decoder/decoder_conv_transpose_layer_1/kernel/Read/ReadVariableOpCvae/decoder/decoder_conv_transpose_layer_1/bias/Read/ReadVariableOpEvae/decoder/decoder_conv_transpose_layer_2/kernel/Read/ReadVariableOpCvae/decoder/decoder_conv_transpose_layer_2/bias/Read/ReadVariableOp2vae/decoder/decoder_ln_0/gamma/Read/ReadVariableOp1vae/decoder/decoder_ln_0/beta/Read/ReadVariableOp2vae/decoder/decoder_ln_1/gamma/Read/ReadVariableOp1vae/decoder/decoder_ln_1/beta/Read/ReadVariableOp2vae/decoder/decoder_ln_2/gamma/Read/ReadVariableOp1vae/decoder/decoder_ln_2/beta/Read/ReadVariableOpEvae/decoder/decoder_conv_transpose_layer_4/kernel/Read/ReadVariableOpCvae/decoder/decoder_conv_transpose_layer_4/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpvae/total/Read/ReadVariableOpvae/count/Read/ReadVariableOpvae/total_1/Read/ReadVariableOpvae/count_1/Read/ReadVariableOp6Adam/encoder_conv_layer_0/kernel/m/Read/ReadVariableOp4Adam/encoder_conv_layer_0/bias/m/Read/ReadVariableOp6Adam/encoder_conv_layer_1/kernel/m/Read/ReadVariableOp4Adam/encoder_conv_layer_1/bias/m/Read/ReadVariableOp6Adam/encoder_conv_layer_2/kernel/m/Read/ReadVariableOp4Adam/encoder_conv_layer_2/bias/m/Read/ReadVariableOp6Adam/encoder_conv_layer_3/kernel/m/Read/ReadVariableOp4Adam/encoder_conv_layer_3/bias/m/Read/ReadVariableOp-Adam/encoder_ln_0/gamma/m/Read/ReadVariableOp,Adam/encoder_ln_0/beta/m/Read/ReadVariableOp-Adam/encoder_ln_1/gamma/m/Read/ReadVariableOp,Adam/encoder_ln_1/beta/m/Read/ReadVariableOp-Adam/encoder_ln_2/gamma/m/Read/ReadVariableOp,Adam/encoder_ln_2/beta/m/Read/ReadVariableOp-Adam/encoder_ln_3/gamma/m/Read/ReadVariableOp,Adam/encoder_ln_3/beta/m/Read/ReadVariableOp0Adam/vae/encoder/mu/kernel/m/Read/ReadVariableOp.Adam/vae/encoder/mu/bias/m/Read/ReadVariableOp:Adam/vae/encoder/log_variance/kernel/m/Read/ReadVariableOp8Adam/vae/encoder/log_variance/bias/m/Read/ReadVariableOp;Adam/vae/decoder/decoder_dense/kernel/m/Read/ReadVariableOp9Adam/vae/decoder/decoder_dense/bias/m/Read/ReadVariableOpLAdam/vae/decoder/decoder_conv_transpose_layer_0/kernel/m/Read/ReadVariableOpJAdam/vae/decoder/decoder_conv_transpose_layer_0/bias/m/Read/ReadVariableOpLAdam/vae/decoder/decoder_conv_transpose_layer_1/kernel/m/Read/ReadVariableOpJAdam/vae/decoder/decoder_conv_transpose_layer_1/bias/m/Read/ReadVariableOpLAdam/vae/decoder/decoder_conv_transpose_layer_2/kernel/m/Read/ReadVariableOpJAdam/vae/decoder/decoder_conv_transpose_layer_2/bias/m/Read/ReadVariableOp9Adam/vae/decoder/decoder_ln_0/gamma/m/Read/ReadVariableOp8Adam/vae/decoder/decoder_ln_0/beta/m/Read/ReadVariableOp9Adam/vae/decoder/decoder_ln_1/gamma/m/Read/ReadVariableOp8Adam/vae/decoder/decoder_ln_1/beta/m/Read/ReadVariableOp9Adam/vae/decoder/decoder_ln_2/gamma/m/Read/ReadVariableOp8Adam/vae/decoder/decoder_ln_2/beta/m/Read/ReadVariableOpLAdam/vae/decoder/decoder_conv_transpose_layer_4/kernel/m/Read/ReadVariableOpJAdam/vae/decoder/decoder_conv_transpose_layer_4/bias/m/Read/ReadVariableOp6Adam/encoder_conv_layer_0/kernel/v/Read/ReadVariableOp4Adam/encoder_conv_layer_0/bias/v/Read/ReadVariableOp6Adam/encoder_conv_layer_1/kernel/v/Read/ReadVariableOp4Adam/encoder_conv_layer_1/bias/v/Read/ReadVariableOp6Adam/encoder_conv_layer_2/kernel/v/Read/ReadVariableOp4Adam/encoder_conv_layer_2/bias/v/Read/ReadVariableOp6Adam/encoder_conv_layer_3/kernel/v/Read/ReadVariableOp4Adam/encoder_conv_layer_3/bias/v/Read/ReadVariableOp-Adam/encoder_ln_0/gamma/v/Read/ReadVariableOp,Adam/encoder_ln_0/beta/v/Read/ReadVariableOp-Adam/encoder_ln_1/gamma/v/Read/ReadVariableOp,Adam/encoder_ln_1/beta/v/Read/ReadVariableOp-Adam/encoder_ln_2/gamma/v/Read/ReadVariableOp,Adam/encoder_ln_2/beta/v/Read/ReadVariableOp-Adam/encoder_ln_3/gamma/v/Read/ReadVariableOp,Adam/encoder_ln_3/beta/v/Read/ReadVariableOp0Adam/vae/encoder/mu/kernel/v/Read/ReadVariableOp.Adam/vae/encoder/mu/bias/v/Read/ReadVariableOp:Adam/vae/encoder/log_variance/kernel/v/Read/ReadVariableOp8Adam/vae/encoder/log_variance/bias/v/Read/ReadVariableOp;Adam/vae/decoder/decoder_dense/kernel/v/Read/ReadVariableOp9Adam/vae/decoder/decoder_dense/bias/v/Read/ReadVariableOpLAdam/vae/decoder/decoder_conv_transpose_layer_0/kernel/v/Read/ReadVariableOpJAdam/vae/decoder/decoder_conv_transpose_layer_0/bias/v/Read/ReadVariableOpLAdam/vae/decoder/decoder_conv_transpose_layer_1/kernel/v/Read/ReadVariableOpJAdam/vae/decoder/decoder_conv_transpose_layer_1/bias/v/Read/ReadVariableOpLAdam/vae/decoder/decoder_conv_transpose_layer_2/kernel/v/Read/ReadVariableOpJAdam/vae/decoder/decoder_conv_transpose_layer_2/bias/v/Read/ReadVariableOp9Adam/vae/decoder/decoder_ln_0/gamma/v/Read/ReadVariableOp8Adam/vae/decoder/decoder_ln_0/beta/v/Read/ReadVariableOp9Adam/vae/decoder/decoder_ln_1/gamma/v/Read/ReadVariableOp8Adam/vae/decoder/decoder_ln_1/beta/v/Read/ReadVariableOp9Adam/vae/decoder/decoder_ln_2/gamma/v/Read/ReadVariableOp8Adam/vae/decoder/decoder_ln_2/beta/v/Read/ReadVariableOpLAdam/vae/decoder/decoder_conv_transpose_layer_4/kernel/v/Read/ReadVariableOpJAdam/vae/decoder/decoder_conv_transpose_layer_4/bias/v/Read/ReadVariableOpConst*?
Tin}
{2y	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_400600
?"
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateencoder_conv_layer_0/kernelencoder_conv_layer_0/biasencoder_conv_layer_1/kernelencoder_conv_layer_1/biasencoder_conv_layer_2/kernelencoder_conv_layer_2/biasencoder_conv_layer_3/kernelencoder_conv_layer_3/biasencoder_ln_0/gammaencoder_ln_0/betaencoder_ln_1/gammaencoder_ln_1/betaencoder_ln_2/gammaencoder_ln_2/betaencoder_ln_3/gammaencoder_ln_3/betavae/encoder/mu/kernelvae/encoder/mu/biasvae/encoder/log_variance/kernelvae/encoder/log_variance/bias vae/decoder/decoder_dense/kernelvae/decoder/decoder_dense/bias1vae/decoder/decoder_conv_transpose_layer_0/kernel/vae/decoder/decoder_conv_transpose_layer_0/bias1vae/decoder/decoder_conv_transpose_layer_1/kernel/vae/decoder/decoder_conv_transpose_layer_1/bias1vae/decoder/decoder_conv_transpose_layer_2/kernel/vae/decoder/decoder_conv_transpose_layer_2/biasvae/decoder/decoder_ln_0/gammavae/decoder/decoder_ln_0/betavae/decoder/decoder_ln_1/gammavae/decoder/decoder_ln_1/betavae/decoder/decoder_ln_2/gammavae/decoder/decoder_ln_2/beta1vae/decoder/decoder_conv_transpose_layer_4/kernel/vae/decoder/decoder_conv_transpose_layer_4/biastotalcount	vae/total	vae/countvae/total_1vae/count_1"Adam/encoder_conv_layer_0/kernel/m Adam/encoder_conv_layer_0/bias/m"Adam/encoder_conv_layer_1/kernel/m Adam/encoder_conv_layer_1/bias/m"Adam/encoder_conv_layer_2/kernel/m Adam/encoder_conv_layer_2/bias/m"Adam/encoder_conv_layer_3/kernel/m Adam/encoder_conv_layer_3/bias/mAdam/encoder_ln_0/gamma/mAdam/encoder_ln_0/beta/mAdam/encoder_ln_1/gamma/mAdam/encoder_ln_1/beta/mAdam/encoder_ln_2/gamma/mAdam/encoder_ln_2/beta/mAdam/encoder_ln_3/gamma/mAdam/encoder_ln_3/beta/mAdam/vae/encoder/mu/kernel/mAdam/vae/encoder/mu/bias/m&Adam/vae/encoder/log_variance/kernel/m$Adam/vae/encoder/log_variance/bias/m'Adam/vae/decoder/decoder_dense/kernel/m%Adam/vae/decoder/decoder_dense/bias/m8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/m6Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/m8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/m6Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/m8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/m6Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/m%Adam/vae/decoder/decoder_ln_0/gamma/m$Adam/vae/decoder/decoder_ln_0/beta/m%Adam/vae/decoder/decoder_ln_1/gamma/m$Adam/vae/decoder/decoder_ln_1/beta/m%Adam/vae/decoder/decoder_ln_2/gamma/m$Adam/vae/decoder/decoder_ln_2/beta/m8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/m6Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/m"Adam/encoder_conv_layer_0/kernel/v Adam/encoder_conv_layer_0/bias/v"Adam/encoder_conv_layer_1/kernel/v Adam/encoder_conv_layer_1/bias/v"Adam/encoder_conv_layer_2/kernel/v Adam/encoder_conv_layer_2/bias/v"Adam/encoder_conv_layer_3/kernel/v Adam/encoder_conv_layer_3/bias/vAdam/encoder_ln_0/gamma/vAdam/encoder_ln_0/beta/vAdam/encoder_ln_1/gamma/vAdam/encoder_ln_1/beta/vAdam/encoder_ln_2/gamma/vAdam/encoder_ln_2/beta/vAdam/encoder_ln_3/gamma/vAdam/encoder_ln_3/beta/vAdam/vae/encoder/mu/kernel/vAdam/vae/encoder/mu/bias/v&Adam/vae/encoder/log_variance/kernel/v$Adam/vae/encoder/log_variance/bias/v'Adam/vae/decoder/decoder_dense/kernel/v%Adam/vae/decoder/decoder_dense/bias/v8Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/v6Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/v8Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/v6Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/v8Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/v6Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/v%Adam/vae/decoder/decoder_ln_0/gamma/v$Adam/vae/decoder/decoder_ln_0/beta/v%Adam/vae/decoder/decoder_ln_1/gamma/v$Adam/vae/decoder/decoder_ln_1/beta/v%Adam/vae/decoder/decoder_ln_2/gamma/v$Adam/vae/decoder/decoder_ln_2/beta/v8Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/v6Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/v*?
Tin|
z2x*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_400967??
?+
?
Z__inference_decoder_conv_transpose_layer_2_layer_call_and_return_conditional_losses_400219

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
Ȁ
?
A__inference_decoder_layer_call_and_return_conditional_losses_1720
xA
,decoder_dense_matmul_readvariableop_resource:???=
-decoder_dense_biasadd_readvariableop_resource:
??l
Tdecoder_conv_transpose_layer_0_conv1d_transpose_expanddims_1_readvariableop_resource:??M
>decoder_conv_transpose_layer_0_biasadd_readvariableop_resource:	?9
*decoder_ln_0_mul_3_readvariableop_resource:	?7
(decoder_ln_0_add_readvariableop_resource:	?l
Tdecoder_conv_transpose_layer_1_conv1d_transpose_expanddims_1_readvariableop_resource:??M
>decoder_conv_transpose_layer_1_biasadd_readvariableop_resource:	?9
*decoder_ln_1_mul_3_readvariableop_resource:	?7
(decoder_ln_1_add_readvariableop_resource:	?l
Tdecoder_conv_transpose_layer_2_conv1d_transpose_expanddims_1_readvariableop_resource:??M
>decoder_conv_transpose_layer_2_biasadd_readvariableop_resource:	?9
*decoder_ln_2_mul_3_readvariableop_resource:	?7
(decoder_ln_2_add_readvariableop_resource:	?l
Tdecoder_conv_transpose_layer_4_conv1d_transpose_expanddims_1_readvariableop_resource:??M
>decoder_conv_transpose_layer_4_biasadd_readvariableop_resource:	?
identity??5decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOp?Kdecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOp?5decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOp?Kdecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?5decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOp?Kdecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?5decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOp?Kdecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOp?$decoder_dense/BiasAdd/ReadVariableOp?#decoder_dense/MatMul/ReadVariableOp?decoder_ln_0/add/ReadVariableOp?!decoder_ln_0/mul_3/ReadVariableOp?decoder_ln_1/add/ReadVariableOp?!decoder_ln_1/mul_3/ReadVariableOp?decoder_ln_2/add/ReadVariableOp?!decoder_ln_2/mul_3/ReadVariableOp?
#decoder_dense/MatMul/ReadVariableOpReadVariableOp,decoder_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
decoder_dense/MatMulMatMulx+decoder_dense/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:????????????
$decoder_dense/BiasAdd/ReadVariableOpReadVariableOp-decoder_dense_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype0?
decoder_dense/BiasAddBiasAdddecoder_dense/MatMul:product:0,decoder_dense/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????[
reshape/ShapeShapedecoder_dense/BiasAdd:output:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape/ReshapeReshapedecoder_dense/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????l
$decoder_conv_transpose_layer_0/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:|
2decoder_conv_transpose_layer_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4decoder_conv_transpose_layer_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4decoder_conv_transpose_layer_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,decoder_conv_transpose_layer_0/strided_sliceStridedSlice-decoder_conv_transpose_layer_0/Shape:output:0;decoder_conv_transpose_layer_0/strided_slice/stack:output:0=decoder_conv_transpose_layer_0/strided_slice/stack_1:output:0=decoder_conv_transpose_layer_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4decoder_conv_transpose_layer_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6decoder_conv_transpose_layer_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6decoder_conv_transpose_layer_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.decoder_conv_transpose_layer_0/strided_slice_1StridedSlice-decoder_conv_transpose_layer_0/Shape:output:0=decoder_conv_transpose_layer_0/strided_slice_1/stack:output:0?decoder_conv_transpose_layer_0/strided_slice_1/stack_1:output:0?decoder_conv_transpose_layer_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$decoder_conv_transpose_layer_0/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
"decoder_conv_transpose_layer_0/mulMul7decoder_conv_transpose_layer_0/strided_slice_1:output:0-decoder_conv_transpose_layer_0/mul/y:output:0*
T0*
_output_shapes
: i
&decoder_conv_transpose_layer_0/stack/2Const*
_output_shapes
: *
dtype0*
value
B :??
$decoder_conv_transpose_layer_0/stackPack5decoder_conv_transpose_layer_0/strided_slice:output:0&decoder_conv_transpose_layer_0/mul:z:0/decoder_conv_transpose_layer_0/stack/2:output:0*
N*
T0*
_output_shapes
:?
>decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
:decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims
ExpandDimsreshape/Reshape:output:0Gdecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
Kdecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpTdecoder_conv_transpose_layer_0_conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0?
@decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
<decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1
ExpandDimsSdecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Idecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Cdecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Edecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Edecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=decoder_conv_transpose_layer_0/conv1d_transpose/strided_sliceStridedSlice-decoder_conv_transpose_layer_0/stack:output:0Ldecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack:output:0Ndecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack_1:output:0Ndecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Edecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Gdecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Gdecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1StridedSlice-decoder_conv_transpose_layer_0/stack:output:0Ndecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack:output:0Pdecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack_1:output:0Pdecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
?decoder_conv_transpose_layer_0/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:}
;decoder_conv_transpose_layer_0/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
6decoder_conv_transpose_layer_0/conv1d_transpose/concatConcatV2Fdecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice:output:0Hdecoder_conv_transpose_layer_0/conv1d_transpose/concat/values_1:output:0Hdecoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1:output:0Ddecoder_conv_transpose_layer_0/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/decoder_conv_transpose_layer_0/conv1d_transposeConv2DBackpropInput?decoder_conv_transpose_layer_0/conv1d_transpose/concat:output:0Edecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1:output:0Cdecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:?????????0?*
paddingSAME*
strides
?
7decoder_conv_transpose_layer_0/conv1d_transpose/SqueezeSqueeze8decoder_conv_transpose_layer_0/conv1d_transpose:output:0*
T0*,
_output_shapes
:?????????0?*
squeeze_dims
?
5decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOpReadVariableOp>decoder_conv_transpose_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&decoder_conv_transpose_layer_0/BiasAddBiasAdd@decoder_conv_transpose_layer_0/conv1d_transpose/Squeeze:output:0=decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0??
#decoder_conv_transpose_layer_0/ReluRelu/decoder_conv_transpose_layer_0/BiasAdd:output:0*
T0*,
_output_shapes
:?????????0?s
decoder_ln_0/ShapeShape1decoder_conv_transpose_layer_0/Relu:activations:0*
T0*
_output_shapes
:j
 decoder_ln_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"decoder_ln_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"decoder_ln_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_0/strided_sliceStridedSlicedecoder_ln_0/Shape:output:0)decoder_ln_0/strided_slice/stack:output:0+decoder_ln_0/strided_slice/stack_1:output:0+decoder_ln_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
decoder_ln_0/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
decoder_ln_0/mulMuldecoder_ln_0/mul/x:output:0#decoder_ln_0/strided_slice:output:0*
T0*
_output_shapes
: l
"decoder_ln_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_0/strided_slice_1StridedSlicedecoder_ln_0/Shape:output:0+decoder_ln_0/strided_slice_1/stack:output:0-decoder_ln_0/strided_slice_1/stack_1:output:0-decoder_ln_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
decoder_ln_0/mul_1Muldecoder_ln_0/mul:z:0%decoder_ln_0/strided_slice_1:output:0*
T0*
_output_shapes
: l
"decoder_ln_0/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_0/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_0/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_0/strided_slice_2StridedSlicedecoder_ln_0/Shape:output:0+decoder_ln_0/strided_slice_2/stack:output:0-decoder_ln_0/strided_slice_2/stack_1:output:0-decoder_ln_0/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
decoder_ln_0/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder_ln_0/mul_2Muldecoder_ln_0/mul_2/x:output:0%decoder_ln_0/strided_slice_2:output:0*
T0*
_output_shapes
: ^
decoder_ln_0/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
decoder_ln_0/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
decoder_ln_0/Reshape/shapePack%decoder_ln_0/Reshape/shape/0:output:0decoder_ln_0/mul_1:z:0decoder_ln_0/mul_2:z:0%decoder_ln_0/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
decoder_ln_0/ReshapeReshape1decoder_conv_transpose_layer_0/Relu:activations:0#decoder_ln_0/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????f
decoder_ln_0/ones/packedPackdecoder_ln_0/mul_1:z:0*
N*
T0*
_output_shapes
:\
decoder_ln_0/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
decoder_ln_0/onesFill!decoder_ln_0/ones/packed:output:0 decoder_ln_0/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
decoder_ln_0/zeros/packedPackdecoder_ln_0/mul_1:z:0*
N*
T0*
_output_shapes
:]
decoder_ln_0/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
decoder_ln_0/zerosFill"decoder_ln_0/zeros/packed:output:0!decoder_ln_0/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
decoder_ln_0/ConstConst*
_output_shapes
: *
dtype0*
valueB W
decoder_ln_0/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
decoder_ln_0/FusedBatchNormV3FusedBatchNormV3decoder_ln_0/Reshape:output:0decoder_ln_0/ones:output:0decoder_ln_0/zeros:output:0decoder_ln_0/Const:output:0decoder_ln_0/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
decoder_ln_0/Reshape_1Reshape!decoder_ln_0/FusedBatchNormV3:y:0decoder_ln_0/Shape:output:0*
T0*,
_output_shapes
:?????????0??
!decoder_ln_0/mul_3/ReadVariableOpReadVariableOp*decoder_ln_0_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder_ln_0/mul_3Muldecoder_ln_0/Reshape_1:output:0)decoder_ln_0/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0??
decoder_ln_0/add/ReadVariableOpReadVariableOp(decoder_ln_0_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder_ln_0/addAddV2decoder_ln_0/mul_3:z:0'decoder_ln_0/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?h
$decoder_conv_transpose_layer_1/ShapeShapedecoder_ln_0/add:z:0*
T0*
_output_shapes
:|
2decoder_conv_transpose_layer_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4decoder_conv_transpose_layer_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4decoder_conv_transpose_layer_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,decoder_conv_transpose_layer_1/strided_sliceStridedSlice-decoder_conv_transpose_layer_1/Shape:output:0;decoder_conv_transpose_layer_1/strided_slice/stack:output:0=decoder_conv_transpose_layer_1/strided_slice/stack_1:output:0=decoder_conv_transpose_layer_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4decoder_conv_transpose_layer_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6decoder_conv_transpose_layer_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6decoder_conv_transpose_layer_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.decoder_conv_transpose_layer_1/strided_slice_1StridedSlice-decoder_conv_transpose_layer_1/Shape:output:0=decoder_conv_transpose_layer_1/strided_slice_1/stack:output:0?decoder_conv_transpose_layer_1/strided_slice_1/stack_1:output:0?decoder_conv_transpose_layer_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$decoder_conv_transpose_layer_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
"decoder_conv_transpose_layer_1/mulMul7decoder_conv_transpose_layer_1/strided_slice_1:output:0-decoder_conv_transpose_layer_1/mul/y:output:0*
T0*
_output_shapes
: i
&decoder_conv_transpose_layer_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :??
$decoder_conv_transpose_layer_1/stackPack5decoder_conv_transpose_layer_1/strided_slice:output:0&decoder_conv_transpose_layer_1/mul:z:0/decoder_conv_transpose_layer_1/stack/2:output:0*
N*
T0*
_output_shapes
:?
>decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
:decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims
ExpandDimsdecoder_ln_0/add:z:0Gdecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????0??
Kdecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpTdecoder_conv_transpose_layer_1_conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0?
@decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
<decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1
ExpandDimsSdecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Idecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Cdecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Edecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Edecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=decoder_conv_transpose_layer_1/conv1d_transpose/strided_sliceStridedSlice-decoder_conv_transpose_layer_1/stack:output:0Ldecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack:output:0Ndecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack_1:output:0Ndecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Edecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Gdecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Gdecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1StridedSlice-decoder_conv_transpose_layer_1/stack:output:0Ndecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack:output:0Pdecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack_1:output:0Pdecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
?decoder_conv_transpose_layer_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:}
;decoder_conv_transpose_layer_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
6decoder_conv_transpose_layer_1/conv1d_transpose/concatConcatV2Fdecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice:output:0Hdecoder_conv_transpose_layer_1/conv1d_transpose/concat/values_1:output:0Hdecoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1:output:0Ddecoder_conv_transpose_layer_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/decoder_conv_transpose_layer_1/conv1d_transposeConv2DBackpropInput?decoder_conv_transpose_layer_1/conv1d_transpose/concat:output:0Edecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1:output:0Cdecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
7decoder_conv_transpose_layer_1/conv1d_transpose/SqueezeSqueeze8decoder_conv_transpose_layer_1/conv1d_transpose:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims
?
5decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOpReadVariableOp>decoder_conv_transpose_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&decoder_conv_transpose_layer_1/BiasAddBiasAdd@decoder_conv_transpose_layer_1/conv1d_transpose/Squeeze:output:0=decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
#decoder_conv_transpose_layer_1/ReluRelu/decoder_conv_transpose_layer_1/BiasAdd:output:0*
T0*-
_output_shapes
:???????????s
decoder_ln_1/ShapeShape1decoder_conv_transpose_layer_1/Relu:activations:0*
T0*
_output_shapes
:j
 decoder_ln_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"decoder_ln_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"decoder_ln_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_1/strided_sliceStridedSlicedecoder_ln_1/Shape:output:0)decoder_ln_1/strided_slice/stack:output:0+decoder_ln_1/strided_slice/stack_1:output:0+decoder_ln_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
decoder_ln_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
decoder_ln_1/mulMuldecoder_ln_1/mul/x:output:0#decoder_ln_1/strided_slice:output:0*
T0*
_output_shapes
: l
"decoder_ln_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_1/strided_slice_1StridedSlicedecoder_ln_1/Shape:output:0+decoder_ln_1/strided_slice_1/stack:output:0-decoder_ln_1/strided_slice_1/stack_1:output:0-decoder_ln_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
decoder_ln_1/mul_1Muldecoder_ln_1/mul:z:0%decoder_ln_1/strided_slice_1:output:0*
T0*
_output_shapes
: l
"decoder_ln_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_1/strided_slice_2StridedSlicedecoder_ln_1/Shape:output:0+decoder_ln_1/strided_slice_2/stack:output:0-decoder_ln_1/strided_slice_2/stack_1:output:0-decoder_ln_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
decoder_ln_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder_ln_1/mul_2Muldecoder_ln_1/mul_2/x:output:0%decoder_ln_1/strided_slice_2:output:0*
T0*
_output_shapes
: ^
decoder_ln_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
decoder_ln_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
decoder_ln_1/Reshape/shapePack%decoder_ln_1/Reshape/shape/0:output:0decoder_ln_1/mul_1:z:0decoder_ln_1/mul_2:z:0%decoder_ln_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
decoder_ln_1/ReshapeReshape1decoder_conv_transpose_layer_1/Relu:activations:0#decoder_ln_1/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????f
decoder_ln_1/ones/packedPackdecoder_ln_1/mul_1:z:0*
N*
T0*
_output_shapes
:\
decoder_ln_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
decoder_ln_1/onesFill!decoder_ln_1/ones/packed:output:0 decoder_ln_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
decoder_ln_1/zeros/packedPackdecoder_ln_1/mul_1:z:0*
N*
T0*
_output_shapes
:]
decoder_ln_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
decoder_ln_1/zerosFill"decoder_ln_1/zeros/packed:output:0!decoder_ln_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
decoder_ln_1/ConstConst*
_output_shapes
: *
dtype0*
valueB W
decoder_ln_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
decoder_ln_1/FusedBatchNormV3FusedBatchNormV3decoder_ln_1/Reshape:output:0decoder_ln_1/ones:output:0decoder_ln_1/zeros:output:0decoder_ln_1/Const:output:0decoder_ln_1/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
decoder_ln_1/Reshape_1Reshape!decoder_ln_1/FusedBatchNormV3:y:0decoder_ln_1/Shape:output:0*
T0*-
_output_shapes
:????????????
!decoder_ln_1/mul_3/ReadVariableOpReadVariableOp*decoder_ln_1_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder_ln_1/mul_3Muldecoder_ln_1/Reshape_1:output:0)decoder_ln_1/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
decoder_ln_1/add/ReadVariableOpReadVariableOp(decoder_ln_1_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder_ln_1/addAddV2decoder_ln_1/mul_3:z:0'decoder_ln_1/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
$decoder_conv_transpose_layer_2/ShapeShapedecoder_ln_1/add:z:0*
T0*
_output_shapes
:|
2decoder_conv_transpose_layer_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4decoder_conv_transpose_layer_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4decoder_conv_transpose_layer_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,decoder_conv_transpose_layer_2/strided_sliceStridedSlice-decoder_conv_transpose_layer_2/Shape:output:0;decoder_conv_transpose_layer_2/strided_slice/stack:output:0=decoder_conv_transpose_layer_2/strided_slice/stack_1:output:0=decoder_conv_transpose_layer_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4decoder_conv_transpose_layer_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6decoder_conv_transpose_layer_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6decoder_conv_transpose_layer_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.decoder_conv_transpose_layer_2/strided_slice_1StridedSlice-decoder_conv_transpose_layer_2/Shape:output:0=decoder_conv_transpose_layer_2/strided_slice_1/stack:output:0?decoder_conv_transpose_layer_2/strided_slice_1/stack_1:output:0?decoder_conv_transpose_layer_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$decoder_conv_transpose_layer_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
"decoder_conv_transpose_layer_2/mulMul7decoder_conv_transpose_layer_2/strided_slice_1:output:0-decoder_conv_transpose_layer_2/mul/y:output:0*
T0*
_output_shapes
: i
&decoder_conv_transpose_layer_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :??
$decoder_conv_transpose_layer_2/stackPack5decoder_conv_transpose_layer_2/strided_slice:output:0&decoder_conv_transpose_layer_2/mul:z:0/decoder_conv_transpose_layer_2/stack/2:output:0*
N*
T0*
_output_shapes
:?
>decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
:decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims
ExpandDimsdecoder_ln_1/add:z:0Gdecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
Kdecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpTdecoder_conv_transpose_layer_2_conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0?
@decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
<decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1
ExpandDimsSdecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Idecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Cdecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Edecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Edecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=decoder_conv_transpose_layer_2/conv1d_transpose/strided_sliceStridedSlice-decoder_conv_transpose_layer_2/stack:output:0Ldecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack:output:0Ndecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack_1:output:0Ndecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Edecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Gdecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Gdecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1StridedSlice-decoder_conv_transpose_layer_2/stack:output:0Ndecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack:output:0Pdecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack_1:output:0Pdecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
?decoder_conv_transpose_layer_2/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:}
;decoder_conv_transpose_layer_2/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
6decoder_conv_transpose_layer_2/conv1d_transpose/concatConcatV2Fdecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice:output:0Hdecoder_conv_transpose_layer_2/conv1d_transpose/concat/values_1:output:0Hdecoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1:output:0Ddecoder_conv_transpose_layer_2/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/decoder_conv_transpose_layer_2/conv1d_transposeConv2DBackpropInput?decoder_conv_transpose_layer_2/conv1d_transpose/concat:output:0Edecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1:output:0Cdecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
7decoder_conv_transpose_layer_2/conv1d_transpose/SqueezeSqueeze8decoder_conv_transpose_layer_2/conv1d_transpose:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims
?
5decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOpReadVariableOp>decoder_conv_transpose_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&decoder_conv_transpose_layer_2/BiasAddBiasAdd@decoder_conv_transpose_layer_2/conv1d_transpose/Squeeze:output:0=decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
#decoder_conv_transpose_layer_2/ReluRelu/decoder_conv_transpose_layer_2/BiasAdd:output:0*
T0*-
_output_shapes
:???????????s
decoder_ln_2/ShapeShape1decoder_conv_transpose_layer_2/Relu:activations:0*
T0*
_output_shapes
:j
 decoder_ln_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"decoder_ln_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"decoder_ln_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_2/strided_sliceStridedSlicedecoder_ln_2/Shape:output:0)decoder_ln_2/strided_slice/stack:output:0+decoder_ln_2/strided_slice/stack_1:output:0+decoder_ln_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
decoder_ln_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
decoder_ln_2/mulMuldecoder_ln_2/mul/x:output:0#decoder_ln_2/strided_slice:output:0*
T0*
_output_shapes
: l
"decoder_ln_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_2/strided_slice_1StridedSlicedecoder_ln_2/Shape:output:0+decoder_ln_2/strided_slice_1/stack:output:0-decoder_ln_2/strided_slice_1/stack_1:output:0-decoder_ln_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
decoder_ln_2/mul_1Muldecoder_ln_2/mul:z:0%decoder_ln_2/strided_slice_1:output:0*
T0*
_output_shapes
: l
"decoder_ln_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$decoder_ln_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder_ln_2/strided_slice_2StridedSlicedecoder_ln_2/Shape:output:0+decoder_ln_2/strided_slice_2/stack:output:0-decoder_ln_2/strided_slice_2/stack_1:output:0-decoder_ln_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
decoder_ln_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder_ln_2/mul_2Muldecoder_ln_2/mul_2/x:output:0%decoder_ln_2/strided_slice_2:output:0*
T0*
_output_shapes
: ^
decoder_ln_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
decoder_ln_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
decoder_ln_2/Reshape/shapePack%decoder_ln_2/Reshape/shape/0:output:0decoder_ln_2/mul_1:z:0decoder_ln_2/mul_2:z:0%decoder_ln_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
decoder_ln_2/ReshapeReshape1decoder_conv_transpose_layer_2/Relu:activations:0#decoder_ln_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????f
decoder_ln_2/ones/packedPackdecoder_ln_2/mul_1:z:0*
N*
T0*
_output_shapes
:\
decoder_ln_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
decoder_ln_2/onesFill!decoder_ln_2/ones/packed:output:0 decoder_ln_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
decoder_ln_2/zeros/packedPackdecoder_ln_2/mul_1:z:0*
N*
T0*
_output_shapes
:]
decoder_ln_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
decoder_ln_2/zerosFill"decoder_ln_2/zeros/packed:output:0!decoder_ln_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
decoder_ln_2/ConstConst*
_output_shapes
: *
dtype0*
valueB W
decoder_ln_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
decoder_ln_2/FusedBatchNormV3FusedBatchNormV3decoder_ln_2/Reshape:output:0decoder_ln_2/ones:output:0decoder_ln_2/zeros:output:0decoder_ln_2/Const:output:0decoder_ln_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
decoder_ln_2/Reshape_1Reshape!decoder_ln_2/FusedBatchNormV3:y:0decoder_ln_2/Shape:output:0*
T0*-
_output_shapes
:????????????
!decoder_ln_2/mul_3/ReadVariableOpReadVariableOp*decoder_ln_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder_ln_2/mul_3Muldecoder_ln_2/Reshape_1:output:0)decoder_ln_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
decoder_ln_2/add/ReadVariableOpReadVariableOp(decoder_ln_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder_ln_2/addAddV2decoder_ln_2/mul_3:z:0'decoder_ln_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
$decoder_conv_transpose_layer_4/ShapeShapedecoder_ln_2/add:z:0*
T0*
_output_shapes
:|
2decoder_conv_transpose_layer_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4decoder_conv_transpose_layer_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4decoder_conv_transpose_layer_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,decoder_conv_transpose_layer_4/strided_sliceStridedSlice-decoder_conv_transpose_layer_4/Shape:output:0;decoder_conv_transpose_layer_4/strided_slice/stack:output:0=decoder_conv_transpose_layer_4/strided_slice/stack_1:output:0=decoder_conv_transpose_layer_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4decoder_conv_transpose_layer_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6decoder_conv_transpose_layer_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6decoder_conv_transpose_layer_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.decoder_conv_transpose_layer_4/strided_slice_1StridedSlice-decoder_conv_transpose_layer_4/Shape:output:0=decoder_conv_transpose_layer_4/strided_slice_1/stack:output:0?decoder_conv_transpose_layer_4/strided_slice_1/stack_1:output:0?decoder_conv_transpose_layer_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$decoder_conv_transpose_layer_4/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
"decoder_conv_transpose_layer_4/mulMul7decoder_conv_transpose_layer_4/strided_slice_1:output:0-decoder_conv_transpose_layer_4/mul/y:output:0*
T0*
_output_shapes
: i
&decoder_conv_transpose_layer_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :??
$decoder_conv_transpose_layer_4/stackPack5decoder_conv_transpose_layer_4/strided_slice:output:0&decoder_conv_transpose_layer_4/mul:z:0/decoder_conv_transpose_layer_4/stack/2:output:0*
N*
T0*
_output_shapes
:?
>decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
:decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims
ExpandDimsdecoder_ln_2/add:z:0Gdecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
Kdecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpTdecoder_conv_transpose_layer_4_conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0?
@decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
<decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1
ExpandDimsSdecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Idecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Cdecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Edecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Edecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=decoder_conv_transpose_layer_4/conv1d_transpose/strided_sliceStridedSlice-decoder_conv_transpose_layer_4/stack:output:0Ldecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack:output:0Ndecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack_1:output:0Ndecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Edecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Gdecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Gdecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1StridedSlice-decoder_conv_transpose_layer_4/stack:output:0Ndecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack:output:0Pdecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack_1:output:0Pdecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
?decoder_conv_transpose_layer_4/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:}
;decoder_conv_transpose_layer_4/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
6decoder_conv_transpose_layer_4/conv1d_transpose/concatConcatV2Fdecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice:output:0Hdecoder_conv_transpose_layer_4/conv1d_transpose/concat/values_1:output:0Hdecoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1:output:0Ddecoder_conv_transpose_layer_4/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/decoder_conv_transpose_layer_4/conv1d_transposeConv2DBackpropInput?decoder_conv_transpose_layer_4/conv1d_transpose/concat:output:0Edecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1:output:0Cdecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims:output:0*
T0*1
_output_shapes
:??????????
?*
paddingSAME*
strides
?
7decoder_conv_transpose_layer_4/conv1d_transpose/SqueezeSqueeze8decoder_conv_transpose_layer_4/conv1d_transpose:output:0*
T0*-
_output_shapes
:??????????
?*
squeeze_dims
?
5decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOpReadVariableOp>decoder_conv_transpose_layer_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&decoder_conv_transpose_layer_4/BiasAddBiasAdd@decoder_conv_transpose_layer_4/conv1d_transpose/Squeeze:output:0=decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:??????????
??
NoOpNoOp6^decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOpL^decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOp6^decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOpL^decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOp6^decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOpL^decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOp6^decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOpL^decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOp%^decoder_dense/BiasAdd/ReadVariableOp$^decoder_dense/MatMul/ReadVariableOp ^decoder_ln_0/add/ReadVariableOp"^decoder_ln_0/mul_3/ReadVariableOp ^decoder_ln_1/add/ReadVariableOp"^decoder_ln_1/mul_3/ReadVariableOp ^decoder_ln_2/add/ReadVariableOp"^decoder_ln_2/mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ?
IdentityIdentity/decoder_conv_transpose_layer_4/BiasAdd:output:0^NoOp*
T0*-
_output_shapes
:??????????
?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : : : 2n
5decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOp5decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOp2?
Kdecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOpKdecoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOp2n
5decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOp5decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOp2?
Kdecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOpKdecoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2n
5decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOp5decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOp2?
Kdecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOpKdecoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOp2n
5decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOp5decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOp2?
Kdecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOpKdecoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOp2L
$decoder_dense/BiasAdd/ReadVariableOp$decoder_dense/BiasAdd/ReadVariableOp2J
#decoder_dense/MatMul/ReadVariableOp#decoder_dense/MatMul/ReadVariableOp2B
decoder_ln_0/add/ReadVariableOpdecoder_ln_0/add/ReadVariableOp2F
!decoder_ln_0/mul_3/ReadVariableOp!decoder_ln_0/mul_3/ReadVariableOp2B
decoder_ln_1/add/ReadVariableOpdecoder_ln_1/add/ReadVariableOp2F
!decoder_ln_1/mul_3/ReadVariableOp!decoder_ln_1/mul_3/ReadVariableOp2B
decoder_ln_2/add/ReadVariableOpdecoder_ln_2/add/ReadVariableOp2F
!decoder_ln_2/mul_3/ReadVariableOp!decoder_ln_2/mul_3/ReadVariableOp:K G
(
_output_shapes
:??????????

_user_specified_namex
?
?	
$__inference_signature_wrapper_399821

args_0
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?!
	unknown_3:??
	unknown_4:	?
	unknown_5:	?
	unknown_6:	?!
	unknown_7:??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?"

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:???

unknown_16:	?

unknown_17:???

unknown_18:	?

unknown_19:???

unknown_20:
??"

unknown_21:??

unknown_22:	?

unknown_23:	?

unknown_24:	?"

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?"

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?"

unknown_33:??

unknown_34:	?

unknown_35: 

unknown_36: 

unknown_37: 

unknown_38: 
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:??????????:??????????
?*F
_read_only_resource_inputs(
&$	
 !"#$*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_399726p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????w

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:??????????
?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:??????????
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:??????????
?
 
_user_specified_nameargs_0
?
?	
"__inference_vae_layer_call_fn_4495
input_1
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?!
	unknown_3:??
	unknown_4:	?
	unknown_5:	?
	unknown_6:	?!
	unknown_7:??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?"

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:???

unknown_16:	?

unknown_17:???

unknown_18:	?

unknown_19:???

unknown_20:
??"

unknown_21:??

unknown_22:	?

unknown_23:	?

unknown_24:	?"

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?"

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?"

unknown_33:??

unknown_34:	?

unknown_35: 

unknown_36: 

unknown_37: 

unknown_38: 
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????
?:?????????*F
_read_only_resource_inputs(
&$	
 !"#$*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_vae_layer_call_and_return_conditional_losses_4447`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????w

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:??????????
?"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:??????????
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
-
_output_shapes
:??????????
?
!
_user_specified_name	input_1
?$
?
F__inference_encoder_ln_2_layer_call_and_return_conditional_losses_2622

inputs,
mul_3_readvariableop_resource:	?*
add_readvariableop_resource:	?
identity??add/ReadVariableOp?mul_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????L
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:q
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*,
_output_shapes
:?????????0?o
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0u
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:?*
dtype0j
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?r
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 [
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:?????????0?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????0?: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:T P
,
_output_shapes
:?????????0?
 
_user_specified_nameinputs
?
?
N__inference_encoder_conv_layer_3_layer_call_and_return_conditional_losses_3585

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????0??
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????0?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????0?
 
_user_specified_nameinputs
?*
?
X__inference_decoder_conv_transpose_layer_4_layer_call_and_return_conditional_losses_2661

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?+
?
X__inference_decoder_conv_transpose_layer_1_layer_call_and_return_conditional_losses_3121

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:???????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?6
?	
A__inference_decoder_layer_call_and_return_conditional_losses_4090
input_1*
decoder_dense_2437523:???%
decoder_dense_2437525:
??>
&decoder_conv_transpose_layer_0_2437529:??5
&decoder_conv_transpose_layer_0_2437531:	?#
decoder_ln_0_2437534:	?#
decoder_ln_0_2437536:	?>
&decoder_conv_transpose_layer_1_2437539:??5
&decoder_conv_transpose_layer_1_2437541:	?#
decoder_ln_1_2437544:	?#
decoder_ln_1_2437546:	?>
&decoder_conv_transpose_layer_2_2437549:??5
&decoder_conv_transpose_layer_2_2437551:	?#
decoder_ln_2_2437554:	?#
decoder_ln_2_2437556:	?>
&decoder_conv_transpose_layer_4_2437559:??5
&decoder_conv_transpose_layer_4_2437561:	?
identity??6decoder_conv_transpose_layer_0/StatefulPartitionedCall?6decoder_conv_transpose_layer_1/StatefulPartitionedCall?6decoder_conv_transpose_layer_2/StatefulPartitionedCall?6decoder_conv_transpose_layer_4/StatefulPartitionedCall?%decoder_dense/StatefulPartitionedCall?$decoder_ln_0/StatefulPartitionedCall?$decoder_ln_1/StatefulPartitionedCall?$decoder_ln_2/StatefulPartitionedCall?
%decoder_dense/StatefulPartitionedCallStatefulPartitionedCallinput_1decoder_dense_2437523decoder_dense_2437525*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_decoder_dense_layer_call_and_return_conditional_losses_3373?
reshape/PartitionedCallPartitionedCall.decoder_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_2690?
6decoder_conv_transpose_layer_0/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0&decoder_conv_transpose_layer_0_2437529&decoder_conv_transpose_layer_0_2437531*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????0?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_decoder_conv_transpose_layer_0_layer_call_and_return_conditional_losses_3201?
$decoder_ln_0/StatefulPartitionedCallStatefulPartitionedCall?decoder_conv_transpose_layer_0/StatefulPartitionedCall:output:0decoder_ln_0_2437534decoder_ln_0_2437536*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????0?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_ln_0_layer_call_and_return_conditional_losses_2575?
6decoder_conv_transpose_layer_1/StatefulPartitionedCallStatefulPartitionedCall-decoder_ln_0/StatefulPartitionedCall:output:0&decoder_conv_transpose_layer_1_2437539&decoder_conv_transpose_layer_1_2437541*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_decoder_conv_transpose_layer_1_layer_call_and_return_conditional_losses_3121?
$decoder_ln_1/StatefulPartitionedCallStatefulPartitionedCall?decoder_conv_transpose_layer_1/StatefulPartitionedCall:output:0decoder_ln_1_2437544decoder_ln_1_2437546*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_ln_1_layer_call_and_return_conditional_losses_1807?
6decoder_conv_transpose_layer_2/StatefulPartitionedCallStatefulPartitionedCall-decoder_ln_1/StatefulPartitionedCall:output:0&decoder_conv_transpose_layer_2_2437549&decoder_conv_transpose_layer_2_2437551*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_decoder_conv_transpose_layer_2_layer_call_and_return_conditional_losses_3990?
$decoder_ln_2/StatefulPartitionedCallStatefulPartitionedCall?decoder_conv_transpose_layer_2/StatefulPartitionedCall:output:0decoder_ln_2_2437554decoder_ln_2_2437556*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_ln_2_layer_call_and_return_conditional_losses_3459?
6decoder_conv_transpose_layer_4/StatefulPartitionedCallStatefulPartitionedCall-decoder_ln_2/StatefulPartitionedCall:output:0&decoder_conv_transpose_layer_4_2437559&decoder_conv_transpose_layer_4_2437561*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:??????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_decoder_conv_transpose_layer_4_layer_call_and_return_conditional_losses_2661?
NoOpNoOp7^decoder_conv_transpose_layer_0/StatefulPartitionedCall7^decoder_conv_transpose_layer_1/StatefulPartitionedCall7^decoder_conv_transpose_layer_2/StatefulPartitionedCall7^decoder_conv_transpose_layer_4/StatefulPartitionedCall&^decoder_dense/StatefulPartitionedCall%^decoder_ln_0/StatefulPartitionedCall%^decoder_ln_1/StatefulPartitionedCall%^decoder_ln_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ?
IdentityIdentity?decoder_conv_transpose_layer_4/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:??????????
?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : : : 2p
6decoder_conv_transpose_layer_0/StatefulPartitionedCall6decoder_conv_transpose_layer_0/StatefulPartitionedCall2p
6decoder_conv_transpose_layer_1/StatefulPartitionedCall6decoder_conv_transpose_layer_1/StatefulPartitionedCall2p
6decoder_conv_transpose_layer_2/StatefulPartitionedCall6decoder_conv_transpose_layer_2/StatefulPartitionedCall2p
6decoder_conv_transpose_layer_4/StatefulPartitionedCall6decoder_conv_transpose_layer_4/StatefulPartitionedCall2N
%decoder_dense/StatefulPartitionedCall%decoder_dense/StatefulPartitionedCall2L
$decoder_ln_0/StatefulPartitionedCall$decoder_ln_0/StatefulPartitionedCall2L
$decoder_ln_1/StatefulPartitionedCall$decoder_ln_1/StatefulPartitionedCall2L
$decoder_ln_2/StatefulPartitionedCall$decoder_ln_2/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?	
"__inference_vae_layer_call_fn_4543
x
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?!
	unknown_3:??
	unknown_4:	?
	unknown_5:	?
	unknown_6:	?!
	unknown_7:??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?"

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:???

unknown_16:	?

unknown_17:???

unknown_18:	?

unknown_19:???

unknown_20:
??"

unknown_21:??

unknown_22:	?

unknown_23:	?

unknown_24:	?"

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?"

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?"

unknown_33:??

unknown_34:	?

unknown_35: 

unknown_36: 

unknown_37: 

unknown_38: 
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????
?:?????????*F
_read_only_resource_inputs(
&$	
 !"#$*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_vae_layer_call_and_return_conditional_losses_4447`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????w

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:??????????
?"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:??????????
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:??????????
?

_user_specified_namex
?
?
&__inference_encoder_layer_call_fn_4572
input_1
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?!
	unknown_3:??
	unknown_4:	?
	unknown_5:	?
	unknown_6:	?!
	unknown_7:??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?"

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:???

unknown_16:	?

unknown_17:???

unknown_18:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_4248`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:??????????
?: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
-
_output_shapes
:??????????
?
!
_user_specified_name	input_1
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_4200

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?+
?
Z__inference_decoder_conv_transpose_layer_0_layer_call_and_return_conditional_losses_400019

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?$
?
F__inference_decoder_ln_0_layer_call_and_return_conditional_losses_2575

inputs,
mul_3_readvariableop_resource:	?*
add_readvariableop_resource:	?
identity??add/ReadVariableOp?mul_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????L
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:q
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*,
_output_shapes
:?????????0?o
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0u
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:?*
dtype0j
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?r
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 [
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:?????????0?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????0?: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:T P
,
_output_shapes
:?????????0?
 
_user_specified_nameinputs
?H
?

A__inference_encoder_layer_call_and_return_conditional_losses_4248
x4
encoder_conv_layer_0_2436374:??+
encoder_conv_layer_0_2436376:	?#
encoder_ln_0_2436427:	?#
encoder_ln_0_2436429:	?4
encoder_conv_layer_1_2436449:??+
encoder_conv_layer_1_2436451:	?#
encoder_ln_1_2436502:	?#
encoder_ln_1_2436504:	?4
encoder_conv_layer_2_2436524:??+
encoder_conv_layer_2_2436526:	?#
encoder_ln_2_2436577:	?#
encoder_ln_2_2436579:	?4
encoder_conv_layer_3_2436599:??+
encoder_conv_layer_3_2436601:	?#
encoder_ln_3_2436652:	?#
encoder_ln_3_2436654:	?

mu_2436676:???

mu_2436678:	?)
log_variance_2436692:???#
log_variance_2436694:	?
identity

identity_1

identity_2??,encoder_conv_layer_0/StatefulPartitionedCall?,encoder_conv_layer_1/StatefulPartitionedCall?,encoder_conv_layer_2/StatefulPartitionedCall?,encoder_conv_layer_3/StatefulPartitionedCall?$encoder_ln_0/StatefulPartitionedCall?$encoder_ln_1/StatefulPartitionedCall?$encoder_ln_2/StatefulPartitionedCall?$encoder_ln_3/StatefulPartitionedCall?$log_variance/StatefulPartitionedCall?mu/StatefulPartitionedCall?
,encoder_conv_layer_0/StatefulPartitionedCallStatefulPartitionedCallxencoder_conv_layer_0_2436374encoder_conv_layer_0_2436376*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_encoder_conv_layer_0_layer_call_and_return_conditional_losses_3353?
$encoder_ln_0/StatefulPartitionedCallStatefulPartitionedCall5encoder_conv_layer_0/StatefulPartitionedCall:output:0encoder_ln_0_2436427encoder_ln_0_2436429*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_encoder_ln_0_layer_call_and_return_conditional_losses_2737?
,encoder_conv_layer_1/StatefulPartitionedCallStatefulPartitionedCall-encoder_ln_0/StatefulPartitionedCall:output:0encoder_conv_layer_1_2436449encoder_conv_layer_1_2436451*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_encoder_conv_layer_1_layer_call_and_return_conditional_losses_3475?
$encoder_ln_1/StatefulPartitionedCallStatefulPartitionedCall5encoder_conv_layer_1/StatefulPartitionedCall:output:0encoder_ln_1_2436502encoder_ln_1_2436504*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_encoder_ln_1_layer_call_and_return_conditional_losses_3081?
,encoder_conv_layer_2/StatefulPartitionedCallStatefulPartitionedCall-encoder_ln_1/StatefulPartitionedCall:output:0encoder_conv_layer_2_2436524encoder_conv_layer_2_2436526*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????0?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_encoder_conv_layer_2_layer_call_and_return_conditional_losses_2677?
$encoder_ln_2/StatefulPartitionedCallStatefulPartitionedCall5encoder_conv_layer_2/StatefulPartitionedCall:output:0encoder_ln_2_2436577encoder_ln_2_2436579*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????0?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_encoder_ln_2_layer_call_and_return_conditional_losses_2622?
,encoder_conv_layer_3/StatefulPartitionedCallStatefulPartitionedCall-encoder_ln_2/StatefulPartitionedCall:output:0encoder_conv_layer_3_2436599encoder_conv_layer_3_2436601*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_encoder_conv_layer_3_layer_call_and_return_conditional_losses_3585?
$encoder_ln_3/StatefulPartitionedCallStatefulPartitionedCall5encoder_conv_layer_3/StatefulPartitionedCall:output:0encoder_ln_3_2436652encoder_ln_3_2436654*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_encoder_ln_3_layer_call_and_return_conditional_losses_3522?
flatten/PartitionedCallPartitionedCall-encoder_ln_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4200?
mu/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
mu_2436676
mu_2436678*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *E
f@R>
<__inference_mu_layer_call_and_return_conditional_losses_4147?
$log_variance/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0log_variance_2436692log_variance_2436694*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_log_variance_layer_call_and_return_conditional_losses_3363X
ShapeShape#mu/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ݾ??
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:??????????}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:??????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
truedivRealDiv-log_variance/StatefulPartitionedCall:output:0truediv/y:output:0*
T0*(
_output_shapes
:??????????J
ExpExptruediv:z:0*
T0*(
_output_shapes
:??????????Y
mulMulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:??????????m
addAddV2#mu/StatefulPartitionedCall:output:0mul:z:0*
T0*(
_output_shapes
:???????????
NoOpNoOp-^encoder_conv_layer_0/StatefulPartitionedCall-^encoder_conv_layer_1/StatefulPartitionedCall-^encoder_conv_layer_2/StatefulPartitionedCall-^encoder_conv_layer_3/StatefulPartitionedCall%^encoder_ln_0/StatefulPartitionedCall%^encoder_ln_1/StatefulPartitionedCall%^encoder_ln_2/StatefulPartitionedCall%^encoder_ln_3/StatefulPartitionedCall%^log_variance/StatefulPartitionedCall^mu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 W
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:??????????u

Identity_1Identity#mu/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????

Identity_2Identity-log_variance/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:??????????
?: : : : : : : : : : : : : : : : : : : : 2\
,encoder_conv_layer_0/StatefulPartitionedCall,encoder_conv_layer_0/StatefulPartitionedCall2\
,encoder_conv_layer_1/StatefulPartitionedCall,encoder_conv_layer_1/StatefulPartitionedCall2\
,encoder_conv_layer_2/StatefulPartitionedCall,encoder_conv_layer_2/StatefulPartitionedCall2\
,encoder_conv_layer_3/StatefulPartitionedCall,encoder_conv_layer_3/StatefulPartitionedCall2L
$encoder_ln_0/StatefulPartitionedCall$encoder_ln_0/StatefulPartitionedCall2L
$encoder_ln_1/StatefulPartitionedCall$encoder_ln_1/StatefulPartitionedCall2L
$encoder_ln_2/StatefulPartitionedCall$encoder_ln_2/StatefulPartitionedCall2L
$encoder_ln_3/StatefulPartitionedCall$encoder_ln_3/StatefulPartitionedCall2L
$log_variance/StatefulPartitionedCall$log_variance/StatefulPartitionedCall28
mu/StatefulPartitionedCallmu/StatefulPartitionedCall:P L
-
_output_shapes
:??????????
?

_user_specified_namex
?$
?
F__inference_encoder_ln_3_layer_call_and_return_conditional_losses_3522

inputs,
mul_3_readvariableop_resource:	?*
add_readvariableop_resource:	?
identity??add/ReadVariableOp?mul_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????L
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:q
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*,
_output_shapes
:??????????o
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0u
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:?*
dtype0j
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????r
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 [
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
F__inference_decoder_ln_1_layer_call_and_return_conditional_losses_1807

inputs,
mul_3_readvariableop_resource:	?*
add_readvariableop_resource:	?
identity??add/ReadVariableOp?mul_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????L
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:r
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*-
_output_shapes
:???????????o
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0v
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:?*
dtype0k
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 \
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?+
?
X__inference_decoder_conv_transpose_layer_0_layer_call_and_return_conditional_losses_3201

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:???????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?=
__inference__traced_save_400600
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_encoder_conv_layer_0_kernel_read_readvariableop8
4savev2_encoder_conv_layer_0_bias_read_readvariableop:
6savev2_encoder_conv_layer_1_kernel_read_readvariableop8
4savev2_encoder_conv_layer_1_bias_read_readvariableop:
6savev2_encoder_conv_layer_2_kernel_read_readvariableop8
4savev2_encoder_conv_layer_2_bias_read_readvariableop:
6savev2_encoder_conv_layer_3_kernel_read_readvariableop8
4savev2_encoder_conv_layer_3_bias_read_readvariableop1
-savev2_encoder_ln_0_gamma_read_readvariableop0
,savev2_encoder_ln_0_beta_read_readvariableop1
-savev2_encoder_ln_1_gamma_read_readvariableop0
,savev2_encoder_ln_1_beta_read_readvariableop1
-savev2_encoder_ln_2_gamma_read_readvariableop0
,savev2_encoder_ln_2_beta_read_readvariableop1
-savev2_encoder_ln_3_gamma_read_readvariableop0
,savev2_encoder_ln_3_beta_read_readvariableop4
0savev2_vae_encoder_mu_kernel_read_readvariableop2
.savev2_vae_encoder_mu_bias_read_readvariableop>
:savev2_vae_encoder_log_variance_kernel_read_readvariableop<
8savev2_vae_encoder_log_variance_bias_read_readvariableop?
;savev2_vae_decoder_decoder_dense_kernel_read_readvariableop=
9savev2_vae_decoder_decoder_dense_bias_read_readvariableopP
Lsavev2_vae_decoder_decoder_conv_transpose_layer_0_kernel_read_readvariableopN
Jsavev2_vae_decoder_decoder_conv_transpose_layer_0_bias_read_readvariableopP
Lsavev2_vae_decoder_decoder_conv_transpose_layer_1_kernel_read_readvariableopN
Jsavev2_vae_decoder_decoder_conv_transpose_layer_1_bias_read_readvariableopP
Lsavev2_vae_decoder_decoder_conv_transpose_layer_2_kernel_read_readvariableopN
Jsavev2_vae_decoder_decoder_conv_transpose_layer_2_bias_read_readvariableop=
9savev2_vae_decoder_decoder_ln_0_gamma_read_readvariableop<
8savev2_vae_decoder_decoder_ln_0_beta_read_readvariableop=
9savev2_vae_decoder_decoder_ln_1_gamma_read_readvariableop<
8savev2_vae_decoder_decoder_ln_1_beta_read_readvariableop=
9savev2_vae_decoder_decoder_ln_2_gamma_read_readvariableop<
8savev2_vae_decoder_decoder_ln_2_beta_read_readvariableopP
Lsavev2_vae_decoder_decoder_conv_transpose_layer_4_kernel_read_readvariableopN
Jsavev2_vae_decoder_decoder_conv_transpose_layer_4_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop(
$savev2_vae_total_read_readvariableop(
$savev2_vae_count_read_readvariableop*
&savev2_vae_total_1_read_readvariableop*
&savev2_vae_count_1_read_readvariableopA
=savev2_adam_encoder_conv_layer_0_kernel_m_read_readvariableop?
;savev2_adam_encoder_conv_layer_0_bias_m_read_readvariableopA
=savev2_adam_encoder_conv_layer_1_kernel_m_read_readvariableop?
;savev2_adam_encoder_conv_layer_1_bias_m_read_readvariableopA
=savev2_adam_encoder_conv_layer_2_kernel_m_read_readvariableop?
;savev2_adam_encoder_conv_layer_2_bias_m_read_readvariableopA
=savev2_adam_encoder_conv_layer_3_kernel_m_read_readvariableop?
;savev2_adam_encoder_conv_layer_3_bias_m_read_readvariableop8
4savev2_adam_encoder_ln_0_gamma_m_read_readvariableop7
3savev2_adam_encoder_ln_0_beta_m_read_readvariableop8
4savev2_adam_encoder_ln_1_gamma_m_read_readvariableop7
3savev2_adam_encoder_ln_1_beta_m_read_readvariableop8
4savev2_adam_encoder_ln_2_gamma_m_read_readvariableop7
3savev2_adam_encoder_ln_2_beta_m_read_readvariableop8
4savev2_adam_encoder_ln_3_gamma_m_read_readvariableop7
3savev2_adam_encoder_ln_3_beta_m_read_readvariableop;
7savev2_adam_vae_encoder_mu_kernel_m_read_readvariableop9
5savev2_adam_vae_encoder_mu_bias_m_read_readvariableopE
Asavev2_adam_vae_encoder_log_variance_kernel_m_read_readvariableopC
?savev2_adam_vae_encoder_log_variance_bias_m_read_readvariableopF
Bsavev2_adam_vae_decoder_decoder_dense_kernel_m_read_readvariableopD
@savev2_adam_vae_decoder_decoder_dense_bias_m_read_readvariableopW
Ssavev2_adam_vae_decoder_decoder_conv_transpose_layer_0_kernel_m_read_readvariableopU
Qsavev2_adam_vae_decoder_decoder_conv_transpose_layer_0_bias_m_read_readvariableopW
Ssavev2_adam_vae_decoder_decoder_conv_transpose_layer_1_kernel_m_read_readvariableopU
Qsavev2_adam_vae_decoder_decoder_conv_transpose_layer_1_bias_m_read_readvariableopW
Ssavev2_adam_vae_decoder_decoder_conv_transpose_layer_2_kernel_m_read_readvariableopU
Qsavev2_adam_vae_decoder_decoder_conv_transpose_layer_2_bias_m_read_readvariableopD
@savev2_adam_vae_decoder_decoder_ln_0_gamma_m_read_readvariableopC
?savev2_adam_vae_decoder_decoder_ln_0_beta_m_read_readvariableopD
@savev2_adam_vae_decoder_decoder_ln_1_gamma_m_read_readvariableopC
?savev2_adam_vae_decoder_decoder_ln_1_beta_m_read_readvariableopD
@savev2_adam_vae_decoder_decoder_ln_2_gamma_m_read_readvariableopC
?savev2_adam_vae_decoder_decoder_ln_2_beta_m_read_readvariableopW
Ssavev2_adam_vae_decoder_decoder_conv_transpose_layer_4_kernel_m_read_readvariableopU
Qsavev2_adam_vae_decoder_decoder_conv_transpose_layer_4_bias_m_read_readvariableopA
=savev2_adam_encoder_conv_layer_0_kernel_v_read_readvariableop?
;savev2_adam_encoder_conv_layer_0_bias_v_read_readvariableopA
=savev2_adam_encoder_conv_layer_1_kernel_v_read_readvariableop?
;savev2_adam_encoder_conv_layer_1_bias_v_read_readvariableopA
=savev2_adam_encoder_conv_layer_2_kernel_v_read_readvariableop?
;savev2_adam_encoder_conv_layer_2_bias_v_read_readvariableopA
=savev2_adam_encoder_conv_layer_3_kernel_v_read_readvariableop?
;savev2_adam_encoder_conv_layer_3_bias_v_read_readvariableop8
4savev2_adam_encoder_ln_0_gamma_v_read_readvariableop7
3savev2_adam_encoder_ln_0_beta_v_read_readvariableop8
4savev2_adam_encoder_ln_1_gamma_v_read_readvariableop7
3savev2_adam_encoder_ln_1_beta_v_read_readvariableop8
4savev2_adam_encoder_ln_2_gamma_v_read_readvariableop7
3savev2_adam_encoder_ln_2_beta_v_read_readvariableop8
4savev2_adam_encoder_ln_3_gamma_v_read_readvariableop7
3savev2_adam_encoder_ln_3_beta_v_read_readvariableop;
7savev2_adam_vae_encoder_mu_kernel_v_read_readvariableop9
5savev2_adam_vae_encoder_mu_bias_v_read_readvariableopE
Asavev2_adam_vae_encoder_log_variance_kernel_v_read_readvariableopC
?savev2_adam_vae_encoder_log_variance_bias_v_read_readvariableopF
Bsavev2_adam_vae_decoder_decoder_dense_kernel_v_read_readvariableopD
@savev2_adam_vae_decoder_decoder_dense_bias_v_read_readvariableopW
Ssavev2_adam_vae_decoder_decoder_conv_transpose_layer_0_kernel_v_read_readvariableopU
Qsavev2_adam_vae_decoder_decoder_conv_transpose_layer_0_bias_v_read_readvariableopW
Ssavev2_adam_vae_decoder_decoder_conv_transpose_layer_1_kernel_v_read_readvariableopU
Qsavev2_adam_vae_decoder_decoder_conv_transpose_layer_1_bias_v_read_readvariableopW
Ssavev2_adam_vae_decoder_decoder_conv_transpose_layer_2_kernel_v_read_readvariableopU
Qsavev2_adam_vae_decoder_decoder_conv_transpose_layer_2_bias_v_read_readvariableopD
@savev2_adam_vae_decoder_decoder_ln_0_gamma_v_read_readvariableopC
?savev2_adam_vae_decoder_decoder_ln_0_beta_v_read_readvariableopD
@savev2_adam_vae_decoder_decoder_ln_1_gamma_v_read_readvariableopC
?savev2_adam_vae_decoder_decoder_ln_1_beta_v_read_readvariableopD
@savev2_adam_vae_decoder_decoder_ln_2_gamma_v_read_readvariableopC
?savev2_adam_vae_decoder_decoder_ln_2_beta_v_read_readvariableopW
Ssavev2_adam_vae_decoder_decoder_conv_transpose_layer_4_kernel_v_read_readvariableopU
Qsavev2_adam_vae_decoder_decoder_conv_transpose_layer_4_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?7
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:x*
dtype0*?6
value?6B?6xB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:x*
dtype0*?
value?B?xB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?;
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_encoder_conv_layer_0_kernel_read_readvariableop4savev2_encoder_conv_layer_0_bias_read_readvariableop6savev2_encoder_conv_layer_1_kernel_read_readvariableop4savev2_encoder_conv_layer_1_bias_read_readvariableop6savev2_encoder_conv_layer_2_kernel_read_readvariableop4savev2_encoder_conv_layer_2_bias_read_readvariableop6savev2_encoder_conv_layer_3_kernel_read_readvariableop4savev2_encoder_conv_layer_3_bias_read_readvariableop-savev2_encoder_ln_0_gamma_read_readvariableop,savev2_encoder_ln_0_beta_read_readvariableop-savev2_encoder_ln_1_gamma_read_readvariableop,savev2_encoder_ln_1_beta_read_readvariableop-savev2_encoder_ln_2_gamma_read_readvariableop,savev2_encoder_ln_2_beta_read_readvariableop-savev2_encoder_ln_3_gamma_read_readvariableop,savev2_encoder_ln_3_beta_read_readvariableop0savev2_vae_encoder_mu_kernel_read_readvariableop.savev2_vae_encoder_mu_bias_read_readvariableop:savev2_vae_encoder_log_variance_kernel_read_readvariableop8savev2_vae_encoder_log_variance_bias_read_readvariableop;savev2_vae_decoder_decoder_dense_kernel_read_readvariableop9savev2_vae_decoder_decoder_dense_bias_read_readvariableopLsavev2_vae_decoder_decoder_conv_transpose_layer_0_kernel_read_readvariableopJsavev2_vae_decoder_decoder_conv_transpose_layer_0_bias_read_readvariableopLsavev2_vae_decoder_decoder_conv_transpose_layer_1_kernel_read_readvariableopJsavev2_vae_decoder_decoder_conv_transpose_layer_1_bias_read_readvariableopLsavev2_vae_decoder_decoder_conv_transpose_layer_2_kernel_read_readvariableopJsavev2_vae_decoder_decoder_conv_transpose_layer_2_bias_read_readvariableop9savev2_vae_decoder_decoder_ln_0_gamma_read_readvariableop8savev2_vae_decoder_decoder_ln_0_beta_read_readvariableop9savev2_vae_decoder_decoder_ln_1_gamma_read_readvariableop8savev2_vae_decoder_decoder_ln_1_beta_read_readvariableop9savev2_vae_decoder_decoder_ln_2_gamma_read_readvariableop8savev2_vae_decoder_decoder_ln_2_beta_read_readvariableopLsavev2_vae_decoder_decoder_conv_transpose_layer_4_kernel_read_readvariableopJsavev2_vae_decoder_decoder_conv_transpose_layer_4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop$savev2_vae_total_read_readvariableop$savev2_vae_count_read_readvariableop&savev2_vae_total_1_read_readvariableop&savev2_vae_count_1_read_readvariableop=savev2_adam_encoder_conv_layer_0_kernel_m_read_readvariableop;savev2_adam_encoder_conv_layer_0_bias_m_read_readvariableop=savev2_adam_encoder_conv_layer_1_kernel_m_read_readvariableop;savev2_adam_encoder_conv_layer_1_bias_m_read_readvariableop=savev2_adam_encoder_conv_layer_2_kernel_m_read_readvariableop;savev2_adam_encoder_conv_layer_2_bias_m_read_readvariableop=savev2_adam_encoder_conv_layer_3_kernel_m_read_readvariableop;savev2_adam_encoder_conv_layer_3_bias_m_read_readvariableop4savev2_adam_encoder_ln_0_gamma_m_read_readvariableop3savev2_adam_encoder_ln_0_beta_m_read_readvariableop4savev2_adam_encoder_ln_1_gamma_m_read_readvariableop3savev2_adam_encoder_ln_1_beta_m_read_readvariableop4savev2_adam_encoder_ln_2_gamma_m_read_readvariableop3savev2_adam_encoder_ln_2_beta_m_read_readvariableop4savev2_adam_encoder_ln_3_gamma_m_read_readvariableop3savev2_adam_encoder_ln_3_beta_m_read_readvariableop7savev2_adam_vae_encoder_mu_kernel_m_read_readvariableop5savev2_adam_vae_encoder_mu_bias_m_read_readvariableopAsavev2_adam_vae_encoder_log_variance_kernel_m_read_readvariableop?savev2_adam_vae_encoder_log_variance_bias_m_read_readvariableopBsavev2_adam_vae_decoder_decoder_dense_kernel_m_read_readvariableop@savev2_adam_vae_decoder_decoder_dense_bias_m_read_readvariableopSsavev2_adam_vae_decoder_decoder_conv_transpose_layer_0_kernel_m_read_readvariableopQsavev2_adam_vae_decoder_decoder_conv_transpose_layer_0_bias_m_read_readvariableopSsavev2_adam_vae_decoder_decoder_conv_transpose_layer_1_kernel_m_read_readvariableopQsavev2_adam_vae_decoder_decoder_conv_transpose_layer_1_bias_m_read_readvariableopSsavev2_adam_vae_decoder_decoder_conv_transpose_layer_2_kernel_m_read_readvariableopQsavev2_adam_vae_decoder_decoder_conv_transpose_layer_2_bias_m_read_readvariableop@savev2_adam_vae_decoder_decoder_ln_0_gamma_m_read_readvariableop?savev2_adam_vae_decoder_decoder_ln_0_beta_m_read_readvariableop@savev2_adam_vae_decoder_decoder_ln_1_gamma_m_read_readvariableop?savev2_adam_vae_decoder_decoder_ln_1_beta_m_read_readvariableop@savev2_adam_vae_decoder_decoder_ln_2_gamma_m_read_readvariableop?savev2_adam_vae_decoder_decoder_ln_2_beta_m_read_readvariableopSsavev2_adam_vae_decoder_decoder_conv_transpose_layer_4_kernel_m_read_readvariableopQsavev2_adam_vae_decoder_decoder_conv_transpose_layer_4_bias_m_read_readvariableop=savev2_adam_encoder_conv_layer_0_kernel_v_read_readvariableop;savev2_adam_encoder_conv_layer_0_bias_v_read_readvariableop=savev2_adam_encoder_conv_layer_1_kernel_v_read_readvariableop;savev2_adam_encoder_conv_layer_1_bias_v_read_readvariableop=savev2_adam_encoder_conv_layer_2_kernel_v_read_readvariableop;savev2_adam_encoder_conv_layer_2_bias_v_read_readvariableop=savev2_adam_encoder_conv_layer_3_kernel_v_read_readvariableop;savev2_adam_encoder_conv_layer_3_bias_v_read_readvariableop4savev2_adam_encoder_ln_0_gamma_v_read_readvariableop3savev2_adam_encoder_ln_0_beta_v_read_readvariableop4savev2_adam_encoder_ln_1_gamma_v_read_readvariableop3savev2_adam_encoder_ln_1_beta_v_read_readvariableop4savev2_adam_encoder_ln_2_gamma_v_read_readvariableop3savev2_adam_encoder_ln_2_beta_v_read_readvariableop4savev2_adam_encoder_ln_3_gamma_v_read_readvariableop3savev2_adam_encoder_ln_3_beta_v_read_readvariableop7savev2_adam_vae_encoder_mu_kernel_v_read_readvariableop5savev2_adam_vae_encoder_mu_bias_v_read_readvariableopAsavev2_adam_vae_encoder_log_variance_kernel_v_read_readvariableop?savev2_adam_vae_encoder_log_variance_bias_v_read_readvariableopBsavev2_adam_vae_decoder_decoder_dense_kernel_v_read_readvariableop@savev2_adam_vae_decoder_decoder_dense_bias_v_read_readvariableopSsavev2_adam_vae_decoder_decoder_conv_transpose_layer_0_kernel_v_read_readvariableopQsavev2_adam_vae_decoder_decoder_conv_transpose_layer_0_bias_v_read_readvariableopSsavev2_adam_vae_decoder_decoder_conv_transpose_layer_1_kernel_v_read_readvariableopQsavev2_adam_vae_decoder_decoder_conv_transpose_layer_1_bias_v_read_readvariableopSsavev2_adam_vae_decoder_decoder_conv_transpose_layer_2_kernel_v_read_readvariableopQsavev2_adam_vae_decoder_decoder_conv_transpose_layer_2_bias_v_read_readvariableop@savev2_adam_vae_decoder_decoder_ln_0_gamma_v_read_readvariableop?savev2_adam_vae_decoder_decoder_ln_0_beta_v_read_readvariableop@savev2_adam_vae_decoder_decoder_ln_1_gamma_v_read_readvariableop?savev2_adam_vae_decoder_decoder_ln_1_beta_v_read_readvariableop@savev2_adam_vae_decoder_decoder_ln_2_gamma_v_read_readvariableop?savev2_adam_vae_decoder_decoder_ln_2_beta_v_read_readvariableopSsavev2_adam_vae_decoder_decoder_conv_transpose_layer_4_kernel_v_read_readvariableopQsavev2_adam_vae_decoder_decoder_conv_transpose_layer_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes|
z2x	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :??:?:??:?:??:?:??:?:?:?:?:?:?:?:?:?:???:?:???:?:???:??:??:?:??:?:??:?:?:?:?:?:?:?:??:?: : : : : : :??:?:??:?:??:?:??:?:?:?:?:?:?:?:?:?:???:?:???:?:???:??:??:?:??:?:??:?:?:?:?:?:?:?:??:?:??:?:??:?:??:?:??:?:?:?:?:?:?:?:?:?:???:?:???:?:???:??:??:?:??:?:??:?:?:?:?:?:?:?:??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :*&
$
_output_shapes
:??:!

_output_shapes	
:?:*&
$
_output_shapes
:??:!	

_output_shapes	
:?:*
&
$
_output_shapes
:??:!

_output_shapes	
:?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:'#
!
_output_shapes
:???:!

_output_shapes	
:?:'#
!
_output_shapes
:???:!

_output_shapes	
:?:'#
!
_output_shapes
:???:"

_output_shapes

:??:*&
$
_output_shapes
:??:!

_output_shapes	
:?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:* &
$
_output_shapes
:??:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:!$

_output_shapes	
:?:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:*(&
$
_output_shapes
:??:!)

_output_shapes	
:?:*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :*0&
$
_output_shapes
:??:!1

_output_shapes	
:?:*2&
$
_output_shapes
:??:!3

_output_shapes	
:?:*4&
$
_output_shapes
:??:!5

_output_shapes	
:?:*6&
$
_output_shapes
:??:!7

_output_shapes	
:?:!8

_output_shapes	
:?:!9

_output_shapes	
:?:!:

_output_shapes	
:?:!;

_output_shapes	
:?:!<

_output_shapes	
:?:!=

_output_shapes	
:?:!>

_output_shapes	
:?:!?

_output_shapes	
:?:'@#
!
_output_shapes
:???:!A

_output_shapes	
:?:'B#
!
_output_shapes
:???:!C

_output_shapes	
:?:'D#
!
_output_shapes
:???:"E

_output_shapes

:??:*F&
$
_output_shapes
:??:!G

_output_shapes	
:?:*H&
$
_output_shapes
:??:!I

_output_shapes	
:?:*J&
$
_output_shapes
:??:!K

_output_shapes	
:?:!L

_output_shapes	
:?:!M

_output_shapes	
:?:!N

_output_shapes	
:?:!O

_output_shapes	
:?:!P

_output_shapes	
:?:!Q

_output_shapes	
:?:*R&
$
_output_shapes
:??:!S

_output_shapes	
:?:*T&
$
_output_shapes
:??:!U

_output_shapes	
:?:*V&
$
_output_shapes
:??:!W

_output_shapes	
:?:*X&
$
_output_shapes
:??:!Y

_output_shapes	
:?:*Z&
$
_output_shapes
:??:![

_output_shapes	
:?:!\

_output_shapes	
:?:!]

_output_shapes	
:?:!^

_output_shapes	
:?:!_

_output_shapes	
:?:!`

_output_shapes	
:?:!a

_output_shapes	
:?:!b

_output_shapes	
:?:!c

_output_shapes	
:?:'d#
!
_output_shapes
:???:!e

_output_shapes	
:?:'f#
!
_output_shapes
:???:!g

_output_shapes	
:?:'h#
!
_output_shapes
:???:"i

_output_shapes

:??:*j&
$
_output_shapes
:??:!k

_output_shapes	
:?:*l&
$
_output_shapes
:??:!m

_output_shapes	
:?:*n&
$
_output_shapes
:??:!o

_output_shapes	
:?:!p

_output_shapes	
:?:!q

_output_shapes	
:?:!r

_output_shapes	
:?:!s

_output_shapes	
:?:!t

_output_shapes	
:?:!u

_output_shapes	
:?:*v&
$
_output_shapes
:??:!w

_output_shapes	
:?:x

_output_shapes
: 
?D
?
=__inference_vae_layer_call_and_return_conditional_losses_4333
input_1'
encoder_2437867:??
encoder_2437869:	?
encoder_2437871:	?
encoder_2437873:	?'
encoder_2437875:??
encoder_2437877:	?
encoder_2437879:	?
encoder_2437881:	?'
encoder_2437883:??
encoder_2437885:	?
encoder_2437887:	?
encoder_2437889:	?'
encoder_2437891:??
encoder_2437893:	?
encoder_2437895:	?
encoder_2437897:	?$
encoder_2437899:???
encoder_2437901:	?$
encoder_2437903:???
encoder_2437905:	?$
decoder_2437910:???
decoder_2437912:
??'
decoder_2437914:??
decoder_2437916:	?
decoder_2437918:	?
decoder_2437920:	?'
decoder_2437922:??
decoder_2437924:	?
decoder_2437926:	?
decoder_2437928:	?'
decoder_2437930:??
decoder_2437932:	?
decoder_2437934:	?
decoder_2437936:	?'
decoder_2437938:??
decoder_2437940:	?&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: (
assignaddvariableop_2_resource: (
assignaddvariableop_3_resource: 

identity_2

identity_3

identity_4??AssignAddVariableOp?AssignAddVariableOp_1?AssignAddVariableOp_2?AssignAddVariableOp_3?decoder/StatefulPartitionedCall?div_no_nan/ReadVariableOp?div_no_nan/ReadVariableOp_1?div_no_nan_1/ReadVariableOp?div_no_nan_1/ReadVariableOp_1?encoder/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_2437867encoder_2437869encoder_2437871encoder_2437873encoder_2437875encoder_2437877encoder_2437879encoder_2437881encoder_2437883encoder_2437885encoder_2437887encoder_2437889encoder_2437891encoder_2437893encoder_2437895encoder_2437897encoder_2437899encoder_2437901encoder_2437903encoder_2437905* 
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_4248?
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_2437910decoder_2437912decoder_2437914decoder_2437916decoder_2437918decoder_2437920decoder_2437922decoder_2437924decoder_2437926decoder_2437928decoder_2437930decoder_2437932decoder_2437934decoder_2437936decoder_2437938decoder_2437940*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:??????????
?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_4019u
subSubinput_1(decoder/StatefulPartitionedCall:output:0*
T0*-
_output_shapes
:??????????
?Q
SquareSquaresub:z:0*
T0*-
_output_shapes
:??????????
?g
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      g
MeanMean
Square:y:0Mean/reduction_indices:output:0*
T0*#
_output_shapes
:?????????J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FW
mulMulmul/x:output:0Mean:output:0*
T0*#
_output_shapes
:?????????J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??y
addAddV2add/x:output:0(encoder/StatefulPartitionedCall:output:2*
T0*(
_output_shapes
:??????????o
Square_1Square(encoder/StatefulPartitionedCall:output:1*
T0*(
_output_shapes
:??????????V
sub_1Subadd:z:0Square_1:y:0*
T0*(
_output_shapes
:??????????g
ExpExp(encoder/StatefulPartitionedCall:output:2*
T0*(
_output_shapes
:??????????S
sub_2Sub	sub_1:z:0Exp:y:0*
T0*(
_output_shapes
:??????????W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :c
SumSum	sub_2:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Z
mul_1Mulmul_1/x:output:0Sum:output:0*
T0*#
_output_shapes
:?????????P
add_1AddV2mul:z:0	mul_1:z:0*
T0*#
_output_shapes
:?????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F]
truedivRealDivmul:z:0truediv/y:output:0*
T0*#
_output_shapes
:?????????O
ConstConst*
_output_shapes
:*
dtype0*
valueB: J
Sum_1Sumtruediv:z:0Const:output:0*
T0*
_output_shapes
: {
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum_1:output:0*
_output_shapes
 *
dtype0:
SizeSizetruediv:z:0*
T0*
_output_shapes
: K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0?
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0?
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: J
Sum_2Sum	mul_1:z:0Const_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_2AssignAddVariableOpassignaddvariableop_2_resourceSum_2:output:0*
_output_shapes
 *
dtype0:
Size_1Size	mul_1:z:0*
T0*
_output_shapes
: O
Cast_1CastSize_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
AssignAddVariableOp_3AssignAddVariableOpassignaddvariableop_3_resource
Cast_1:y:0^AssignAddVariableOp_2*
_output_shapes
 *
dtype0?
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_2_resource^AssignAddVariableOp_2^AssignAddVariableOp_3*
_output_shapes
: *
dtype0?
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_3_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype0?
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_1Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: ?
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3 ^decoder/StatefulPartitionedCall^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_1 ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 z

Identity_2Identity(encoder/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????

Identity_3Identity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:??????????
?V

Identity_4Identity	add_1:z:0^NoOp*
T0*#
_output_shapes
:?????????"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:??????????
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall26
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_12B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:V R
-
_output_shapes
:??????????
?
!
_user_specified_name	input_1
?
?
?__inference_decoder_conv_transpose_layer_2_layer_call_fn_400179

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *c
f^R\
Z__inference_decoder_conv_transpose_layer_2_layer_call_and_return_conditional_losses_400163}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?*
?
Z__inference_decoder_conv_transpose_layer_4_layer_call_and_return_conditional_losses_399919

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?	
'__inference_restored_function_body_8835
x
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?!
	unknown_3:??
	unknown_4:	?
	unknown_5:	?
	unknown_6:	?!
	unknown_7:??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?"

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:???

unknown_16:	?

unknown_17:???

unknown_18:	?

unknown_19:???

unknown_20:
??"

unknown_21:??

unknown_22:	?

unknown_23:	?

unknown_24:	?"

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?"

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?"

unknown_33:??

unknown_34:	?

unknown_35: 

unknown_36: 

unknown_37: 

unknown_38: 
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*P
_output_shapes>
<:??????????:??????????
?:?????????*F
_read_only_resource_inputs(
&$	
 !"#$*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_vae_layer_call_and_return_conditional_losses_2384p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????w

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:??????????
?m

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*#
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:??????????
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:??????????
?

_user_specified_namex
?
?
?__inference_decoder_conv_transpose_layer_0_layer_call_fn_399979

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *c
f^R\
Z__inference_decoder_conv_transpose_layer_0_layer_call_and_return_conditional_losses_399963}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?W
"__inference__traced_restore_400967
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: F
.assignvariableop_5_encoder_conv_layer_0_kernel:??;
,assignvariableop_6_encoder_conv_layer_0_bias:	?F
.assignvariableop_7_encoder_conv_layer_1_kernel:??;
,assignvariableop_8_encoder_conv_layer_1_bias:	?F
.assignvariableop_9_encoder_conv_layer_2_kernel:??<
-assignvariableop_10_encoder_conv_layer_2_bias:	?G
/assignvariableop_11_encoder_conv_layer_3_kernel:??<
-assignvariableop_12_encoder_conv_layer_3_bias:	?5
&assignvariableop_13_encoder_ln_0_gamma:	?4
%assignvariableop_14_encoder_ln_0_beta:	?5
&assignvariableop_15_encoder_ln_1_gamma:	?4
%assignvariableop_16_encoder_ln_1_beta:	?5
&assignvariableop_17_encoder_ln_2_gamma:	?4
%assignvariableop_18_encoder_ln_2_beta:	?5
&assignvariableop_19_encoder_ln_3_gamma:	?4
%assignvariableop_20_encoder_ln_3_beta:	?>
)assignvariableop_21_vae_encoder_mu_kernel:???6
'assignvariableop_22_vae_encoder_mu_bias:	?H
3assignvariableop_23_vae_encoder_log_variance_kernel:???@
1assignvariableop_24_vae_encoder_log_variance_bias:	?I
4assignvariableop_25_vae_decoder_decoder_dense_kernel:???B
2assignvariableop_26_vae_decoder_decoder_dense_bias:
??]
Eassignvariableop_27_vae_decoder_decoder_conv_transpose_layer_0_kernel:??R
Cassignvariableop_28_vae_decoder_decoder_conv_transpose_layer_0_bias:	?]
Eassignvariableop_29_vae_decoder_decoder_conv_transpose_layer_1_kernel:??R
Cassignvariableop_30_vae_decoder_decoder_conv_transpose_layer_1_bias:	?]
Eassignvariableop_31_vae_decoder_decoder_conv_transpose_layer_2_kernel:??R
Cassignvariableop_32_vae_decoder_decoder_conv_transpose_layer_2_bias:	?A
2assignvariableop_33_vae_decoder_decoder_ln_0_gamma:	?@
1assignvariableop_34_vae_decoder_decoder_ln_0_beta:	?A
2assignvariableop_35_vae_decoder_decoder_ln_1_gamma:	?@
1assignvariableop_36_vae_decoder_decoder_ln_1_beta:	?A
2assignvariableop_37_vae_decoder_decoder_ln_2_gamma:	?@
1assignvariableop_38_vae_decoder_decoder_ln_2_beta:	?]
Eassignvariableop_39_vae_decoder_decoder_conv_transpose_layer_4_kernel:??R
Cassignvariableop_40_vae_decoder_decoder_conv_transpose_layer_4_bias:	?#
assignvariableop_41_total: #
assignvariableop_42_count: '
assignvariableop_43_vae_total: '
assignvariableop_44_vae_count: )
assignvariableop_45_vae_total_1: )
assignvariableop_46_vae_count_1: N
6assignvariableop_47_adam_encoder_conv_layer_0_kernel_m:??C
4assignvariableop_48_adam_encoder_conv_layer_0_bias_m:	?N
6assignvariableop_49_adam_encoder_conv_layer_1_kernel_m:??C
4assignvariableop_50_adam_encoder_conv_layer_1_bias_m:	?N
6assignvariableop_51_adam_encoder_conv_layer_2_kernel_m:??C
4assignvariableop_52_adam_encoder_conv_layer_2_bias_m:	?N
6assignvariableop_53_adam_encoder_conv_layer_3_kernel_m:??C
4assignvariableop_54_adam_encoder_conv_layer_3_bias_m:	?<
-assignvariableop_55_adam_encoder_ln_0_gamma_m:	?;
,assignvariableop_56_adam_encoder_ln_0_beta_m:	?<
-assignvariableop_57_adam_encoder_ln_1_gamma_m:	?;
,assignvariableop_58_adam_encoder_ln_1_beta_m:	?<
-assignvariableop_59_adam_encoder_ln_2_gamma_m:	?;
,assignvariableop_60_adam_encoder_ln_2_beta_m:	?<
-assignvariableop_61_adam_encoder_ln_3_gamma_m:	?;
,assignvariableop_62_adam_encoder_ln_3_beta_m:	?E
0assignvariableop_63_adam_vae_encoder_mu_kernel_m:???=
.assignvariableop_64_adam_vae_encoder_mu_bias_m:	?O
:assignvariableop_65_adam_vae_encoder_log_variance_kernel_m:???G
8assignvariableop_66_adam_vae_encoder_log_variance_bias_m:	?P
;assignvariableop_67_adam_vae_decoder_decoder_dense_kernel_m:???I
9assignvariableop_68_adam_vae_decoder_decoder_dense_bias_m:
??d
Lassignvariableop_69_adam_vae_decoder_decoder_conv_transpose_layer_0_kernel_m:??Y
Jassignvariableop_70_adam_vae_decoder_decoder_conv_transpose_layer_0_bias_m:	?d
Lassignvariableop_71_adam_vae_decoder_decoder_conv_transpose_layer_1_kernel_m:??Y
Jassignvariableop_72_adam_vae_decoder_decoder_conv_transpose_layer_1_bias_m:	?d
Lassignvariableop_73_adam_vae_decoder_decoder_conv_transpose_layer_2_kernel_m:??Y
Jassignvariableop_74_adam_vae_decoder_decoder_conv_transpose_layer_2_bias_m:	?H
9assignvariableop_75_adam_vae_decoder_decoder_ln_0_gamma_m:	?G
8assignvariableop_76_adam_vae_decoder_decoder_ln_0_beta_m:	?H
9assignvariableop_77_adam_vae_decoder_decoder_ln_1_gamma_m:	?G
8assignvariableop_78_adam_vae_decoder_decoder_ln_1_beta_m:	?H
9assignvariableop_79_adam_vae_decoder_decoder_ln_2_gamma_m:	?G
8assignvariableop_80_adam_vae_decoder_decoder_ln_2_beta_m:	?d
Lassignvariableop_81_adam_vae_decoder_decoder_conv_transpose_layer_4_kernel_m:??Y
Jassignvariableop_82_adam_vae_decoder_decoder_conv_transpose_layer_4_bias_m:	?N
6assignvariableop_83_adam_encoder_conv_layer_0_kernel_v:??C
4assignvariableop_84_adam_encoder_conv_layer_0_bias_v:	?N
6assignvariableop_85_adam_encoder_conv_layer_1_kernel_v:??C
4assignvariableop_86_adam_encoder_conv_layer_1_bias_v:	?N
6assignvariableop_87_adam_encoder_conv_layer_2_kernel_v:??C
4assignvariableop_88_adam_encoder_conv_layer_2_bias_v:	?N
6assignvariableop_89_adam_encoder_conv_layer_3_kernel_v:??C
4assignvariableop_90_adam_encoder_conv_layer_3_bias_v:	?<
-assignvariableop_91_adam_encoder_ln_0_gamma_v:	?;
,assignvariableop_92_adam_encoder_ln_0_beta_v:	?<
-assignvariableop_93_adam_encoder_ln_1_gamma_v:	?;
,assignvariableop_94_adam_encoder_ln_1_beta_v:	?<
-assignvariableop_95_adam_encoder_ln_2_gamma_v:	?;
,assignvariableop_96_adam_encoder_ln_2_beta_v:	?<
-assignvariableop_97_adam_encoder_ln_3_gamma_v:	?;
,assignvariableop_98_adam_encoder_ln_3_beta_v:	?E
0assignvariableop_99_adam_vae_encoder_mu_kernel_v:???>
/assignvariableop_100_adam_vae_encoder_mu_bias_v:	?P
;assignvariableop_101_adam_vae_encoder_log_variance_kernel_v:???H
9assignvariableop_102_adam_vae_encoder_log_variance_bias_v:	?Q
<assignvariableop_103_adam_vae_decoder_decoder_dense_kernel_v:???J
:assignvariableop_104_adam_vae_decoder_decoder_dense_bias_v:
??e
Massignvariableop_105_adam_vae_decoder_decoder_conv_transpose_layer_0_kernel_v:??Z
Kassignvariableop_106_adam_vae_decoder_decoder_conv_transpose_layer_0_bias_v:	?e
Massignvariableop_107_adam_vae_decoder_decoder_conv_transpose_layer_1_kernel_v:??Z
Kassignvariableop_108_adam_vae_decoder_decoder_conv_transpose_layer_1_bias_v:	?e
Massignvariableop_109_adam_vae_decoder_decoder_conv_transpose_layer_2_kernel_v:??Z
Kassignvariableop_110_adam_vae_decoder_decoder_conv_transpose_layer_2_bias_v:	?I
:assignvariableop_111_adam_vae_decoder_decoder_ln_0_gamma_v:	?H
9assignvariableop_112_adam_vae_decoder_decoder_ln_0_beta_v:	?I
:assignvariableop_113_adam_vae_decoder_decoder_ln_1_gamma_v:	?H
9assignvariableop_114_adam_vae_decoder_decoder_ln_1_beta_v:	?I
:assignvariableop_115_adam_vae_decoder_decoder_ln_2_gamma_v:	?H
9assignvariableop_116_adam_vae_decoder_decoder_ln_2_beta_v:	?e
Massignvariableop_117_adam_vae_decoder_decoder_conv_transpose_layer_4_kernel_v:??Z
Kassignvariableop_118_adam_vae_decoder_decoder_conv_transpose_layer_4_bias_v:	?
identity_120??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?7
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:x*
dtype0*?6
value?6B?6xB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:x*
dtype0*?
value?B?xB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes|
z2x	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_encoder_conv_layer_0_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp,assignvariableop_6_encoder_conv_layer_0_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_encoder_conv_layer_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_encoder_conv_layer_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_encoder_conv_layer_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp-assignvariableop_10_encoder_conv_layer_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_encoder_conv_layer_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_encoder_conv_layer_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_encoder_ln_0_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_encoder_ln_0_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp&assignvariableop_15_encoder_ln_1_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_encoder_ln_1_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp&assignvariableop_17_encoder_ln_2_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_encoder_ln_2_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp&assignvariableop_19_encoder_ln_3_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp%assignvariableop_20_encoder_ln_3_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_vae_encoder_mu_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_vae_encoder_mu_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp3assignvariableop_23_vae_encoder_log_variance_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_vae_encoder_log_variance_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_vae_decoder_decoder_dense_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_vae_decoder_decoder_dense_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpEassignvariableop_27_vae_decoder_decoder_conv_transpose_layer_0_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpCassignvariableop_28_vae_decoder_decoder_conv_transpose_layer_0_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpEassignvariableop_29_vae_decoder_decoder_conv_transpose_layer_1_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpCassignvariableop_30_vae_decoder_decoder_conv_transpose_layer_1_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpEassignvariableop_31_vae_decoder_decoder_conv_transpose_layer_2_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpCassignvariableop_32_vae_decoder_decoder_conv_transpose_layer_2_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_vae_decoder_decoder_ln_0_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp1assignvariableop_34_vae_decoder_decoder_ln_0_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp2assignvariableop_35_vae_decoder_decoder_ln_1_gammaIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp1assignvariableop_36_vae_decoder_decoder_ln_1_betaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp2assignvariableop_37_vae_decoder_decoder_ln_2_gammaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_vae_decoder_decoder_ln_2_betaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpEassignvariableop_39_vae_decoder_decoder_conv_transpose_layer_4_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpCassignvariableop_40_vae_decoder_decoder_conv_transpose_layer_4_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOpassignvariableop_41_totalIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOpassignvariableop_42_countIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpassignvariableop_43_vae_totalIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpassignvariableop_44_vae_countIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOpassignvariableop_45_vae_total_1Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOpassignvariableop_46_vae_count_1Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_encoder_conv_layer_0_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_encoder_conv_layer_0_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp6assignvariableop_49_adam_encoder_conv_layer_1_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp4assignvariableop_50_adam_encoder_conv_layer_1_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_encoder_conv_layer_2_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp4assignvariableop_52_adam_encoder_conv_layer_2_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_encoder_conv_layer_3_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp4assignvariableop_54_adam_encoder_conv_layer_3_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp-assignvariableop_55_adam_encoder_ln_0_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp,assignvariableop_56_adam_encoder_ln_0_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp-assignvariableop_57_adam_encoder_ln_1_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp,assignvariableop_58_adam_encoder_ln_1_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp-assignvariableop_59_adam_encoder_ln_2_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp,assignvariableop_60_adam_encoder_ln_2_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp-assignvariableop_61_adam_encoder_ln_3_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp,assignvariableop_62_adam_encoder_ln_3_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp0assignvariableop_63_adam_vae_encoder_mu_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp.assignvariableop_64_adam_vae_encoder_mu_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp:assignvariableop_65_adam_vae_encoder_log_variance_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp8assignvariableop_66_adam_vae_encoder_log_variance_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp;assignvariableop_67_adam_vae_decoder_decoder_dense_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp9assignvariableop_68_adam_vae_decoder_decoder_dense_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpLassignvariableop_69_adam_vae_decoder_decoder_conv_transpose_layer_0_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpJassignvariableop_70_adam_vae_decoder_decoder_conv_transpose_layer_0_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOpLassignvariableop_71_adam_vae_decoder_decoder_conv_transpose_layer_1_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOpJassignvariableop_72_adam_vae_decoder_decoder_conv_transpose_layer_1_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOpLassignvariableop_73_adam_vae_decoder_decoder_conv_transpose_layer_2_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOpJassignvariableop_74_adam_vae_decoder_decoder_conv_transpose_layer_2_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp9assignvariableop_75_adam_vae_decoder_decoder_ln_0_gamma_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp8assignvariableop_76_adam_vae_decoder_decoder_ln_0_beta_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp9assignvariableop_77_adam_vae_decoder_decoder_ln_1_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp8assignvariableop_78_adam_vae_decoder_decoder_ln_1_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp9assignvariableop_79_adam_vae_decoder_decoder_ln_2_gamma_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp8assignvariableop_80_adam_vae_decoder_decoder_ln_2_beta_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOpLassignvariableop_81_adam_vae_decoder_decoder_conv_transpose_layer_4_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOpJassignvariableop_82_adam_vae_decoder_decoder_conv_transpose_layer_4_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOp6assignvariableop_83_adam_encoder_conv_layer_0_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOp4assignvariableop_84_adam_encoder_conv_layer_0_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOp6assignvariableop_85_adam_encoder_conv_layer_1_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOp4assignvariableop_86_adam_encoder_conv_layer_1_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOp6assignvariableop_87_adam_encoder_conv_layer_2_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOp4assignvariableop_88_adam_encoder_conv_layer_2_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOp6assignvariableop_89_adam_encoder_conv_layer_3_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOp4assignvariableop_90_adam_encoder_conv_layer_3_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_91AssignVariableOp-assignvariableop_91_adam_encoder_ln_0_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_92AssignVariableOp,assignvariableop_92_adam_encoder_ln_0_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_93AssignVariableOp-assignvariableop_93_adam_encoder_ln_1_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_94AssignVariableOp,assignvariableop_94_adam_encoder_ln_1_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_95AssignVariableOp-assignvariableop_95_adam_encoder_ln_2_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_96AssignVariableOp,assignvariableop_96_adam_encoder_ln_2_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_97AssignVariableOp-assignvariableop_97_adam_encoder_ln_3_gamma_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_98AssignVariableOp,assignvariableop_98_adam_encoder_ln_3_beta_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_99AssignVariableOp0assignvariableop_99_adam_vae_encoder_mu_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_100AssignVariableOp/assignvariableop_100_adam_vae_encoder_mu_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_101AssignVariableOp;assignvariableop_101_adam_vae_encoder_log_variance_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_102AssignVariableOp9assignvariableop_102_adam_vae_encoder_log_variance_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_103AssignVariableOp<assignvariableop_103_adam_vae_decoder_decoder_dense_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_104AssignVariableOp:assignvariableop_104_adam_vae_decoder_decoder_dense_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_105AssignVariableOpMassignvariableop_105_adam_vae_decoder_decoder_conv_transpose_layer_0_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_106AssignVariableOpKassignvariableop_106_adam_vae_decoder_decoder_conv_transpose_layer_0_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_107AssignVariableOpMassignvariableop_107_adam_vae_decoder_decoder_conv_transpose_layer_1_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_108AssignVariableOpKassignvariableop_108_adam_vae_decoder_decoder_conv_transpose_layer_1_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_109AssignVariableOpMassignvariableop_109_adam_vae_decoder_decoder_conv_transpose_layer_2_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_110AssignVariableOpKassignvariableop_110_adam_vae_decoder_decoder_conv_transpose_layer_2_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_111AssignVariableOp:assignvariableop_111_adam_vae_decoder_decoder_ln_0_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_112AssignVariableOp9assignvariableop_112_adam_vae_decoder_decoder_ln_0_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_113AssignVariableOp:assignvariableop_113_adam_vae_decoder_decoder_ln_1_gamma_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_114AssignVariableOp9assignvariableop_114_adam_vae_decoder_decoder_ln_1_beta_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_115AssignVariableOp:assignvariableop_115_adam_vae_decoder_decoder_ln_2_gamma_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_116AssignVariableOp9assignvariableop_116_adam_vae_decoder_decoder_ln_2_beta_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_117AssignVariableOpMassignvariableop_117_adam_vae_decoder_decoder_conv_transpose_layer_4_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_118AssignVariableOpKassignvariableop_118_adam_vae_decoder_decoder_conv_transpose_layer_4_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_119Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_120IdentityIdentity_119:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_120Identity_120:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?+
?
X__inference_decoder_conv_transpose_layer_2_layer_call_and_return_conditional_losses_3990

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:???????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?+
?
Z__inference_decoder_conv_transpose_layer_1_layer_call_and_return_conditional_losses_400063

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
N__inference_encoder_conv_layer_0_layer_call_and_return_conditional_losses_3353

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:??????????
??
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:????????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????
?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:??????????
?
 
_user_specified_nameinputs
?
?
&__inference_decoder_layer_call_fn_4040
x
unknown:???
	unknown_0:
??!
	unknown_1:??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?!
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?!
	unknown_9:??

unknown_10:	?

unknown_11:	?

unknown_12:	?"

unknown_13:??

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:??????????
?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_4019`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:??????????
?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:??????????

_user_specified_namex
?+
?
Z__inference_decoder_conv_transpose_layer_2_layer_call_and_return_conditional_losses_400163

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?*
?
Z__inference_decoder_conv_transpose_layer_4_layer_call_and_return_conditional_losses_399864

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
?__inference_decoder_conv_transpose_layer_1_layer_call_fn_400079

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *c
f^R\
Z__inference_decoder_conv_transpose_layer_1_layer_call_and_return_conditional_losses_400063}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
N__inference_encoder_conv_layer_2_layer_call_and_return_conditional_losses_2677

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????0?*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????0?*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????0??
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????0?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?6
?	
A__inference_decoder_layer_call_and_return_conditional_losses_4019
x*
decoder_dense_2437202:???%
decoder_dense_2437204:
??>
&decoder_conv_transpose_layer_0_2437222:??5
&decoder_conv_transpose_layer_0_2437224:	?#
decoder_ln_0_2437275:	?#
decoder_ln_0_2437277:	?>
&decoder_conv_transpose_layer_1_2437280:??5
&decoder_conv_transpose_layer_1_2437282:	?#
decoder_ln_1_2437333:	?#
decoder_ln_1_2437335:	?>
&decoder_conv_transpose_layer_2_2437338:??5
&decoder_conv_transpose_layer_2_2437340:	?#
decoder_ln_2_2437391:	?#
decoder_ln_2_2437393:	?>
&decoder_conv_transpose_layer_4_2437396:??5
&decoder_conv_transpose_layer_4_2437398:	?
identity??6decoder_conv_transpose_layer_0/StatefulPartitionedCall?6decoder_conv_transpose_layer_1/StatefulPartitionedCall?6decoder_conv_transpose_layer_2/StatefulPartitionedCall?6decoder_conv_transpose_layer_4/StatefulPartitionedCall?%decoder_dense/StatefulPartitionedCall?$decoder_ln_0/StatefulPartitionedCall?$decoder_ln_1/StatefulPartitionedCall?$decoder_ln_2/StatefulPartitionedCall?
%decoder_dense/StatefulPartitionedCallStatefulPartitionedCallxdecoder_dense_2437202decoder_dense_2437204*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_decoder_dense_layer_call_and_return_conditional_losses_3373?
reshape/PartitionedCallPartitionedCall.decoder_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_2690?
6decoder_conv_transpose_layer_0/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0&decoder_conv_transpose_layer_0_2437222&decoder_conv_transpose_layer_0_2437224*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????0?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_decoder_conv_transpose_layer_0_layer_call_and_return_conditional_losses_3201?
$decoder_ln_0/StatefulPartitionedCallStatefulPartitionedCall?decoder_conv_transpose_layer_0/StatefulPartitionedCall:output:0decoder_ln_0_2437275decoder_ln_0_2437277*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????0?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_ln_0_layer_call_and_return_conditional_losses_2575?
6decoder_conv_transpose_layer_1/StatefulPartitionedCallStatefulPartitionedCall-decoder_ln_0/StatefulPartitionedCall:output:0&decoder_conv_transpose_layer_1_2437280&decoder_conv_transpose_layer_1_2437282*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_decoder_conv_transpose_layer_1_layer_call_and_return_conditional_losses_3121?
$decoder_ln_1/StatefulPartitionedCallStatefulPartitionedCall?decoder_conv_transpose_layer_1/StatefulPartitionedCall:output:0decoder_ln_1_2437333decoder_ln_1_2437335*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_ln_1_layer_call_and_return_conditional_losses_1807?
6decoder_conv_transpose_layer_2/StatefulPartitionedCallStatefulPartitionedCall-decoder_ln_1/StatefulPartitionedCall:output:0&decoder_conv_transpose_layer_2_2437338&decoder_conv_transpose_layer_2_2437340*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_decoder_conv_transpose_layer_2_layer_call_and_return_conditional_losses_3990?
$decoder_ln_2/StatefulPartitionedCallStatefulPartitionedCall?decoder_conv_transpose_layer_2/StatefulPartitionedCall:output:0decoder_ln_2_2437391decoder_ln_2_2437393*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_ln_2_layer_call_and_return_conditional_losses_3459?
6decoder_conv_transpose_layer_4/StatefulPartitionedCallStatefulPartitionedCall-decoder_ln_2/StatefulPartitionedCall:output:0&decoder_conv_transpose_layer_4_2437396&decoder_conv_transpose_layer_4_2437398*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:??????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_decoder_conv_transpose_layer_4_layer_call_and_return_conditional_losses_2661?
NoOpNoOp7^decoder_conv_transpose_layer_0/StatefulPartitionedCall7^decoder_conv_transpose_layer_1/StatefulPartitionedCall7^decoder_conv_transpose_layer_2/StatefulPartitionedCall7^decoder_conv_transpose_layer_4/StatefulPartitionedCall&^decoder_dense/StatefulPartitionedCall%^decoder_ln_0/StatefulPartitionedCall%^decoder_ln_1/StatefulPartitionedCall%^decoder_ln_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ?
IdentityIdentity?decoder_conv_transpose_layer_4/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:??????????
?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : : : 2p
6decoder_conv_transpose_layer_0/StatefulPartitionedCall6decoder_conv_transpose_layer_0/StatefulPartitionedCall2p
6decoder_conv_transpose_layer_1/StatefulPartitionedCall6decoder_conv_transpose_layer_1/StatefulPartitionedCall2p
6decoder_conv_transpose_layer_2/StatefulPartitionedCall6decoder_conv_transpose_layer_2/StatefulPartitionedCall2p
6decoder_conv_transpose_layer_4/StatefulPartitionedCall6decoder_conv_transpose_layer_4/StatefulPartitionedCall2N
%decoder_dense/StatefulPartitionedCall%decoder_dense/StatefulPartitionedCall2L
$decoder_ln_0/StatefulPartitionedCall$decoder_ln_0/StatefulPartitionedCall2L
$decoder_ln_1/StatefulPartitionedCall$decoder_ln_1/StatefulPartitionedCall2L
$decoder_ln_2/StatefulPartitionedCall$decoder_ln_2/StatefulPartitionedCall:K G
(
_output_shapes
:??????????

_user_specified_namex
?$
?
F__inference_decoder_ln_2_layer_call_and_return_conditional_losses_3459

inputs,
mul_3_readvariableop_resource:	?*
add_readvariableop_resource:	?
identity??add/ReadVariableOp?mul_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????L
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:r
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*-
_output_shapes
:???????????o
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0v
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:?*
dtype0k
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 \
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?$
?
F__inference_encoder_ln_1_layer_call_and_return_conditional_losses_3081

inputs,
mul_3_readvariableop_resource:	?*
add_readvariableop_resource:	?
identity??add/ReadVariableOp?mul_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????L
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:r
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*-
_output_shapes
:???????????o
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0v
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:?*
dtype0k
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 \
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

]
A__inference_reshape_layer_call_and_return_conditional_losses_2690

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?+
?
Z__inference_decoder_conv_transpose_layer_1_layer_call_and_return_conditional_losses_400119

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?	
!__inference__wrapped_model_399726

args_0"

vae_399641:??

vae_399643:	?

vae_399645:	?

vae_399647:	?"

vae_399649:??

vae_399651:	?

vae_399653:	?

vae_399655:	?"

vae_399657:??

vae_399659:	?

vae_399661:	?

vae_399663:	?"

vae_399665:??

vae_399667:	?

vae_399669:	?

vae_399671:	?

vae_399673:???

vae_399675:	?

vae_399677:???

vae_399679:	?

vae_399681:???

vae_399683:
??"

vae_399685:??

vae_399687:	?

vae_399689:	?

vae_399691:	?"

vae_399693:??

vae_399695:	?

vae_399697:	?

vae_399699:	?"

vae_399701:??

vae_399703:	?

vae_399705:	?

vae_399707:	?"

vae_399709:??

vae_399711:	?

vae_399713: 

vae_399715: 

vae_399717: 

vae_399719: 
identity

identity_1??vae/StatefulPartitionedCall?
vae/StatefulPartitionedCallStatefulPartitionedCallargs_0
vae_399641
vae_399643
vae_399645
vae_399647
vae_399649
vae_399651
vae_399653
vae_399655
vae_399657
vae_399659
vae_399661
vae_399663
vae_399665
vae_399667
vae_399669
vae_399671
vae_399673
vae_399675
vae_399677
vae_399679
vae_399681
vae_399683
vae_399685
vae_399687
vae_399689
vae_399691
vae_399693
vae_399695
vae_399697
vae_399699
vae_399701
vae_399703
vae_399705
vae_399707
vae_399709
vae_399711
vae_399713
vae_399715
vae_399717
vae_399719*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????
?:?????????*F
_read_only_resource_inputs(
&$	
 !"#$*0
config_proto 

CPU

GPU2*0J 8? *0
f+R)
'__inference_restored_function_body_8835t
IdentityIdentity$vae/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????{

Identity_1Identity$vae/StatefulPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:??????????
?d
NoOpNoOp^vae/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:??????????
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
vae/StatefulPartitionedCallvae/StatefulPartitionedCall:U Q
-
_output_shapes
:??????????
?
 
_user_specified_nameargs_0
?
?
N__inference_encoder_conv_layer_1_layer_call_and_return_conditional_losses_3475

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:????????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
?__inference_decoder_conv_transpose_layer_4_layer_call_fn_399880

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *c
f^R\
Z__inference_decoder_conv_transpose_layer_4_layer_call_and_return_conditional_losses_399864}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?	
?
F__inference_log_variance_layer_call_and_return_conditional_losses_3363

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
<__inference_mu_layer_call_and_return_conditional_losses_4147

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
A__inference_encoder_layer_call_and_return_conditional_losses_3034
xX
@encoder_conv_layer_0_conv1d_expanddims_1_readvariableop_resource:??C
4encoder_conv_layer_0_biasadd_readvariableop_resource:	?9
*encoder_ln_0_mul_3_readvariableop_resource:	?7
(encoder_ln_0_add_readvariableop_resource:	?X
@encoder_conv_layer_1_conv1d_expanddims_1_readvariableop_resource:??C
4encoder_conv_layer_1_biasadd_readvariableop_resource:	?9
*encoder_ln_1_mul_3_readvariableop_resource:	?7
(encoder_ln_1_add_readvariableop_resource:	?X
@encoder_conv_layer_2_conv1d_expanddims_1_readvariableop_resource:??C
4encoder_conv_layer_2_biasadd_readvariableop_resource:	?9
*encoder_ln_2_mul_3_readvariableop_resource:	?7
(encoder_ln_2_add_readvariableop_resource:	?X
@encoder_conv_layer_3_conv1d_expanddims_1_readvariableop_resource:??C
4encoder_conv_layer_3_biasadd_readvariableop_resource:	?9
*encoder_ln_3_mul_3_readvariableop_resource:	?7
(encoder_ln_3_add_readvariableop_resource:	?6
!mu_matmul_readvariableop_resource:???1
"mu_biasadd_readvariableop_resource:	?@
+log_variance_matmul_readvariableop_resource:???;
,log_variance_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??+encoder_conv_layer_0/BiasAdd/ReadVariableOp?7encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp?+encoder_conv_layer_1/BiasAdd/ReadVariableOp?7encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp?+encoder_conv_layer_2/BiasAdd/ReadVariableOp?7encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp?+encoder_conv_layer_3/BiasAdd/ReadVariableOp?7encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp?encoder_ln_0/add/ReadVariableOp?!encoder_ln_0/mul_3/ReadVariableOp?encoder_ln_1/add/ReadVariableOp?!encoder_ln_1/mul_3/ReadVariableOp?encoder_ln_2/add/ReadVariableOp?!encoder_ln_2/mul_3/ReadVariableOp?encoder_ln_3/add/ReadVariableOp?!encoder_ln_3/mul_3/ReadVariableOp?#log_variance/BiasAdd/ReadVariableOp?"log_variance/MatMul/ReadVariableOp?mu/BiasAdd/ReadVariableOp?mu/MatMul/ReadVariableOpu
*encoder_conv_layer_0/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&encoder_conv_layer_0/Conv1D/ExpandDims
ExpandDimsx3encoder_conv_layer_0/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:??????????
??
7encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@encoder_conv_layer_0_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0n
,encoder_conv_layer_0/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(encoder_conv_layer_0/Conv1D/ExpandDims_1
ExpandDims?encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp:value:05encoder_conv_layer_0/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
encoder_conv_layer_0/Conv1DConv2D/encoder_conv_layer_0/Conv1D/ExpandDims:output:01encoder_conv_layer_0/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
#encoder_conv_layer_0/Conv1D/SqueezeSqueeze$encoder_conv_layer_0/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
+encoder_conv_layer_0/BiasAdd/ReadVariableOpReadVariableOp4encoder_conv_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_conv_layer_0/BiasAddBiasAdd,encoder_conv_layer_0/Conv1D/Squeeze:output:03encoder_conv_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
encoder_conv_layer_0/ReluRelu%encoder_conv_layer_0/BiasAdd:output:0*
T0*-
_output_shapes
:???????????i
encoder_ln_0/ShapeShape'encoder_conv_layer_0/Relu:activations:0*
T0*
_output_shapes
:j
 encoder_ln_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"encoder_ln_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"encoder_ln_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_0/strided_sliceStridedSliceencoder_ln_0/Shape:output:0)encoder_ln_0/strided_slice/stack:output:0+encoder_ln_0/strided_slice/stack_1:output:0+encoder_ln_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
encoder_ln_0/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
encoder_ln_0/mulMulencoder_ln_0/mul/x:output:0#encoder_ln_0/strided_slice:output:0*
T0*
_output_shapes
: l
"encoder_ln_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_0/strided_slice_1StridedSliceencoder_ln_0/Shape:output:0+encoder_ln_0/strided_slice_1/stack:output:0-encoder_ln_0/strided_slice_1/stack_1:output:0-encoder_ln_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
encoder_ln_0/mul_1Mulencoder_ln_0/mul:z:0%encoder_ln_0/strided_slice_1:output:0*
T0*
_output_shapes
: l
"encoder_ln_0/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_0/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_0/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_0/strided_slice_2StridedSliceencoder_ln_0/Shape:output:0+encoder_ln_0/strided_slice_2/stack:output:0-encoder_ln_0/strided_slice_2/stack_1:output:0-encoder_ln_0/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
encoder_ln_0/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder_ln_0/mul_2Mulencoder_ln_0/mul_2/x:output:0%encoder_ln_0/strided_slice_2:output:0*
T0*
_output_shapes
: ^
encoder_ln_0/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
encoder_ln_0/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
encoder_ln_0/Reshape/shapePack%encoder_ln_0/Reshape/shape/0:output:0encoder_ln_0/mul_1:z:0encoder_ln_0/mul_2:z:0%encoder_ln_0/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
encoder_ln_0/ReshapeReshape'encoder_conv_layer_0/Relu:activations:0#encoder_ln_0/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????f
encoder_ln_0/ones/packedPackencoder_ln_0/mul_1:z:0*
N*
T0*
_output_shapes
:\
encoder_ln_0/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
encoder_ln_0/onesFill!encoder_ln_0/ones/packed:output:0 encoder_ln_0/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
encoder_ln_0/zeros/packedPackencoder_ln_0/mul_1:z:0*
N*
T0*
_output_shapes
:]
encoder_ln_0/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
encoder_ln_0/zerosFill"encoder_ln_0/zeros/packed:output:0!encoder_ln_0/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
encoder_ln_0/ConstConst*
_output_shapes
: *
dtype0*
valueB W
encoder_ln_0/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
encoder_ln_0/FusedBatchNormV3FusedBatchNormV3encoder_ln_0/Reshape:output:0encoder_ln_0/ones:output:0encoder_ln_0/zeros:output:0encoder_ln_0/Const:output:0encoder_ln_0/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
encoder_ln_0/Reshape_1Reshape!encoder_ln_0/FusedBatchNormV3:y:0encoder_ln_0/Shape:output:0*
T0*-
_output_shapes
:????????????
!encoder_ln_0/mul_3/ReadVariableOpReadVariableOp*encoder_ln_0_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_ln_0/mul_3Mulencoder_ln_0/Reshape_1:output:0)encoder_ln_0/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
encoder_ln_0/add/ReadVariableOpReadVariableOp(encoder_ln_0_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_ln_0/addAddV2encoder_ln_0/mul_3:z:0'encoder_ln_0/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????u
*encoder_conv_layer_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&encoder_conv_layer_1/Conv1D/ExpandDims
ExpandDimsencoder_ln_0/add:z:03encoder_conv_layer_1/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
7encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@encoder_conv_layer_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0n
,encoder_conv_layer_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(encoder_conv_layer_1/Conv1D/ExpandDims_1
ExpandDims?encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp:value:05encoder_conv_layer_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
encoder_conv_layer_1/Conv1DConv2D/encoder_conv_layer_1/Conv1D/ExpandDims:output:01encoder_conv_layer_1/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
#encoder_conv_layer_1/Conv1D/SqueezeSqueeze$encoder_conv_layer_1/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
+encoder_conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp4encoder_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_conv_layer_1/BiasAddBiasAdd,encoder_conv_layer_1/Conv1D/Squeeze:output:03encoder_conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
encoder_conv_layer_1/ReluRelu%encoder_conv_layer_1/BiasAdd:output:0*
T0*-
_output_shapes
:???????????i
encoder_ln_1/ShapeShape'encoder_conv_layer_1/Relu:activations:0*
T0*
_output_shapes
:j
 encoder_ln_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"encoder_ln_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"encoder_ln_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_1/strided_sliceStridedSliceencoder_ln_1/Shape:output:0)encoder_ln_1/strided_slice/stack:output:0+encoder_ln_1/strided_slice/stack_1:output:0+encoder_ln_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
encoder_ln_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
encoder_ln_1/mulMulencoder_ln_1/mul/x:output:0#encoder_ln_1/strided_slice:output:0*
T0*
_output_shapes
: l
"encoder_ln_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_1/strided_slice_1StridedSliceencoder_ln_1/Shape:output:0+encoder_ln_1/strided_slice_1/stack:output:0-encoder_ln_1/strided_slice_1/stack_1:output:0-encoder_ln_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
encoder_ln_1/mul_1Mulencoder_ln_1/mul:z:0%encoder_ln_1/strided_slice_1:output:0*
T0*
_output_shapes
: l
"encoder_ln_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_1/strided_slice_2StridedSliceencoder_ln_1/Shape:output:0+encoder_ln_1/strided_slice_2/stack:output:0-encoder_ln_1/strided_slice_2/stack_1:output:0-encoder_ln_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
encoder_ln_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder_ln_1/mul_2Mulencoder_ln_1/mul_2/x:output:0%encoder_ln_1/strided_slice_2:output:0*
T0*
_output_shapes
: ^
encoder_ln_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
encoder_ln_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
encoder_ln_1/Reshape/shapePack%encoder_ln_1/Reshape/shape/0:output:0encoder_ln_1/mul_1:z:0encoder_ln_1/mul_2:z:0%encoder_ln_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
encoder_ln_1/ReshapeReshape'encoder_conv_layer_1/Relu:activations:0#encoder_ln_1/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????f
encoder_ln_1/ones/packedPackencoder_ln_1/mul_1:z:0*
N*
T0*
_output_shapes
:\
encoder_ln_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
encoder_ln_1/onesFill!encoder_ln_1/ones/packed:output:0 encoder_ln_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
encoder_ln_1/zeros/packedPackencoder_ln_1/mul_1:z:0*
N*
T0*
_output_shapes
:]
encoder_ln_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
encoder_ln_1/zerosFill"encoder_ln_1/zeros/packed:output:0!encoder_ln_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
encoder_ln_1/ConstConst*
_output_shapes
: *
dtype0*
valueB W
encoder_ln_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
encoder_ln_1/FusedBatchNormV3FusedBatchNormV3encoder_ln_1/Reshape:output:0encoder_ln_1/ones:output:0encoder_ln_1/zeros:output:0encoder_ln_1/Const:output:0encoder_ln_1/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
encoder_ln_1/Reshape_1Reshape!encoder_ln_1/FusedBatchNormV3:y:0encoder_ln_1/Shape:output:0*
T0*-
_output_shapes
:????????????
!encoder_ln_1/mul_3/ReadVariableOpReadVariableOp*encoder_ln_1_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_ln_1/mul_3Mulencoder_ln_1/Reshape_1:output:0)encoder_ln_1/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
encoder_ln_1/add/ReadVariableOpReadVariableOp(encoder_ln_1_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_ln_1/addAddV2encoder_ln_1/mul_3:z:0'encoder_ln_1/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????u
*encoder_conv_layer_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&encoder_conv_layer_2/Conv1D/ExpandDims
ExpandDimsencoder_ln_1/add:z:03encoder_conv_layer_2/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
7encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@encoder_conv_layer_2_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0n
,encoder_conv_layer_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(encoder_conv_layer_2/Conv1D/ExpandDims_1
ExpandDims?encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp:value:05encoder_conv_layer_2/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
encoder_conv_layer_2/Conv1DConv2D/encoder_conv_layer_2/Conv1D/ExpandDims:output:01encoder_conv_layer_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????0?*
paddingSAME*
strides
?
#encoder_conv_layer_2/Conv1D/SqueezeSqueeze$encoder_conv_layer_2/Conv1D:output:0*
T0*,
_output_shapes
:?????????0?*
squeeze_dims

??????????
+encoder_conv_layer_2/BiasAdd/ReadVariableOpReadVariableOp4encoder_conv_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_conv_layer_2/BiasAddBiasAdd,encoder_conv_layer_2/Conv1D/Squeeze:output:03encoder_conv_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?
encoder_conv_layer_2/ReluRelu%encoder_conv_layer_2/BiasAdd:output:0*
T0*,
_output_shapes
:?????????0?i
encoder_ln_2/ShapeShape'encoder_conv_layer_2/Relu:activations:0*
T0*
_output_shapes
:j
 encoder_ln_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"encoder_ln_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"encoder_ln_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_2/strided_sliceStridedSliceencoder_ln_2/Shape:output:0)encoder_ln_2/strided_slice/stack:output:0+encoder_ln_2/strided_slice/stack_1:output:0+encoder_ln_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
encoder_ln_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
encoder_ln_2/mulMulencoder_ln_2/mul/x:output:0#encoder_ln_2/strided_slice:output:0*
T0*
_output_shapes
: l
"encoder_ln_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_2/strided_slice_1StridedSliceencoder_ln_2/Shape:output:0+encoder_ln_2/strided_slice_1/stack:output:0-encoder_ln_2/strided_slice_1/stack_1:output:0-encoder_ln_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
encoder_ln_2/mul_1Mulencoder_ln_2/mul:z:0%encoder_ln_2/strided_slice_1:output:0*
T0*
_output_shapes
: l
"encoder_ln_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_2/strided_slice_2StridedSliceencoder_ln_2/Shape:output:0+encoder_ln_2/strided_slice_2/stack:output:0-encoder_ln_2/strided_slice_2/stack_1:output:0-encoder_ln_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
encoder_ln_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder_ln_2/mul_2Mulencoder_ln_2/mul_2/x:output:0%encoder_ln_2/strided_slice_2:output:0*
T0*
_output_shapes
: ^
encoder_ln_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
encoder_ln_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
encoder_ln_2/Reshape/shapePack%encoder_ln_2/Reshape/shape/0:output:0encoder_ln_2/mul_1:z:0encoder_ln_2/mul_2:z:0%encoder_ln_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
encoder_ln_2/ReshapeReshape'encoder_conv_layer_2/Relu:activations:0#encoder_ln_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????f
encoder_ln_2/ones/packedPackencoder_ln_2/mul_1:z:0*
N*
T0*
_output_shapes
:\
encoder_ln_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
encoder_ln_2/onesFill!encoder_ln_2/ones/packed:output:0 encoder_ln_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
encoder_ln_2/zeros/packedPackencoder_ln_2/mul_1:z:0*
N*
T0*
_output_shapes
:]
encoder_ln_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
encoder_ln_2/zerosFill"encoder_ln_2/zeros/packed:output:0!encoder_ln_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
encoder_ln_2/ConstConst*
_output_shapes
: *
dtype0*
valueB W
encoder_ln_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
encoder_ln_2/FusedBatchNormV3FusedBatchNormV3encoder_ln_2/Reshape:output:0encoder_ln_2/ones:output:0encoder_ln_2/zeros:output:0encoder_ln_2/Const:output:0encoder_ln_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
encoder_ln_2/Reshape_1Reshape!encoder_ln_2/FusedBatchNormV3:y:0encoder_ln_2/Shape:output:0*
T0*,
_output_shapes
:?????????0??
!encoder_ln_2/mul_3/ReadVariableOpReadVariableOp*encoder_ln_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_ln_2/mul_3Mulencoder_ln_2/Reshape_1:output:0)encoder_ln_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0??
encoder_ln_2/add/ReadVariableOpReadVariableOp(encoder_ln_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_ln_2/addAddV2encoder_ln_2/mul_3:z:0'encoder_ln_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?u
*encoder_conv_layer_3/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&encoder_conv_layer_3/Conv1D/ExpandDims
ExpandDimsencoder_ln_2/add:z:03encoder_conv_layer_3/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????0??
7encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@encoder_conv_layer_3_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0n
,encoder_conv_layer_3/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(encoder_conv_layer_3/Conv1D/ExpandDims_1
ExpandDims?encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp:value:05encoder_conv_layer_3/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
encoder_conv_layer_3/Conv1DConv2D/encoder_conv_layer_3/Conv1D/ExpandDims:output:01encoder_conv_layer_3/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
#encoder_conv_layer_3/Conv1D/SqueezeSqueeze$encoder_conv_layer_3/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
+encoder_conv_layer_3/BiasAdd/ReadVariableOpReadVariableOp4encoder_conv_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_conv_layer_3/BiasAddBiasAdd,encoder_conv_layer_3/Conv1D/Squeeze:output:03encoder_conv_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
encoder_conv_layer_3/ReluRelu%encoder_conv_layer_3/BiasAdd:output:0*
T0*,
_output_shapes
:??????????i
encoder_ln_3/ShapeShape'encoder_conv_layer_3/Relu:activations:0*
T0*
_output_shapes
:j
 encoder_ln_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"encoder_ln_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"encoder_ln_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_3/strided_sliceStridedSliceencoder_ln_3/Shape:output:0)encoder_ln_3/strided_slice/stack:output:0+encoder_ln_3/strided_slice/stack_1:output:0+encoder_ln_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
encoder_ln_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
encoder_ln_3/mulMulencoder_ln_3/mul/x:output:0#encoder_ln_3/strided_slice:output:0*
T0*
_output_shapes
: l
"encoder_ln_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_3/strided_slice_1StridedSliceencoder_ln_3/Shape:output:0+encoder_ln_3/strided_slice_1/stack:output:0-encoder_ln_3/strided_slice_1/stack_1:output:0-encoder_ln_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
encoder_ln_3/mul_1Mulencoder_ln_3/mul:z:0%encoder_ln_3/strided_slice_1:output:0*
T0*
_output_shapes
: l
"encoder_ln_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_ln_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
encoder_ln_3/strided_slice_2StridedSliceencoder_ln_3/Shape:output:0+encoder_ln_3/strided_slice_2/stack:output:0-encoder_ln_3/strided_slice_2/stack_1:output:0-encoder_ln_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
encoder_ln_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder_ln_3/mul_2Mulencoder_ln_3/mul_2/x:output:0%encoder_ln_3/strided_slice_2:output:0*
T0*
_output_shapes
: ^
encoder_ln_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
encoder_ln_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
encoder_ln_3/Reshape/shapePack%encoder_ln_3/Reshape/shape/0:output:0encoder_ln_3/mul_1:z:0encoder_ln_3/mul_2:z:0%encoder_ln_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
encoder_ln_3/ReshapeReshape'encoder_conv_layer_3/Relu:activations:0#encoder_ln_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????f
encoder_ln_3/ones/packedPackencoder_ln_3/mul_1:z:0*
N*
T0*
_output_shapes
:\
encoder_ln_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
encoder_ln_3/onesFill!encoder_ln_3/ones/packed:output:0 encoder_ln_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
encoder_ln_3/zeros/packedPackencoder_ln_3/mul_1:z:0*
N*
T0*
_output_shapes
:]
encoder_ln_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
encoder_ln_3/zerosFill"encoder_ln_3/zeros/packed:output:0!encoder_ln_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
encoder_ln_3/ConstConst*
_output_shapes
: *
dtype0*
valueB W
encoder_ln_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
encoder_ln_3/FusedBatchNormV3FusedBatchNormV3encoder_ln_3/Reshape:output:0encoder_ln_3/ones:output:0encoder_ln_3/zeros:output:0encoder_ln_3/Const:output:0encoder_ln_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
encoder_ln_3/Reshape_1Reshape!encoder_ln_3/FusedBatchNormV3:y:0encoder_ln_3/Shape:output:0*
T0*,
_output_shapes
:???????????
!encoder_ln_3/mul_3/ReadVariableOpReadVariableOp*encoder_ln_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_ln_3/mul_3Mulencoder_ln_3/Reshape_1:output:0)encoder_ln_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
encoder_ln_3/add/ReadVariableOpReadVariableOp(encoder_ln_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_ln_3/addAddV2encoder_ln_3/mul_3:z:0'encoder_ln_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  |
flatten/ReshapeReshapeencoder_ln_3/add:z:0flatten/Const:output:0*
T0*)
_output_shapes
:???????????}
mu/MatMul/ReadVariableOpReadVariableOp!mu_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
	mu/MatMulMatMulflatten/Reshape:output:0 mu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
mu/BiasAdd/ReadVariableOpReadVariableOp"mu_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?

mu/BiasAddBiasAddmu/MatMul:product:0!mu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"log_variance/MatMul/ReadVariableOpReadVariableOp+log_variance_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
log_variance/MatMulMatMulflatten/Reshape:output:0*log_variance/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#log_variance/BiasAdd/ReadVariableOpReadVariableOp,log_variance_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
log_variance/BiasAddBiasAddlog_variance/MatMul:product:0+log_variance/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H
ShapeShapemu/BiasAdd:output:0*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ח?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:??????????}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:??????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @x
truedivRealDivlog_variance/BiasAdd:output:0truediv/y:output:0*
T0*(
_output_shapes
:??????????J
ExpExptruediv:z:0*
T0*(
_output_shapes
:??????????Y
mulMulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:??????????]
addAddV2mu/BiasAdd:output:0mul:z:0*
T0*(
_output_shapes
:???????????
NoOpNoOp,^encoder_conv_layer_0/BiasAdd/ReadVariableOp8^encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp,^encoder_conv_layer_1/BiasAdd/ReadVariableOp8^encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp,^encoder_conv_layer_2/BiasAdd/ReadVariableOp8^encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp,^encoder_conv_layer_3/BiasAdd/ReadVariableOp8^encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp ^encoder_ln_0/add/ReadVariableOp"^encoder_ln_0/mul_3/ReadVariableOp ^encoder_ln_1/add/ReadVariableOp"^encoder_ln_1/mul_3/ReadVariableOp ^encoder_ln_2/add/ReadVariableOp"^encoder_ln_2/mul_3/ReadVariableOp ^encoder_ln_3/add/ReadVariableOp"^encoder_ln_3/mul_3/ReadVariableOp$^log_variance/BiasAdd/ReadVariableOp#^log_variance/MatMul/ReadVariableOp^mu/BiasAdd/ReadVariableOp^mu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 W
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:??????????e

Identity_1Identitymu/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????o

Identity_2Identitylog_variance/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:??????????
?: : : : : : : : : : : : : : : : : : : : 2Z
+encoder_conv_layer_0/BiasAdd/ReadVariableOp+encoder_conv_layer_0/BiasAdd/ReadVariableOp2r
7encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp7encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp2Z
+encoder_conv_layer_1/BiasAdd/ReadVariableOp+encoder_conv_layer_1/BiasAdd/ReadVariableOp2r
7encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp7encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp2Z
+encoder_conv_layer_2/BiasAdd/ReadVariableOp+encoder_conv_layer_2/BiasAdd/ReadVariableOp2r
7encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp7encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp2Z
+encoder_conv_layer_3/BiasAdd/ReadVariableOp+encoder_conv_layer_3/BiasAdd/ReadVariableOp2r
7encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp7encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp2B
encoder_ln_0/add/ReadVariableOpencoder_ln_0/add/ReadVariableOp2F
!encoder_ln_0/mul_3/ReadVariableOp!encoder_ln_0/mul_3/ReadVariableOp2B
encoder_ln_1/add/ReadVariableOpencoder_ln_1/add/ReadVariableOp2F
!encoder_ln_1/mul_3/ReadVariableOp!encoder_ln_1/mul_3/ReadVariableOp2B
encoder_ln_2/add/ReadVariableOpencoder_ln_2/add/ReadVariableOp2F
!encoder_ln_2/mul_3/ReadVariableOp!encoder_ln_2/mul_3/ReadVariableOp2B
encoder_ln_3/add/ReadVariableOpencoder_ln_3/add/ReadVariableOp2F
!encoder_ln_3/mul_3/ReadVariableOp!encoder_ln_3/mul_3/ReadVariableOp2J
#log_variance/BiasAdd/ReadVariableOp#log_variance/BiasAdd/ReadVariableOp2H
"log_variance/MatMul/ReadVariableOp"log_variance/MatMul/ReadVariableOp26
mu/BiasAdd/ReadVariableOpmu/BiasAdd/ReadVariableOp24
mu/MatMul/ReadVariableOpmu/MatMul/ReadVariableOp:P L
-
_output_shapes
:??????????
?

_user_specified_namex
?$
?
F__inference_encoder_ln_0_layer_call_and_return_conditional_losses_2737

inputs,
mul_3_readvariableop_resource:	?*
add_readvariableop_resource:	?
identity??add/ReadVariableOp?mul_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????L
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:r
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*-
_output_shapes
:???????????o
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0v
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:?*
dtype0k
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 \
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?D
?
=__inference_vae_layer_call_and_return_conditional_losses_4447
x'
encoder_2437572:??
encoder_2437574:	?
encoder_2437576:	?
encoder_2437578:	?'
encoder_2437580:??
encoder_2437582:	?
encoder_2437584:	?
encoder_2437586:	?'
encoder_2437588:??
encoder_2437590:	?
encoder_2437592:	?
encoder_2437594:	?'
encoder_2437596:??
encoder_2437598:	?
encoder_2437600:	?
encoder_2437602:	?$
encoder_2437604:???
encoder_2437606:	?$
encoder_2437608:???
encoder_2437610:	?$
decoder_2437615:???
decoder_2437617:
??'
decoder_2437619:??
decoder_2437621:	?
decoder_2437623:	?
decoder_2437625:	?'
decoder_2437627:??
decoder_2437629:	?
decoder_2437631:	?
decoder_2437633:	?'
decoder_2437635:??
decoder_2437637:	?
decoder_2437639:	?
decoder_2437641:	?'
decoder_2437643:??
decoder_2437645:	?&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: (
assignaddvariableop_2_resource: (
assignaddvariableop_3_resource: 

identity_2

identity_3

identity_4??AssignAddVariableOp?AssignAddVariableOp_1?AssignAddVariableOp_2?AssignAddVariableOp_3?decoder/StatefulPartitionedCall?div_no_nan/ReadVariableOp?div_no_nan/ReadVariableOp_1?div_no_nan_1/ReadVariableOp?div_no_nan_1/ReadVariableOp_1?encoder/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCallxencoder_2437572encoder_2437574encoder_2437576encoder_2437578encoder_2437580encoder_2437582encoder_2437584encoder_2437586encoder_2437588encoder_2437590encoder_2437592encoder_2437594encoder_2437596encoder_2437598encoder_2437600encoder_2437602encoder_2437604encoder_2437606encoder_2437608encoder_2437610* 
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_4248?
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_2437615decoder_2437617decoder_2437619decoder_2437621decoder_2437623decoder_2437625decoder_2437627decoder_2437629decoder_2437631decoder_2437633decoder_2437635decoder_2437637decoder_2437639decoder_2437641decoder_2437643decoder_2437645*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:??????????
?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_4019o
subSubx(decoder/StatefulPartitionedCall:output:0*
T0*-
_output_shapes
:??????????
?Q
SquareSquaresub:z:0*
T0*-
_output_shapes
:??????????
?g
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      g
MeanMean
Square:y:0Mean/reduction_indices:output:0*
T0*#
_output_shapes
:?????????J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FW
mulMulmul/x:output:0Mean:output:0*
T0*#
_output_shapes
:?????????J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??y
addAddV2add/x:output:0(encoder/StatefulPartitionedCall:output:2*
T0*(
_output_shapes
:??????????o
Square_1Square(encoder/StatefulPartitionedCall:output:1*
T0*(
_output_shapes
:??????????V
sub_1Subadd:z:0Square_1:y:0*
T0*(
_output_shapes
:??????????g
ExpExp(encoder/StatefulPartitionedCall:output:2*
T0*(
_output_shapes
:??????????S
sub_2Sub	sub_1:z:0Exp:y:0*
T0*(
_output_shapes
:??????????W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :c
SumSum	sub_2:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Z
mul_1Mulmul_1/x:output:0Sum:output:0*
T0*#
_output_shapes
:?????????P
add_1AddV2mul:z:0	mul_1:z:0*
T0*#
_output_shapes
:?????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F]
truedivRealDivmul:z:0truediv/y:output:0*
T0*#
_output_shapes
:?????????O
ConstConst*
_output_shapes
:*
dtype0*
valueB: J
Sum_1Sumtruediv:z:0Const:output:0*
T0*
_output_shapes
: {
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum_1:output:0*
_output_shapes
 *
dtype0:
SizeSizetruediv:z:0*
T0*
_output_shapes
: K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0?
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0?
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: J
Sum_2Sum	mul_1:z:0Const_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_2AssignAddVariableOpassignaddvariableop_2_resourceSum_2:output:0*
_output_shapes
 *
dtype0:
Size_1Size	mul_1:z:0*
T0*
_output_shapes
: O
Cast_1CastSize_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
AssignAddVariableOp_3AssignAddVariableOpassignaddvariableop_3_resource
Cast_1:y:0^AssignAddVariableOp_2*
_output_shapes
 *
dtype0?
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_2_resource^AssignAddVariableOp_2^AssignAddVariableOp_3*
_output_shapes
: *
dtype0?
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_3_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype0?
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_1Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: ?
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3 ^decoder/StatefulPartitionedCall^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_1 ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 z

Identity_2Identity(encoder/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????

Identity_3Identity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:??????????
?V

Identity_4Identity	add_1:z:0^NoOp*
T0*#
_output_shapes
:?????????"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:??????????
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall26
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_12B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
-
_output_shapes
:??????????
?

_user_specified_namex
?
?
&__inference_encoder_layer_call_fn_4362
x
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?!
	unknown_3:??
	unknown_4:	?
	unknown_5:	?
	unknown_6:	?!
	unknown_7:??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?"

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:???

unknown_16:	?

unknown_17:???

unknown_18:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_4248`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:??????????
?: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:??????????
?

_user_specified_namex
?H
?

A__inference_encoder_layer_call_and_return_conditional_losses_4620
input_14
encoder_conv_layer_0_2436916:??+
encoder_conv_layer_0_2436918:	?#
encoder_ln_0_2436921:	?#
encoder_ln_0_2436923:	?4
encoder_conv_layer_1_2436926:??+
encoder_conv_layer_1_2436928:	?#
encoder_ln_1_2436931:	?#
encoder_ln_1_2436933:	?4
encoder_conv_layer_2_2436936:??+
encoder_conv_layer_2_2436938:	?#
encoder_ln_2_2436941:	?#
encoder_ln_2_2436943:	?4
encoder_conv_layer_3_2436946:??+
encoder_conv_layer_3_2436948:	?#
encoder_ln_3_2436951:	?#
encoder_ln_3_2436953:	?

mu_2436957:???

mu_2436959:	?)
log_variance_2436962:???#
log_variance_2436964:	?
identity

identity_1

identity_2??,encoder_conv_layer_0/StatefulPartitionedCall?,encoder_conv_layer_1/StatefulPartitionedCall?,encoder_conv_layer_2/StatefulPartitionedCall?,encoder_conv_layer_3/StatefulPartitionedCall?$encoder_ln_0/StatefulPartitionedCall?$encoder_ln_1/StatefulPartitionedCall?$encoder_ln_2/StatefulPartitionedCall?$encoder_ln_3/StatefulPartitionedCall?$log_variance/StatefulPartitionedCall?mu/StatefulPartitionedCall?
,encoder_conv_layer_0/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_conv_layer_0_2436916encoder_conv_layer_0_2436918*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_encoder_conv_layer_0_layer_call_and_return_conditional_losses_3353?
$encoder_ln_0/StatefulPartitionedCallStatefulPartitionedCall5encoder_conv_layer_0/StatefulPartitionedCall:output:0encoder_ln_0_2436921encoder_ln_0_2436923*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_encoder_ln_0_layer_call_and_return_conditional_losses_2737?
,encoder_conv_layer_1/StatefulPartitionedCallStatefulPartitionedCall-encoder_ln_0/StatefulPartitionedCall:output:0encoder_conv_layer_1_2436926encoder_conv_layer_1_2436928*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_encoder_conv_layer_1_layer_call_and_return_conditional_losses_3475?
$encoder_ln_1/StatefulPartitionedCallStatefulPartitionedCall5encoder_conv_layer_1/StatefulPartitionedCall:output:0encoder_ln_1_2436931encoder_ln_1_2436933*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_encoder_ln_1_layer_call_and_return_conditional_losses_3081?
,encoder_conv_layer_2/StatefulPartitionedCallStatefulPartitionedCall-encoder_ln_1/StatefulPartitionedCall:output:0encoder_conv_layer_2_2436936encoder_conv_layer_2_2436938*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????0?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_encoder_conv_layer_2_layer_call_and_return_conditional_losses_2677?
$encoder_ln_2/StatefulPartitionedCallStatefulPartitionedCall5encoder_conv_layer_2/StatefulPartitionedCall:output:0encoder_ln_2_2436941encoder_ln_2_2436943*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????0?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_encoder_ln_2_layer_call_and_return_conditional_losses_2622?
,encoder_conv_layer_3/StatefulPartitionedCallStatefulPartitionedCall-encoder_ln_2/StatefulPartitionedCall:output:0encoder_conv_layer_3_2436946encoder_conv_layer_3_2436948*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_encoder_conv_layer_3_layer_call_and_return_conditional_losses_3585?
$encoder_ln_3/StatefulPartitionedCallStatefulPartitionedCall5encoder_conv_layer_3/StatefulPartitionedCall:output:0encoder_ln_3_2436951encoder_ln_3_2436953*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_encoder_ln_3_layer_call_and_return_conditional_losses_3522?
flatten/PartitionedCallPartitionedCall-encoder_ln_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4200?
mu/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
mu_2436957
mu_2436959*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *E
f@R>
<__inference_mu_layer_call_and_return_conditional_losses_4147?
$log_variance/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0log_variance_2436962log_variance_2436964*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_log_variance_layer_call_and_return_conditional_losses_3363X
ShapeShape#mu/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2????
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:??????????}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:??????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
truedivRealDiv-log_variance/StatefulPartitionedCall:output:0truediv/y:output:0*
T0*(
_output_shapes
:??????????J
ExpExptruediv:z:0*
T0*(
_output_shapes
:??????????Y
mulMulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:??????????m
addAddV2#mu/StatefulPartitionedCall:output:0mul:z:0*
T0*(
_output_shapes
:???????????
NoOpNoOp-^encoder_conv_layer_0/StatefulPartitionedCall-^encoder_conv_layer_1/StatefulPartitionedCall-^encoder_conv_layer_2/StatefulPartitionedCall-^encoder_conv_layer_3/StatefulPartitionedCall%^encoder_ln_0/StatefulPartitionedCall%^encoder_ln_1/StatefulPartitionedCall%^encoder_ln_2/StatefulPartitionedCall%^encoder_ln_3/StatefulPartitionedCall%^log_variance/StatefulPartitionedCall^mu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 W
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:??????????u

Identity_1Identity#mu/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????

Identity_2Identity-log_variance/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:??????????
?: : : : : : : : : : : : : : : : : : : : 2\
,encoder_conv_layer_0/StatefulPartitionedCall,encoder_conv_layer_0/StatefulPartitionedCall2\
,encoder_conv_layer_1/StatefulPartitionedCall,encoder_conv_layer_1/StatefulPartitionedCall2\
,encoder_conv_layer_2/StatefulPartitionedCall,encoder_conv_layer_2/StatefulPartitionedCall2\
,encoder_conv_layer_3/StatefulPartitionedCall,encoder_conv_layer_3/StatefulPartitionedCall2L
$encoder_ln_0/StatefulPartitionedCall$encoder_ln_0/StatefulPartitionedCall2L
$encoder_ln_1/StatefulPartitionedCall$encoder_ln_1/StatefulPartitionedCall2L
$encoder_ln_2/StatefulPartitionedCall$encoder_ln_2/StatefulPartitionedCall2L
$encoder_ln_3/StatefulPartitionedCall$encoder_ln_3/StatefulPartitionedCall2L
$log_variance/StatefulPartitionedCall$log_variance/StatefulPartitionedCall28
mu/StatefulPartitionedCallmu/StatefulPartitionedCall:V R
-
_output_shapes
:??????????
?
!
_user_specified_name	input_1
??
?)
=__inference_vae_layer_call_and_return_conditional_losses_2384
x`
Hencoder_encoder_conv_layer_0_conv1d_expanddims_1_readvariableop_resource:??K
<encoder_encoder_conv_layer_0_biasadd_readvariableop_resource:	?A
2encoder_encoder_ln_0_mul_3_readvariableop_resource:	??
0encoder_encoder_ln_0_add_readvariableop_resource:	?`
Hencoder_encoder_conv_layer_1_conv1d_expanddims_1_readvariableop_resource:??K
<encoder_encoder_conv_layer_1_biasadd_readvariableop_resource:	?A
2encoder_encoder_ln_1_mul_3_readvariableop_resource:	??
0encoder_encoder_ln_1_add_readvariableop_resource:	?`
Hencoder_encoder_conv_layer_2_conv1d_expanddims_1_readvariableop_resource:??K
<encoder_encoder_conv_layer_2_biasadd_readvariableop_resource:	?A
2encoder_encoder_ln_2_mul_3_readvariableop_resource:	??
0encoder_encoder_ln_2_add_readvariableop_resource:	?`
Hencoder_encoder_conv_layer_3_conv1d_expanddims_1_readvariableop_resource:??K
<encoder_encoder_conv_layer_3_biasadd_readvariableop_resource:	?A
2encoder_encoder_ln_3_mul_3_readvariableop_resource:	??
0encoder_encoder_ln_3_add_readvariableop_resource:	?>
)encoder_mu_matmul_readvariableop_resource:???9
*encoder_mu_biasadd_readvariableop_resource:	?H
3encoder_log_variance_matmul_readvariableop_resource:???C
4encoder_log_variance_biasadd_readvariableop_resource:	?I
4decoder_decoder_dense_matmul_readvariableop_resource:???E
5decoder_decoder_dense_biasadd_readvariableop_resource:
??t
\decoder_decoder_conv_transpose_layer_0_conv1d_transpose_expanddims_1_readvariableop_resource:??U
Fdecoder_decoder_conv_transpose_layer_0_biasadd_readvariableop_resource:	?A
2decoder_decoder_ln_0_mul_3_readvariableop_resource:	??
0decoder_decoder_ln_0_add_readvariableop_resource:	?t
\decoder_decoder_conv_transpose_layer_1_conv1d_transpose_expanddims_1_readvariableop_resource:??U
Fdecoder_decoder_conv_transpose_layer_1_biasadd_readvariableop_resource:	?A
2decoder_decoder_ln_1_mul_3_readvariableop_resource:	??
0decoder_decoder_ln_1_add_readvariableop_resource:	?t
\decoder_decoder_conv_transpose_layer_2_conv1d_transpose_expanddims_1_readvariableop_resource:??U
Fdecoder_decoder_conv_transpose_layer_2_biasadd_readvariableop_resource:	?A
2decoder_decoder_ln_2_mul_3_readvariableop_resource:	??
0decoder_decoder_ln_2_add_readvariableop_resource:	?t
\decoder_decoder_conv_transpose_layer_4_conv1d_transpose_expanddims_1_readvariableop_resource:??U
Fdecoder_decoder_conv_transpose_layer_4_biasadd_readvariableop_resource:	?&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: (
assignaddvariableop_2_resource: (
assignaddvariableop_3_resource: 

identity_2

identity_3

identity_4??AssignAddVariableOp?AssignAddVariableOp_1?AssignAddVariableOp_2?AssignAddVariableOp_3?=decoder/decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOp?Sdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOp?=decoder/decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOp?Sdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?=decoder/decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOp?Sdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?=decoder/decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOp?Sdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOp?,decoder/decoder_dense/BiasAdd/ReadVariableOp?+decoder/decoder_dense/MatMul/ReadVariableOp?'decoder/decoder_ln_0/add/ReadVariableOp?)decoder/decoder_ln_0/mul_3/ReadVariableOp?'decoder/decoder_ln_1/add/ReadVariableOp?)decoder/decoder_ln_1/mul_3/ReadVariableOp?'decoder/decoder_ln_2/add/ReadVariableOp?)decoder/decoder_ln_2/mul_3/ReadVariableOp?div_no_nan/ReadVariableOp?div_no_nan/ReadVariableOp_1?div_no_nan_1/ReadVariableOp?div_no_nan_1/ReadVariableOp_1?3encoder/encoder_conv_layer_0/BiasAdd/ReadVariableOp??encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp?3encoder/encoder_conv_layer_1/BiasAdd/ReadVariableOp??encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp?3encoder/encoder_conv_layer_2/BiasAdd/ReadVariableOp??encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp?3encoder/encoder_conv_layer_3/BiasAdd/ReadVariableOp??encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp?'encoder/encoder_ln_0/add/ReadVariableOp?)encoder/encoder_ln_0/mul_3/ReadVariableOp?'encoder/encoder_ln_1/add/ReadVariableOp?)encoder/encoder_ln_1/mul_3/ReadVariableOp?'encoder/encoder_ln_2/add/ReadVariableOp?)encoder/encoder_ln_2/mul_3/ReadVariableOp?'encoder/encoder_ln_3/add/ReadVariableOp?)encoder/encoder_ln_3/mul_3/ReadVariableOp?+encoder/log_variance/BiasAdd/ReadVariableOp?*encoder/log_variance/MatMul/ReadVariableOp?!encoder/mu/BiasAdd/ReadVariableOp? encoder/mu/MatMul/ReadVariableOp}
2encoder/encoder_conv_layer_0/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.encoder/encoder_conv_layer_0/Conv1D/ExpandDims
ExpandDimsx;encoder/encoder_conv_layer_0/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:??????????
??
?encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpHencoder_encoder_conv_layer_0_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0v
4encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1
ExpandDimsGencoder/encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp:value:0=encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
#encoder/encoder_conv_layer_0/Conv1DConv2D7encoder/encoder_conv_layer_0/Conv1D/ExpandDims:output:09encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
+encoder/encoder_conv_layer_0/Conv1D/SqueezeSqueeze,encoder/encoder_conv_layer_0/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
3encoder/encoder_conv_layer_0/BiasAdd/ReadVariableOpReadVariableOp<encoder_encoder_conv_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$encoder/encoder_conv_layer_0/BiasAddBiasAdd4encoder/encoder_conv_layer_0/Conv1D/Squeeze:output:0;encoder/encoder_conv_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
!encoder/encoder_conv_layer_0/ReluRelu-encoder/encoder_conv_layer_0/BiasAdd:output:0*
T0*-
_output_shapes
:???????????y
encoder/encoder_ln_0/ShapeShape/encoder/encoder_conv_layer_0/Relu:activations:0*
T0*
_output_shapes
:r
(encoder/encoder_ln_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*encoder/encoder_ln_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*encoder/encoder_ln_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"encoder/encoder_ln_0/strided_sliceStridedSlice#encoder/encoder_ln_0/Shape:output:01encoder/encoder_ln_0/strided_slice/stack:output:03encoder/encoder_ln_0/strided_slice/stack_1:output:03encoder/encoder_ln_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
encoder/encoder_ln_0/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder/encoder_ln_0/mulMul#encoder/encoder_ln_0/mul/x:output:0+encoder/encoder_ln_0/strided_slice:output:0*
T0*
_output_shapes
: t
*encoder/encoder_ln_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$encoder/encoder_ln_0/strided_slice_1StridedSlice#encoder/encoder_ln_0/Shape:output:03encoder/encoder_ln_0/strided_slice_1/stack:output:05encoder/encoder_ln_0/strided_slice_1/stack_1:output:05encoder/encoder_ln_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
encoder/encoder_ln_0/mul_1Mulencoder/encoder_ln_0/mul:z:0-encoder/encoder_ln_0/strided_slice_1:output:0*
T0*
_output_shapes
: t
*encoder/encoder_ln_0/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_0/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_0/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$encoder/encoder_ln_0/strided_slice_2StridedSlice#encoder/encoder_ln_0/Shape:output:03encoder/encoder_ln_0/strided_slice_2/stack:output:05encoder/encoder_ln_0/strided_slice_2/stack_1:output:05encoder/encoder_ln_0/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
encoder/encoder_ln_0/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder/encoder_ln_0/mul_2Mul%encoder/encoder_ln_0/mul_2/x:output:0-encoder/encoder_ln_0/strided_slice_2:output:0*
T0*
_output_shapes
: f
$encoder/encoder_ln_0/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :f
$encoder/encoder_ln_0/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
"encoder/encoder_ln_0/Reshape/shapePack-encoder/encoder_ln_0/Reshape/shape/0:output:0encoder/encoder_ln_0/mul_1:z:0encoder/encoder_ln_0/mul_2:z:0-encoder/encoder_ln_0/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
encoder/encoder_ln_0/ReshapeReshape/encoder/encoder_conv_layer_0/Relu:activations:0+encoder/encoder_ln_0/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????v
 encoder/encoder_ln_0/ones/packedPackencoder/encoder_ln_0/mul_1:z:0*
N*
T0*
_output_shapes
:d
encoder/encoder_ln_0/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
encoder/encoder_ln_0/onesFill)encoder/encoder_ln_0/ones/packed:output:0(encoder/encoder_ln_0/ones/Const:output:0*
T0*#
_output_shapes
:?????????w
!encoder/encoder_ln_0/zeros/packedPackencoder/encoder_ln_0/mul_1:z:0*
N*
T0*
_output_shapes
:e
 encoder/encoder_ln_0/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
encoder/encoder_ln_0/zerosFill*encoder/encoder_ln_0/zeros/packed:output:0)encoder/encoder_ln_0/zeros/Const:output:0*
T0*#
_output_shapes
:?????????]
encoder/encoder_ln_0/ConstConst*
_output_shapes
: *
dtype0*
valueB _
encoder/encoder_ln_0/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
%encoder/encoder_ln_0/FusedBatchNormV3FusedBatchNormV3%encoder/encoder_ln_0/Reshape:output:0"encoder/encoder_ln_0/ones:output:0#encoder/encoder_ln_0/zeros:output:0#encoder/encoder_ln_0/Const:output:0%encoder/encoder_ln_0/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
encoder/encoder_ln_0/Reshape_1Reshape)encoder/encoder_ln_0/FusedBatchNormV3:y:0#encoder/encoder_ln_0/Shape:output:0*
T0*-
_output_shapes
:????????????
)encoder/encoder_ln_0/mul_3/ReadVariableOpReadVariableOp2encoder_encoder_ln_0_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/encoder_ln_0/mul_3Mul'encoder/encoder_ln_0/Reshape_1:output:01encoder/encoder_ln_0/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
'encoder/encoder_ln_0/add/ReadVariableOpReadVariableOp0encoder_encoder_ln_0_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/encoder_ln_0/addAddV2encoder/encoder_ln_0/mul_3:z:0/encoder/encoder_ln_0/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????}
2encoder/encoder_conv_layer_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.encoder/encoder_conv_layer_1/Conv1D/ExpandDims
ExpandDimsencoder/encoder_ln_0/add:z:0;encoder/encoder_conv_layer_1/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
?encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpHencoder_encoder_conv_layer_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0v
4encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1
ExpandDimsGencoder/encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0=encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
#encoder/encoder_conv_layer_1/Conv1DConv2D7encoder/encoder_conv_layer_1/Conv1D/ExpandDims:output:09encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
+encoder/encoder_conv_layer_1/Conv1D/SqueezeSqueeze,encoder/encoder_conv_layer_1/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
3encoder/encoder_conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp<encoder_encoder_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$encoder/encoder_conv_layer_1/BiasAddBiasAdd4encoder/encoder_conv_layer_1/Conv1D/Squeeze:output:0;encoder/encoder_conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
!encoder/encoder_conv_layer_1/ReluRelu-encoder/encoder_conv_layer_1/BiasAdd:output:0*
T0*-
_output_shapes
:???????????y
encoder/encoder_ln_1/ShapeShape/encoder/encoder_conv_layer_1/Relu:activations:0*
T0*
_output_shapes
:r
(encoder/encoder_ln_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*encoder/encoder_ln_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*encoder/encoder_ln_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"encoder/encoder_ln_1/strided_sliceStridedSlice#encoder/encoder_ln_1/Shape:output:01encoder/encoder_ln_1/strided_slice/stack:output:03encoder/encoder_ln_1/strided_slice/stack_1:output:03encoder/encoder_ln_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
encoder/encoder_ln_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder/encoder_ln_1/mulMul#encoder/encoder_ln_1/mul/x:output:0+encoder/encoder_ln_1/strided_slice:output:0*
T0*
_output_shapes
: t
*encoder/encoder_ln_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$encoder/encoder_ln_1/strided_slice_1StridedSlice#encoder/encoder_ln_1/Shape:output:03encoder/encoder_ln_1/strided_slice_1/stack:output:05encoder/encoder_ln_1/strided_slice_1/stack_1:output:05encoder/encoder_ln_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
encoder/encoder_ln_1/mul_1Mulencoder/encoder_ln_1/mul:z:0-encoder/encoder_ln_1/strided_slice_1:output:0*
T0*
_output_shapes
: t
*encoder/encoder_ln_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$encoder/encoder_ln_1/strided_slice_2StridedSlice#encoder/encoder_ln_1/Shape:output:03encoder/encoder_ln_1/strided_slice_2/stack:output:05encoder/encoder_ln_1/strided_slice_2/stack_1:output:05encoder/encoder_ln_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
encoder/encoder_ln_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder/encoder_ln_1/mul_2Mul%encoder/encoder_ln_1/mul_2/x:output:0-encoder/encoder_ln_1/strided_slice_2:output:0*
T0*
_output_shapes
: f
$encoder/encoder_ln_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :f
$encoder/encoder_ln_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
"encoder/encoder_ln_1/Reshape/shapePack-encoder/encoder_ln_1/Reshape/shape/0:output:0encoder/encoder_ln_1/mul_1:z:0encoder/encoder_ln_1/mul_2:z:0-encoder/encoder_ln_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
encoder/encoder_ln_1/ReshapeReshape/encoder/encoder_conv_layer_1/Relu:activations:0+encoder/encoder_ln_1/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????v
 encoder/encoder_ln_1/ones/packedPackencoder/encoder_ln_1/mul_1:z:0*
N*
T0*
_output_shapes
:d
encoder/encoder_ln_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
encoder/encoder_ln_1/onesFill)encoder/encoder_ln_1/ones/packed:output:0(encoder/encoder_ln_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????w
!encoder/encoder_ln_1/zeros/packedPackencoder/encoder_ln_1/mul_1:z:0*
N*
T0*
_output_shapes
:e
 encoder/encoder_ln_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
encoder/encoder_ln_1/zerosFill*encoder/encoder_ln_1/zeros/packed:output:0)encoder/encoder_ln_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????]
encoder/encoder_ln_1/ConstConst*
_output_shapes
: *
dtype0*
valueB _
encoder/encoder_ln_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
%encoder/encoder_ln_1/FusedBatchNormV3FusedBatchNormV3%encoder/encoder_ln_1/Reshape:output:0"encoder/encoder_ln_1/ones:output:0#encoder/encoder_ln_1/zeros:output:0#encoder/encoder_ln_1/Const:output:0%encoder/encoder_ln_1/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
encoder/encoder_ln_1/Reshape_1Reshape)encoder/encoder_ln_1/FusedBatchNormV3:y:0#encoder/encoder_ln_1/Shape:output:0*
T0*-
_output_shapes
:????????????
)encoder/encoder_ln_1/mul_3/ReadVariableOpReadVariableOp2encoder_encoder_ln_1_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/encoder_ln_1/mul_3Mul'encoder/encoder_ln_1/Reshape_1:output:01encoder/encoder_ln_1/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
'encoder/encoder_ln_1/add/ReadVariableOpReadVariableOp0encoder_encoder_ln_1_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/encoder_ln_1/addAddV2encoder/encoder_ln_1/mul_3:z:0/encoder/encoder_ln_1/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????}
2encoder/encoder_conv_layer_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.encoder/encoder_conv_layer_2/Conv1D/ExpandDims
ExpandDimsencoder/encoder_ln_1/add:z:0;encoder/encoder_conv_layer_2/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
?encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpHencoder_encoder_conv_layer_2_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0v
4encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1
ExpandDimsGencoder/encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0=encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
#encoder/encoder_conv_layer_2/Conv1DConv2D7encoder/encoder_conv_layer_2/Conv1D/ExpandDims:output:09encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????0?*
paddingSAME*
strides
?
+encoder/encoder_conv_layer_2/Conv1D/SqueezeSqueeze,encoder/encoder_conv_layer_2/Conv1D:output:0*
T0*,
_output_shapes
:?????????0?*
squeeze_dims

??????????
3encoder/encoder_conv_layer_2/BiasAdd/ReadVariableOpReadVariableOp<encoder_encoder_conv_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$encoder/encoder_conv_layer_2/BiasAddBiasAdd4encoder/encoder_conv_layer_2/Conv1D/Squeeze:output:0;encoder/encoder_conv_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0??
!encoder/encoder_conv_layer_2/ReluRelu-encoder/encoder_conv_layer_2/BiasAdd:output:0*
T0*,
_output_shapes
:?????????0?y
encoder/encoder_ln_2/ShapeShape/encoder/encoder_conv_layer_2/Relu:activations:0*
T0*
_output_shapes
:r
(encoder/encoder_ln_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*encoder/encoder_ln_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*encoder/encoder_ln_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"encoder/encoder_ln_2/strided_sliceStridedSlice#encoder/encoder_ln_2/Shape:output:01encoder/encoder_ln_2/strided_slice/stack:output:03encoder/encoder_ln_2/strided_slice/stack_1:output:03encoder/encoder_ln_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
encoder/encoder_ln_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder/encoder_ln_2/mulMul#encoder/encoder_ln_2/mul/x:output:0+encoder/encoder_ln_2/strided_slice:output:0*
T0*
_output_shapes
: t
*encoder/encoder_ln_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$encoder/encoder_ln_2/strided_slice_1StridedSlice#encoder/encoder_ln_2/Shape:output:03encoder/encoder_ln_2/strided_slice_1/stack:output:05encoder/encoder_ln_2/strided_slice_1/stack_1:output:05encoder/encoder_ln_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
encoder/encoder_ln_2/mul_1Mulencoder/encoder_ln_2/mul:z:0-encoder/encoder_ln_2/strided_slice_1:output:0*
T0*
_output_shapes
: t
*encoder/encoder_ln_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$encoder/encoder_ln_2/strided_slice_2StridedSlice#encoder/encoder_ln_2/Shape:output:03encoder/encoder_ln_2/strided_slice_2/stack:output:05encoder/encoder_ln_2/strided_slice_2/stack_1:output:05encoder/encoder_ln_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
encoder/encoder_ln_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder/encoder_ln_2/mul_2Mul%encoder/encoder_ln_2/mul_2/x:output:0-encoder/encoder_ln_2/strided_slice_2:output:0*
T0*
_output_shapes
: f
$encoder/encoder_ln_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :f
$encoder/encoder_ln_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
"encoder/encoder_ln_2/Reshape/shapePack-encoder/encoder_ln_2/Reshape/shape/0:output:0encoder/encoder_ln_2/mul_1:z:0encoder/encoder_ln_2/mul_2:z:0-encoder/encoder_ln_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
encoder/encoder_ln_2/ReshapeReshape/encoder/encoder_conv_layer_2/Relu:activations:0+encoder/encoder_ln_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????v
 encoder/encoder_ln_2/ones/packedPackencoder/encoder_ln_2/mul_1:z:0*
N*
T0*
_output_shapes
:d
encoder/encoder_ln_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
encoder/encoder_ln_2/onesFill)encoder/encoder_ln_2/ones/packed:output:0(encoder/encoder_ln_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????w
!encoder/encoder_ln_2/zeros/packedPackencoder/encoder_ln_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 encoder/encoder_ln_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
encoder/encoder_ln_2/zerosFill*encoder/encoder_ln_2/zeros/packed:output:0)encoder/encoder_ln_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????]
encoder/encoder_ln_2/ConstConst*
_output_shapes
: *
dtype0*
valueB _
encoder/encoder_ln_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
%encoder/encoder_ln_2/FusedBatchNormV3FusedBatchNormV3%encoder/encoder_ln_2/Reshape:output:0"encoder/encoder_ln_2/ones:output:0#encoder/encoder_ln_2/zeros:output:0#encoder/encoder_ln_2/Const:output:0%encoder/encoder_ln_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
encoder/encoder_ln_2/Reshape_1Reshape)encoder/encoder_ln_2/FusedBatchNormV3:y:0#encoder/encoder_ln_2/Shape:output:0*
T0*,
_output_shapes
:?????????0??
)encoder/encoder_ln_2/mul_3/ReadVariableOpReadVariableOp2encoder_encoder_ln_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/encoder_ln_2/mul_3Mul'encoder/encoder_ln_2/Reshape_1:output:01encoder/encoder_ln_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0??
'encoder/encoder_ln_2/add/ReadVariableOpReadVariableOp0encoder_encoder_ln_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/encoder_ln_2/addAddV2encoder/encoder_ln_2/mul_3:z:0/encoder/encoder_ln_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?}
2encoder/encoder_conv_layer_3/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.encoder/encoder_conv_layer_3/Conv1D/ExpandDims
ExpandDimsencoder/encoder_ln_2/add:z:0;encoder/encoder_conv_layer_3/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????0??
?encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpHencoder_encoder_conv_layer_3_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0v
4encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1
ExpandDimsGencoder/encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp:value:0=encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
#encoder/encoder_conv_layer_3/Conv1DConv2D7encoder/encoder_conv_layer_3/Conv1D/ExpandDims:output:09encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
+encoder/encoder_conv_layer_3/Conv1D/SqueezeSqueeze,encoder/encoder_conv_layer_3/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
3encoder/encoder_conv_layer_3/BiasAdd/ReadVariableOpReadVariableOp<encoder_encoder_conv_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$encoder/encoder_conv_layer_3/BiasAddBiasAdd4encoder/encoder_conv_layer_3/Conv1D/Squeeze:output:0;encoder/encoder_conv_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
!encoder/encoder_conv_layer_3/ReluRelu-encoder/encoder_conv_layer_3/BiasAdd:output:0*
T0*,
_output_shapes
:??????????y
encoder/encoder_ln_3/ShapeShape/encoder/encoder_conv_layer_3/Relu:activations:0*
T0*
_output_shapes
:r
(encoder/encoder_ln_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*encoder/encoder_ln_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*encoder/encoder_ln_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"encoder/encoder_ln_3/strided_sliceStridedSlice#encoder/encoder_ln_3/Shape:output:01encoder/encoder_ln_3/strided_slice/stack:output:03encoder/encoder_ln_3/strided_slice/stack_1:output:03encoder/encoder_ln_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
encoder/encoder_ln_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder/encoder_ln_3/mulMul#encoder/encoder_ln_3/mul/x:output:0+encoder/encoder_ln_3/strided_slice:output:0*
T0*
_output_shapes
: t
*encoder/encoder_ln_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$encoder/encoder_ln_3/strided_slice_1StridedSlice#encoder/encoder_ln_3/Shape:output:03encoder/encoder_ln_3/strided_slice_1/stack:output:05encoder/encoder_ln_3/strided_slice_1/stack_1:output:05encoder/encoder_ln_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
encoder/encoder_ln_3/mul_1Mulencoder/encoder_ln_3/mul:z:0-encoder/encoder_ln_3/strided_slice_1:output:0*
T0*
_output_shapes
: t
*encoder/encoder_ln_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,encoder/encoder_ln_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$encoder/encoder_ln_3/strided_slice_2StridedSlice#encoder/encoder_ln_3/Shape:output:03encoder/encoder_ln_3/strided_slice_2/stack:output:05encoder/encoder_ln_3/strided_slice_2/stack_1:output:05encoder/encoder_ln_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
encoder/encoder_ln_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
encoder/encoder_ln_3/mul_2Mul%encoder/encoder_ln_3/mul_2/x:output:0-encoder/encoder_ln_3/strided_slice_2:output:0*
T0*
_output_shapes
: f
$encoder/encoder_ln_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :f
$encoder/encoder_ln_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
"encoder/encoder_ln_3/Reshape/shapePack-encoder/encoder_ln_3/Reshape/shape/0:output:0encoder/encoder_ln_3/mul_1:z:0encoder/encoder_ln_3/mul_2:z:0-encoder/encoder_ln_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
encoder/encoder_ln_3/ReshapeReshape/encoder/encoder_conv_layer_3/Relu:activations:0+encoder/encoder_ln_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????v
 encoder/encoder_ln_3/ones/packedPackencoder/encoder_ln_3/mul_1:z:0*
N*
T0*
_output_shapes
:d
encoder/encoder_ln_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
encoder/encoder_ln_3/onesFill)encoder/encoder_ln_3/ones/packed:output:0(encoder/encoder_ln_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????w
!encoder/encoder_ln_3/zeros/packedPackencoder/encoder_ln_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 encoder/encoder_ln_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
encoder/encoder_ln_3/zerosFill*encoder/encoder_ln_3/zeros/packed:output:0)encoder/encoder_ln_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????]
encoder/encoder_ln_3/ConstConst*
_output_shapes
: *
dtype0*
valueB _
encoder/encoder_ln_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
%encoder/encoder_ln_3/FusedBatchNormV3FusedBatchNormV3%encoder/encoder_ln_3/Reshape:output:0"encoder/encoder_ln_3/ones:output:0#encoder/encoder_ln_3/zeros:output:0#encoder/encoder_ln_3/Const:output:0%encoder/encoder_ln_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
encoder/encoder_ln_3/Reshape_1Reshape)encoder/encoder_ln_3/FusedBatchNormV3:y:0#encoder/encoder_ln_3/Shape:output:0*
T0*,
_output_shapes
:???????????
)encoder/encoder_ln_3/mul_3/ReadVariableOpReadVariableOp2encoder_encoder_ln_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/encoder_ln_3/mul_3Mul'encoder/encoder_ln_3/Reshape_1:output:01encoder/encoder_ln_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
'encoder/encoder_ln_3/add/ReadVariableOpReadVariableOp0encoder_encoder_ln_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/encoder_ln_3/addAddV2encoder/encoder_ln_3/mul_3:z:0/encoder/encoder_ln_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????f
encoder/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  ?
encoder/flatten/ReshapeReshapeencoder/encoder_ln_3/add:z:0encoder/flatten/Const:output:0*
T0*)
_output_shapes
:????????????
 encoder/mu/MatMul/ReadVariableOpReadVariableOp)encoder_mu_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
encoder/mu/MatMulMatMul encoder/flatten/Reshape:output:0(encoder/mu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!encoder/mu/BiasAdd/ReadVariableOpReadVariableOp*encoder_mu_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/mu/BiasAddBiasAddencoder/mu/MatMul:product:0)encoder/mu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*encoder/log_variance/MatMul/ReadVariableOpReadVariableOp3encoder_log_variance_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
encoder/log_variance/MatMulMatMul encoder/flatten/Reshape:output:02encoder/log_variance/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+encoder/log_variance/BiasAdd/ReadVariableOpReadVariableOp4encoder_log_variance_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder/log_variance/BiasAddBiasAdd%encoder/log_variance/MatMul:product:03encoder/log_variance/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????X
encoder/ShapeShapeencoder/mu/BiasAdd:output:0*
T0*
_output_shapes
:_
encoder/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    a
encoder/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
*encoder/random_normal/RandomStandardNormalRandomStandardNormalencoder/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???
encoder/random_normal/mulMul3encoder/random_normal/RandomStandardNormal:output:0%encoder/random_normal/stddev:output:0*
T0*(
_output_shapes
:???????????
encoder/random_normalAddV2encoder/random_normal/mul:z:0#encoder/random_normal/mean:output:0*
T0*(
_output_shapes
:??????????V
encoder/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
encoder/truedivRealDiv%encoder/log_variance/BiasAdd:output:0encoder/truediv/y:output:0*
T0*(
_output_shapes
:??????????Z
encoder/ExpExpencoder/truediv:z:0*
T0*(
_output_shapes
:??????????q
encoder/mulMulencoder/Exp:y:0encoder/random_normal:z:0*
T0*(
_output_shapes
:??????????u
encoder/addAddV2encoder/mu/BiasAdd:output:0encoder/mul:z:0*
T0*(
_output_shapes
:???????????
+decoder/decoder_dense/MatMul/ReadVariableOpReadVariableOp4decoder_decoder_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
decoder/decoder_dense/MatMulMatMulencoder/add:z:03decoder/decoder_dense/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:????????????
,decoder/decoder_dense/BiasAdd/ReadVariableOpReadVariableOp5decoder_decoder_dense_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype0?
decoder/decoder_dense/BiasAddBiasAdd&decoder/decoder_dense/MatMul:product:04decoder/decoder_dense/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????k
decoder/reshape/ShapeShape&decoder/decoder_dense/BiasAdd:output:0*
T0*
_output_shapes
:m
#decoder/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%decoder/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%decoder/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
decoder/reshape/strided_sliceStridedSlicedecoder/reshape/Shape:output:0,decoder/reshape/strided_slice/stack:output:0.decoder/reshape/strided_slice/stack_1:output:0.decoder/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
decoder/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :b
decoder/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
decoder/reshape/Reshape/shapePack&decoder/reshape/strided_slice:output:0(decoder/reshape/Reshape/shape/1:output:0(decoder/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
decoder/reshape/ReshapeReshape&decoder/decoder_dense/BiasAdd:output:0&decoder/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????|
,decoder/decoder_conv_transpose_layer_0/ShapeShape decoder/reshape/Reshape:output:0*
T0*
_output_shapes
:?
:decoder/decoder_conv_transpose_layer_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<decoder/decoder_conv_transpose_layer_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<decoder/decoder_conv_transpose_layer_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4decoder/decoder_conv_transpose_layer_0/strided_sliceStridedSlice5decoder/decoder_conv_transpose_layer_0/Shape:output:0Cdecoder/decoder_conv_transpose_layer_0/strided_slice/stack:output:0Edecoder/decoder_conv_transpose_layer_0/strided_slice/stack_1:output:0Edecoder/decoder_conv_transpose_layer_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
<decoder/decoder_conv_transpose_layer_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
>decoder/decoder_conv_transpose_layer_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>decoder/decoder_conv_transpose_layer_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6decoder/decoder_conv_transpose_layer_0/strided_slice_1StridedSlice5decoder/decoder_conv_transpose_layer_0/Shape:output:0Edecoder/decoder_conv_transpose_layer_0/strided_slice_1/stack:output:0Gdecoder/decoder_conv_transpose_layer_0/strided_slice_1/stack_1:output:0Gdecoder/decoder_conv_transpose_layer_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,decoder/decoder_conv_transpose_layer_0/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
*decoder/decoder_conv_transpose_layer_0/mulMul?decoder/decoder_conv_transpose_layer_0/strided_slice_1:output:05decoder/decoder_conv_transpose_layer_0/mul/y:output:0*
T0*
_output_shapes
: q
.decoder/decoder_conv_transpose_layer_0/stack/2Const*
_output_shapes
: *
dtype0*
value
B :??
,decoder/decoder_conv_transpose_layer_0/stackPack=decoder/decoder_conv_transpose_layer_0/strided_slice:output:0.decoder/decoder_conv_transpose_layer_0/mul:z:07decoder/decoder_conv_transpose_layer_0/stack/2:output:0*
N*
T0*
_output_shapes
:?
Fdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Bdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims
ExpandDims decoder/reshape/Reshape:output:0Odecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
Sdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp\decoder_decoder_conv_transpose_layer_0_conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0?
Hdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Ddecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1
ExpandDims[decoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Qdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Kdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Mdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Mdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Edecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_sliceStridedSlice5decoder/decoder_conv_transpose_layer_0/stack:output:0Tdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack:output:0Vdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack_1:output:0Vdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Mdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Odecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Odecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Gdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1StridedSlice5decoder/decoder_conv_transpose_layer_0/stack:output:0Vdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack:output:0Xdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack_1:output:0Xdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
Gdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:?
Cdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>decoder/decoder_conv_transpose_layer_0/conv1d_transpose/concatConcatV2Ndecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice:output:0Pdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/concat/values_1:output:0Pdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/strided_slice_1:output:0Ldecoder/decoder_conv_transpose_layer_0/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
7decoder/decoder_conv_transpose_layer_0/conv1d_transposeConv2DBackpropInputGdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/concat:output:0Mdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1:output:0Kdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:?????????0?*
paddingSAME*
strides
?
?decoder/decoder_conv_transpose_layer_0/conv1d_transpose/SqueezeSqueeze@decoder/decoder_conv_transpose_layer_0/conv1d_transpose:output:0*
T0*,
_output_shapes
:?????????0?*
squeeze_dims
?
=decoder/decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOpReadVariableOpFdecoder_decoder_conv_transpose_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.decoder/decoder_conv_transpose_layer_0/BiasAddBiasAddHdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/Squeeze:output:0Edecoder/decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0??
+decoder/decoder_conv_transpose_layer_0/ReluRelu7decoder/decoder_conv_transpose_layer_0/BiasAdd:output:0*
T0*,
_output_shapes
:?????????0??
decoder/decoder_ln_0/ShapeShape9decoder/decoder_conv_transpose_layer_0/Relu:activations:0*
T0*
_output_shapes
:r
(decoder/decoder_ln_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*decoder/decoder_ln_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*decoder/decoder_ln_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"decoder/decoder_ln_0/strided_sliceStridedSlice#decoder/decoder_ln_0/Shape:output:01decoder/decoder_ln_0/strided_slice/stack:output:03decoder/decoder_ln_0/strided_slice/stack_1:output:03decoder/decoder_ln_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
decoder/decoder_ln_0/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder/decoder_ln_0/mulMul#decoder/decoder_ln_0/mul/x:output:0+decoder/decoder_ln_0/strided_slice:output:0*
T0*
_output_shapes
: t
*decoder/decoder_ln_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$decoder/decoder_ln_0/strided_slice_1StridedSlice#decoder/decoder_ln_0/Shape:output:03decoder/decoder_ln_0/strided_slice_1/stack:output:05decoder/decoder_ln_0/strided_slice_1/stack_1:output:05decoder/decoder_ln_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
decoder/decoder_ln_0/mul_1Muldecoder/decoder_ln_0/mul:z:0-decoder/decoder_ln_0/strided_slice_1:output:0*
T0*
_output_shapes
: t
*decoder/decoder_ln_0/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_0/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_0/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$decoder/decoder_ln_0/strided_slice_2StridedSlice#decoder/decoder_ln_0/Shape:output:03decoder/decoder_ln_0/strided_slice_2/stack:output:05decoder/decoder_ln_0/strided_slice_2/stack_1:output:05decoder/decoder_ln_0/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
decoder/decoder_ln_0/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder/decoder_ln_0/mul_2Mul%decoder/decoder_ln_0/mul_2/x:output:0-decoder/decoder_ln_0/strided_slice_2:output:0*
T0*
_output_shapes
: f
$decoder/decoder_ln_0/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :f
$decoder/decoder_ln_0/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
"decoder/decoder_ln_0/Reshape/shapePack-decoder/decoder_ln_0/Reshape/shape/0:output:0decoder/decoder_ln_0/mul_1:z:0decoder/decoder_ln_0/mul_2:z:0-decoder/decoder_ln_0/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
decoder/decoder_ln_0/ReshapeReshape9decoder/decoder_conv_transpose_layer_0/Relu:activations:0+decoder/decoder_ln_0/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????v
 decoder/decoder_ln_0/ones/packedPackdecoder/decoder_ln_0/mul_1:z:0*
N*
T0*
_output_shapes
:d
decoder/decoder_ln_0/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
decoder/decoder_ln_0/onesFill)decoder/decoder_ln_0/ones/packed:output:0(decoder/decoder_ln_0/ones/Const:output:0*
T0*#
_output_shapes
:?????????w
!decoder/decoder_ln_0/zeros/packedPackdecoder/decoder_ln_0/mul_1:z:0*
N*
T0*
_output_shapes
:e
 decoder/decoder_ln_0/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
decoder/decoder_ln_0/zerosFill*decoder/decoder_ln_0/zeros/packed:output:0)decoder/decoder_ln_0/zeros/Const:output:0*
T0*#
_output_shapes
:?????????]
decoder/decoder_ln_0/ConstConst*
_output_shapes
: *
dtype0*
valueB _
decoder/decoder_ln_0/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
%decoder/decoder_ln_0/FusedBatchNormV3FusedBatchNormV3%decoder/decoder_ln_0/Reshape:output:0"decoder/decoder_ln_0/ones:output:0#decoder/decoder_ln_0/zeros:output:0#decoder/decoder_ln_0/Const:output:0%decoder/decoder_ln_0/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
decoder/decoder_ln_0/Reshape_1Reshape)decoder/decoder_ln_0/FusedBatchNormV3:y:0#decoder/decoder_ln_0/Shape:output:0*
T0*,
_output_shapes
:?????????0??
)decoder/decoder_ln_0/mul_3/ReadVariableOpReadVariableOp2decoder_decoder_ln_0_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder/decoder_ln_0/mul_3Mul'decoder/decoder_ln_0/Reshape_1:output:01decoder/decoder_ln_0/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0??
'decoder/decoder_ln_0/add/ReadVariableOpReadVariableOp0decoder_decoder_ln_0_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder/decoder_ln_0/addAddV2decoder/decoder_ln_0/mul_3:z:0/decoder/decoder_ln_0/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????0?x
,decoder/decoder_conv_transpose_layer_1/ShapeShapedecoder/decoder_ln_0/add:z:0*
T0*
_output_shapes
:?
:decoder/decoder_conv_transpose_layer_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<decoder/decoder_conv_transpose_layer_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<decoder/decoder_conv_transpose_layer_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4decoder/decoder_conv_transpose_layer_1/strided_sliceStridedSlice5decoder/decoder_conv_transpose_layer_1/Shape:output:0Cdecoder/decoder_conv_transpose_layer_1/strided_slice/stack:output:0Edecoder/decoder_conv_transpose_layer_1/strided_slice/stack_1:output:0Edecoder/decoder_conv_transpose_layer_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
<decoder/decoder_conv_transpose_layer_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
>decoder/decoder_conv_transpose_layer_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>decoder/decoder_conv_transpose_layer_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6decoder/decoder_conv_transpose_layer_1/strided_slice_1StridedSlice5decoder/decoder_conv_transpose_layer_1/Shape:output:0Edecoder/decoder_conv_transpose_layer_1/strided_slice_1/stack:output:0Gdecoder/decoder_conv_transpose_layer_1/strided_slice_1/stack_1:output:0Gdecoder/decoder_conv_transpose_layer_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,decoder/decoder_conv_transpose_layer_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
*decoder/decoder_conv_transpose_layer_1/mulMul?decoder/decoder_conv_transpose_layer_1/strided_slice_1:output:05decoder/decoder_conv_transpose_layer_1/mul/y:output:0*
T0*
_output_shapes
: q
.decoder/decoder_conv_transpose_layer_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :??
,decoder/decoder_conv_transpose_layer_1/stackPack=decoder/decoder_conv_transpose_layer_1/strided_slice:output:0.decoder/decoder_conv_transpose_layer_1/mul:z:07decoder/decoder_conv_transpose_layer_1/stack/2:output:0*
N*
T0*
_output_shapes
:?
Fdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Bdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims
ExpandDimsdecoder/decoder_ln_0/add:z:0Odecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????0??
Sdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp\decoder_decoder_conv_transpose_layer_1_conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0?
Hdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Ddecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1
ExpandDims[decoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Qdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Kdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Mdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Mdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Edecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_sliceStridedSlice5decoder/decoder_conv_transpose_layer_1/stack:output:0Tdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack:output:0Vdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack_1:output:0Vdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Mdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Odecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Odecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Gdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1StridedSlice5decoder/decoder_conv_transpose_layer_1/stack:output:0Vdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack:output:0Xdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack_1:output:0Xdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
Gdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:?
Cdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>decoder/decoder_conv_transpose_layer_1/conv1d_transpose/concatConcatV2Ndecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice:output:0Pdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/concat/values_1:output:0Pdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/strided_slice_1:output:0Ldecoder/decoder_conv_transpose_layer_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
7decoder/decoder_conv_transpose_layer_1/conv1d_transposeConv2DBackpropInputGdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/concat:output:0Mdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1:output:0Kdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
?decoder/decoder_conv_transpose_layer_1/conv1d_transpose/SqueezeSqueeze@decoder/decoder_conv_transpose_layer_1/conv1d_transpose:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims
?
=decoder/decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOpReadVariableOpFdecoder_decoder_conv_transpose_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.decoder/decoder_conv_transpose_layer_1/BiasAddBiasAddHdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/Squeeze:output:0Edecoder/decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
+decoder/decoder_conv_transpose_layer_1/ReluRelu7decoder/decoder_conv_transpose_layer_1/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
decoder/decoder_ln_1/ShapeShape9decoder/decoder_conv_transpose_layer_1/Relu:activations:0*
T0*
_output_shapes
:r
(decoder/decoder_ln_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*decoder/decoder_ln_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*decoder/decoder_ln_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"decoder/decoder_ln_1/strided_sliceStridedSlice#decoder/decoder_ln_1/Shape:output:01decoder/decoder_ln_1/strided_slice/stack:output:03decoder/decoder_ln_1/strided_slice/stack_1:output:03decoder/decoder_ln_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
decoder/decoder_ln_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder/decoder_ln_1/mulMul#decoder/decoder_ln_1/mul/x:output:0+decoder/decoder_ln_1/strided_slice:output:0*
T0*
_output_shapes
: t
*decoder/decoder_ln_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$decoder/decoder_ln_1/strided_slice_1StridedSlice#decoder/decoder_ln_1/Shape:output:03decoder/decoder_ln_1/strided_slice_1/stack:output:05decoder/decoder_ln_1/strided_slice_1/stack_1:output:05decoder/decoder_ln_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
decoder/decoder_ln_1/mul_1Muldecoder/decoder_ln_1/mul:z:0-decoder/decoder_ln_1/strided_slice_1:output:0*
T0*
_output_shapes
: t
*decoder/decoder_ln_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$decoder/decoder_ln_1/strided_slice_2StridedSlice#decoder/decoder_ln_1/Shape:output:03decoder/decoder_ln_1/strided_slice_2/stack:output:05decoder/decoder_ln_1/strided_slice_2/stack_1:output:05decoder/decoder_ln_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
decoder/decoder_ln_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder/decoder_ln_1/mul_2Mul%decoder/decoder_ln_1/mul_2/x:output:0-decoder/decoder_ln_1/strided_slice_2:output:0*
T0*
_output_shapes
: f
$decoder/decoder_ln_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :f
$decoder/decoder_ln_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
"decoder/decoder_ln_1/Reshape/shapePack-decoder/decoder_ln_1/Reshape/shape/0:output:0decoder/decoder_ln_1/mul_1:z:0decoder/decoder_ln_1/mul_2:z:0-decoder/decoder_ln_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
decoder/decoder_ln_1/ReshapeReshape9decoder/decoder_conv_transpose_layer_1/Relu:activations:0+decoder/decoder_ln_1/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????v
 decoder/decoder_ln_1/ones/packedPackdecoder/decoder_ln_1/mul_1:z:0*
N*
T0*
_output_shapes
:d
decoder/decoder_ln_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
decoder/decoder_ln_1/onesFill)decoder/decoder_ln_1/ones/packed:output:0(decoder/decoder_ln_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????w
!decoder/decoder_ln_1/zeros/packedPackdecoder/decoder_ln_1/mul_1:z:0*
N*
T0*
_output_shapes
:e
 decoder/decoder_ln_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
decoder/decoder_ln_1/zerosFill*decoder/decoder_ln_1/zeros/packed:output:0)decoder/decoder_ln_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????]
decoder/decoder_ln_1/ConstConst*
_output_shapes
: *
dtype0*
valueB _
decoder/decoder_ln_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
%decoder/decoder_ln_1/FusedBatchNormV3FusedBatchNormV3%decoder/decoder_ln_1/Reshape:output:0"decoder/decoder_ln_1/ones:output:0#decoder/decoder_ln_1/zeros:output:0#decoder/decoder_ln_1/Const:output:0%decoder/decoder_ln_1/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
decoder/decoder_ln_1/Reshape_1Reshape)decoder/decoder_ln_1/FusedBatchNormV3:y:0#decoder/decoder_ln_1/Shape:output:0*
T0*-
_output_shapes
:????????????
)decoder/decoder_ln_1/mul_3/ReadVariableOpReadVariableOp2decoder_decoder_ln_1_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder/decoder_ln_1/mul_3Mul'decoder/decoder_ln_1/Reshape_1:output:01decoder/decoder_ln_1/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
'decoder/decoder_ln_1/add/ReadVariableOpReadVariableOp0decoder_decoder_ln_1_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder/decoder_ln_1/addAddV2decoder/decoder_ln_1/mul_3:z:0/decoder/decoder_ln_1/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????x
,decoder/decoder_conv_transpose_layer_2/ShapeShapedecoder/decoder_ln_1/add:z:0*
T0*
_output_shapes
:?
:decoder/decoder_conv_transpose_layer_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<decoder/decoder_conv_transpose_layer_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<decoder/decoder_conv_transpose_layer_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4decoder/decoder_conv_transpose_layer_2/strided_sliceStridedSlice5decoder/decoder_conv_transpose_layer_2/Shape:output:0Cdecoder/decoder_conv_transpose_layer_2/strided_slice/stack:output:0Edecoder/decoder_conv_transpose_layer_2/strided_slice/stack_1:output:0Edecoder/decoder_conv_transpose_layer_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
<decoder/decoder_conv_transpose_layer_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
>decoder/decoder_conv_transpose_layer_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>decoder/decoder_conv_transpose_layer_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6decoder/decoder_conv_transpose_layer_2/strided_slice_1StridedSlice5decoder/decoder_conv_transpose_layer_2/Shape:output:0Edecoder/decoder_conv_transpose_layer_2/strided_slice_1/stack:output:0Gdecoder/decoder_conv_transpose_layer_2/strided_slice_1/stack_1:output:0Gdecoder/decoder_conv_transpose_layer_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,decoder/decoder_conv_transpose_layer_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
*decoder/decoder_conv_transpose_layer_2/mulMul?decoder/decoder_conv_transpose_layer_2/strided_slice_1:output:05decoder/decoder_conv_transpose_layer_2/mul/y:output:0*
T0*
_output_shapes
: q
.decoder/decoder_conv_transpose_layer_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :??
,decoder/decoder_conv_transpose_layer_2/stackPack=decoder/decoder_conv_transpose_layer_2/strided_slice:output:0.decoder/decoder_conv_transpose_layer_2/mul:z:07decoder/decoder_conv_transpose_layer_2/stack/2:output:0*
N*
T0*
_output_shapes
:?
Fdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Bdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims
ExpandDimsdecoder/decoder_ln_1/add:z:0Odecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
Sdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp\decoder_decoder_conv_transpose_layer_2_conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0?
Hdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Ddecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1
ExpandDims[decoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Qdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Kdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Mdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Mdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Edecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_sliceStridedSlice5decoder/decoder_conv_transpose_layer_2/stack:output:0Tdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack:output:0Vdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack_1:output:0Vdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Mdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Odecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Odecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Gdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1StridedSlice5decoder/decoder_conv_transpose_layer_2/stack:output:0Vdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack:output:0Xdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack_1:output:0Xdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
Gdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:?
Cdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>decoder/decoder_conv_transpose_layer_2/conv1d_transpose/concatConcatV2Ndecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice:output:0Pdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/concat/values_1:output:0Pdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/strided_slice_1:output:0Ldecoder/decoder_conv_transpose_layer_2/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
7decoder/decoder_conv_transpose_layer_2/conv1d_transposeConv2DBackpropInputGdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/concat:output:0Mdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1:output:0Kdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims:output:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
?decoder/decoder_conv_transpose_layer_2/conv1d_transpose/SqueezeSqueeze@decoder/decoder_conv_transpose_layer_2/conv1d_transpose:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims
?
=decoder/decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOpReadVariableOpFdecoder_decoder_conv_transpose_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.decoder/decoder_conv_transpose_layer_2/BiasAddBiasAddHdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/Squeeze:output:0Edecoder/decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
+decoder/decoder_conv_transpose_layer_2/ReluRelu7decoder/decoder_conv_transpose_layer_2/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
decoder/decoder_ln_2/ShapeShape9decoder/decoder_conv_transpose_layer_2/Relu:activations:0*
T0*
_output_shapes
:r
(decoder/decoder_ln_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*decoder/decoder_ln_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*decoder/decoder_ln_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"decoder/decoder_ln_2/strided_sliceStridedSlice#decoder/decoder_ln_2/Shape:output:01decoder/decoder_ln_2/strided_slice/stack:output:03decoder/decoder_ln_2/strided_slice/stack_1:output:03decoder/decoder_ln_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
decoder/decoder_ln_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder/decoder_ln_2/mulMul#decoder/decoder_ln_2/mul/x:output:0+decoder/decoder_ln_2/strided_slice:output:0*
T0*
_output_shapes
: t
*decoder/decoder_ln_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$decoder/decoder_ln_2/strided_slice_1StridedSlice#decoder/decoder_ln_2/Shape:output:03decoder/decoder_ln_2/strided_slice_1/stack:output:05decoder/decoder_ln_2/strided_slice_1/stack_1:output:05decoder/decoder_ln_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
decoder/decoder_ln_2/mul_1Muldecoder/decoder_ln_2/mul:z:0-decoder/decoder_ln_2/strided_slice_1:output:0*
T0*
_output_shapes
: t
*decoder/decoder_ln_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,decoder/decoder_ln_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$decoder/decoder_ln_2/strided_slice_2StridedSlice#decoder/decoder_ln_2/Shape:output:03decoder/decoder_ln_2/strided_slice_2/stack:output:05decoder/decoder_ln_2/strided_slice_2/stack_1:output:05decoder/decoder_ln_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
decoder/decoder_ln_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
decoder/decoder_ln_2/mul_2Mul%decoder/decoder_ln_2/mul_2/x:output:0-decoder/decoder_ln_2/strided_slice_2:output:0*
T0*
_output_shapes
: f
$decoder/decoder_ln_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :f
$decoder/decoder_ln_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
"decoder/decoder_ln_2/Reshape/shapePack-decoder/decoder_ln_2/Reshape/shape/0:output:0decoder/decoder_ln_2/mul_1:z:0decoder/decoder_ln_2/mul_2:z:0-decoder/decoder_ln_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
decoder/decoder_ln_2/ReshapeReshape9decoder/decoder_conv_transpose_layer_2/Relu:activations:0+decoder/decoder_ln_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????v
 decoder/decoder_ln_2/ones/packedPackdecoder/decoder_ln_2/mul_1:z:0*
N*
T0*
_output_shapes
:d
decoder/decoder_ln_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
decoder/decoder_ln_2/onesFill)decoder/decoder_ln_2/ones/packed:output:0(decoder/decoder_ln_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????w
!decoder/decoder_ln_2/zeros/packedPackdecoder/decoder_ln_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 decoder/decoder_ln_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
decoder/decoder_ln_2/zerosFill*decoder/decoder_ln_2/zeros/packed:output:0)decoder/decoder_ln_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????]
decoder/decoder_ln_2/ConstConst*
_output_shapes
: *
dtype0*
valueB _
decoder/decoder_ln_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
%decoder/decoder_ln_2/FusedBatchNormV3FusedBatchNormV3%decoder/decoder_ln_2/Reshape:output:0"decoder/decoder_ln_2/ones:output:0#decoder/decoder_ln_2/zeros:output:0#decoder/decoder_ln_2/Const:output:0%decoder/decoder_ln_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
decoder/decoder_ln_2/Reshape_1Reshape)decoder/decoder_ln_2/FusedBatchNormV3:y:0#decoder/decoder_ln_2/Shape:output:0*
T0*-
_output_shapes
:????????????
)decoder/decoder_ln_2/mul_3/ReadVariableOpReadVariableOp2decoder_decoder_ln_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder/decoder_ln_2/mul_3Mul'decoder/decoder_ln_2/Reshape_1:output:01decoder/decoder_ln_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
'decoder/decoder_ln_2/add/ReadVariableOpReadVariableOp0decoder_decoder_ln_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
decoder/decoder_ln_2/addAddV2decoder/decoder_ln_2/mul_3:z:0/decoder/decoder_ln_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????x
,decoder/decoder_conv_transpose_layer_4/ShapeShapedecoder/decoder_ln_2/add:z:0*
T0*
_output_shapes
:?
:decoder/decoder_conv_transpose_layer_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<decoder/decoder_conv_transpose_layer_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<decoder/decoder_conv_transpose_layer_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4decoder/decoder_conv_transpose_layer_4/strided_sliceStridedSlice5decoder/decoder_conv_transpose_layer_4/Shape:output:0Cdecoder/decoder_conv_transpose_layer_4/strided_slice/stack:output:0Edecoder/decoder_conv_transpose_layer_4/strided_slice/stack_1:output:0Edecoder/decoder_conv_transpose_layer_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
<decoder/decoder_conv_transpose_layer_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
>decoder/decoder_conv_transpose_layer_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>decoder/decoder_conv_transpose_layer_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6decoder/decoder_conv_transpose_layer_4/strided_slice_1StridedSlice5decoder/decoder_conv_transpose_layer_4/Shape:output:0Edecoder/decoder_conv_transpose_layer_4/strided_slice_1/stack:output:0Gdecoder/decoder_conv_transpose_layer_4/strided_slice_1/stack_1:output:0Gdecoder/decoder_conv_transpose_layer_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,decoder/decoder_conv_transpose_layer_4/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
*decoder/decoder_conv_transpose_layer_4/mulMul?decoder/decoder_conv_transpose_layer_4/strided_slice_1:output:05decoder/decoder_conv_transpose_layer_4/mul/y:output:0*
T0*
_output_shapes
: q
.decoder/decoder_conv_transpose_layer_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :??
,decoder/decoder_conv_transpose_layer_4/stackPack=decoder/decoder_conv_transpose_layer_4/strided_slice:output:0.decoder/decoder_conv_transpose_layer_4/mul:z:07decoder/decoder_conv_transpose_layer_4/stack/2:output:0*
N*
T0*
_output_shapes
:?
Fdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Bdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims
ExpandDimsdecoder/decoder_ln_2/add:z:0Odecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
Sdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp\decoder_decoder_conv_transpose_layer_4_conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0?
Hdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Ddecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1
ExpandDims[decoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Qdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Kdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Mdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Mdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Edecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_sliceStridedSlice5decoder/decoder_conv_transpose_layer_4/stack:output:0Tdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack:output:0Vdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack_1:output:0Vdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Mdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Odecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Odecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Gdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1StridedSlice5decoder/decoder_conv_transpose_layer_4/stack:output:0Vdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack:output:0Xdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack_1:output:0Xdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
Gdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:?
Cdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>decoder/decoder_conv_transpose_layer_4/conv1d_transpose/concatConcatV2Ndecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice:output:0Pdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/concat/values_1:output:0Pdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/strided_slice_1:output:0Ldecoder/decoder_conv_transpose_layer_4/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
7decoder/decoder_conv_transpose_layer_4/conv1d_transposeConv2DBackpropInputGdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/concat:output:0Mdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1:output:0Kdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims:output:0*
T0*1
_output_shapes
:??????????
?*
paddingSAME*
strides
?
?decoder/decoder_conv_transpose_layer_4/conv1d_transpose/SqueezeSqueeze@decoder/decoder_conv_transpose_layer_4/conv1d_transpose:output:0*
T0*-
_output_shapes
:??????????
?*
squeeze_dims
?
=decoder/decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOpReadVariableOpFdecoder_decoder_conv_transpose_layer_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.decoder/decoder_conv_transpose_layer_4/BiasAddBiasAddHdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/Squeeze:output:0Edecoder/decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:??????????
?~
subSubx7decoder/decoder_conv_transpose_layer_4/BiasAdd:output:0*
T0*-
_output_shapes
:??????????
?Q
SquareSquaresub:z:0*
T0*-
_output_shapes
:??????????
?g
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      g
MeanMean
Square:y:0Mean/reduction_indices:output:0*
T0*#
_output_shapes
:?????????J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FW
mulMulmul/x:output:0Mean:output:0*
T0*#
_output_shapes
:?????????J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??v
addAddV2add/x:output:0%encoder/log_variance/BiasAdd:output:0*
T0*(
_output_shapes
:??????????b
Square_1Squareencoder/mu/BiasAdd:output:0*
T0*(
_output_shapes
:??????????V
sub_1Subadd:z:0Square_1:y:0*
T0*(
_output_shapes
:??????????d
ExpExp%encoder/log_variance/BiasAdd:output:0*
T0*(
_output_shapes
:??????????S
sub_2Sub	sub_1:z:0Exp:y:0*
T0*(
_output_shapes
:??????????W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :c
SumSum	sub_2:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Z
mul_1Mulmul_1/x:output:0Sum:output:0*
T0*#
_output_shapes
:?????????P
add_1AddV2mul:z:0	mul_1:z:0*
T0*#
_output_shapes
:?????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F]
truedivRealDivmul:z:0truediv/y:output:0*
T0*#
_output_shapes
:?????????O
ConstConst*
_output_shapes
:*
dtype0*
valueB: J
Sum_1Sumtruediv:z:0Const:output:0*
T0*
_output_shapes
: {
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum_1:output:0*
_output_shapes
 *
dtype0:
SizeSizetruediv:z:0*
T0*
_output_shapes
: K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0?
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0?
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: J
Sum_2Sum	mul_1:z:0Const_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_2AssignAddVariableOpassignaddvariableop_2_resourceSum_2:output:0*
_output_shapes
 *
dtype0:
Size_1Size	mul_1:z:0*
T0*
_output_shapes
: O
Cast_1CastSize_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
AssignAddVariableOp_3AssignAddVariableOpassignaddvariableop_3_resource
Cast_1:y:0^AssignAddVariableOp_2*
_output_shapes
 *
dtype0?
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_2_resource^AssignAddVariableOp_2^AssignAddVariableOp_3*
_output_shapes
: *
dtype0?
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_3_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype0?
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_1Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: ?
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3>^decoder/decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOpT^decoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOp>^decoder/decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOpT^decoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOp>^decoder/decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOpT^decoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOp>^decoder/decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOpT^decoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOp-^decoder/decoder_dense/BiasAdd/ReadVariableOp,^decoder/decoder_dense/MatMul/ReadVariableOp(^decoder/decoder_ln_0/add/ReadVariableOp*^decoder/decoder_ln_0/mul_3/ReadVariableOp(^decoder/decoder_ln_1/add/ReadVariableOp*^decoder/decoder_ln_1/mul_3/ReadVariableOp(^decoder/decoder_ln_2/add/ReadVariableOp*^decoder/decoder_ln_2/mul_3/ReadVariableOp^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_14^encoder/encoder_conv_layer_0/BiasAdd/ReadVariableOp@^encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp4^encoder/encoder_conv_layer_1/BiasAdd/ReadVariableOp@^encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp4^encoder/encoder_conv_layer_2/BiasAdd/ReadVariableOp@^encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp4^encoder/encoder_conv_layer_3/BiasAdd/ReadVariableOp@^encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp(^encoder/encoder_ln_0/add/ReadVariableOp*^encoder/encoder_ln_0/mul_3/ReadVariableOp(^encoder/encoder_ln_1/add/ReadVariableOp*^encoder/encoder_ln_1/mul_3/ReadVariableOp(^encoder/encoder_ln_2/add/ReadVariableOp*^encoder/encoder_ln_2/mul_3/ReadVariableOp(^encoder/encoder_ln_3/add/ReadVariableOp*^encoder/encoder_ln_3/mul_3/ReadVariableOp,^encoder/log_variance/BiasAdd/ReadVariableOp+^encoder/log_variance/MatMul/ReadVariableOp"^encoder/mu/BiasAdd/ReadVariableOp!^encoder/mu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 a

Identity_2Identityencoder/add:z:0^NoOp*
T0*(
_output_shapes
:???????????

Identity_3Identity7decoder/decoder_conv_transpose_layer_4/BiasAdd:output:0^NoOp*
T0*-
_output_shapes
:??????????
?V

Identity_4Identity	add_1:z:0^NoOp*
T0*#
_output_shapes
:?????????"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:??????????
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32~
=decoder/decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOp=decoder/decoder_conv_transpose_layer_0/BiasAdd/ReadVariableOp2?
Sdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOpSdecoder/decoder_conv_transpose_layer_0/conv1d_transpose/ExpandDims_1/ReadVariableOp2~
=decoder/decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOp=decoder/decoder_conv_transpose_layer_1/BiasAdd/ReadVariableOp2?
Sdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOpSdecoder/decoder_conv_transpose_layer_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2~
=decoder/decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOp=decoder/decoder_conv_transpose_layer_2/BiasAdd/ReadVariableOp2?
Sdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOpSdecoder/decoder_conv_transpose_layer_2/conv1d_transpose/ExpandDims_1/ReadVariableOp2~
=decoder/decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOp=decoder/decoder_conv_transpose_layer_4/BiasAdd/ReadVariableOp2?
Sdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOpSdecoder/decoder_conv_transpose_layer_4/conv1d_transpose/ExpandDims_1/ReadVariableOp2\
,decoder/decoder_dense/BiasAdd/ReadVariableOp,decoder/decoder_dense/BiasAdd/ReadVariableOp2Z
+decoder/decoder_dense/MatMul/ReadVariableOp+decoder/decoder_dense/MatMul/ReadVariableOp2R
'decoder/decoder_ln_0/add/ReadVariableOp'decoder/decoder_ln_0/add/ReadVariableOp2V
)decoder/decoder_ln_0/mul_3/ReadVariableOp)decoder/decoder_ln_0/mul_3/ReadVariableOp2R
'decoder/decoder_ln_1/add/ReadVariableOp'decoder/decoder_ln_1/add/ReadVariableOp2V
)decoder/decoder_ln_1/mul_3/ReadVariableOp)decoder/decoder_ln_1/mul_3/ReadVariableOp2R
'decoder/decoder_ln_2/add/ReadVariableOp'decoder/decoder_ln_2/add/ReadVariableOp2V
)decoder/decoder_ln_2/mul_3/ReadVariableOp)decoder/decoder_ln_2/mul_3/ReadVariableOp26
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_12j
3encoder/encoder_conv_layer_0/BiasAdd/ReadVariableOp3encoder/encoder_conv_layer_0/BiasAdd/ReadVariableOp2?
?encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp?encoder/encoder_conv_layer_0/Conv1D/ExpandDims_1/ReadVariableOp2j
3encoder/encoder_conv_layer_1/BiasAdd/ReadVariableOp3encoder/encoder_conv_layer_1/BiasAdd/ReadVariableOp2?
?encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp?encoder/encoder_conv_layer_1/Conv1D/ExpandDims_1/ReadVariableOp2j
3encoder/encoder_conv_layer_2/BiasAdd/ReadVariableOp3encoder/encoder_conv_layer_2/BiasAdd/ReadVariableOp2?
?encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp?encoder/encoder_conv_layer_2/Conv1D/ExpandDims_1/ReadVariableOp2j
3encoder/encoder_conv_layer_3/BiasAdd/ReadVariableOp3encoder/encoder_conv_layer_3/BiasAdd/ReadVariableOp2?
?encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp?encoder/encoder_conv_layer_3/Conv1D/ExpandDims_1/ReadVariableOp2R
'encoder/encoder_ln_0/add/ReadVariableOp'encoder/encoder_ln_0/add/ReadVariableOp2V
)encoder/encoder_ln_0/mul_3/ReadVariableOp)encoder/encoder_ln_0/mul_3/ReadVariableOp2R
'encoder/encoder_ln_1/add/ReadVariableOp'encoder/encoder_ln_1/add/ReadVariableOp2V
)encoder/encoder_ln_1/mul_3/ReadVariableOp)encoder/encoder_ln_1/mul_3/ReadVariableOp2R
'encoder/encoder_ln_2/add/ReadVariableOp'encoder/encoder_ln_2/add/ReadVariableOp2V
)encoder/encoder_ln_2/mul_3/ReadVariableOp)encoder/encoder_ln_2/mul_3/ReadVariableOp2R
'encoder/encoder_ln_3/add/ReadVariableOp'encoder/encoder_ln_3/add/ReadVariableOp2V
)encoder/encoder_ln_3/mul_3/ReadVariableOp)encoder/encoder_ln_3/mul_3/ReadVariableOp2Z
+encoder/log_variance/BiasAdd/ReadVariableOp+encoder/log_variance/BiasAdd/ReadVariableOp2X
*encoder/log_variance/MatMul/ReadVariableOp*encoder/log_variance/MatMul/ReadVariableOp2F
!encoder/mu/BiasAdd/ReadVariableOp!encoder/mu/BiasAdd/ReadVariableOp2D
 encoder/mu/MatMul/ReadVariableOp encoder/mu/MatMul/ReadVariableOp:P L
-
_output_shapes
:??????????
?

_user_specified_namex
?	
?
G__inference_decoder_dense_layer_call_and_return_conditional_losses_3373

inputs3
matmul_readvariableop_resource:???/
biasadd_readvariableop_resource:
??
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0k
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????t
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:??*
dtype0x
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 a
IdentityIdentityBiasAdd:output:0^NoOp*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_decoder_layer_call_fn_4061
input_1
unknown:???
	unknown_0:
??!
	unknown_1:??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?!
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?!
	unknown_9:??

unknown_10:	?

unknown_11:	?

unknown_12:	?"

unknown_13:??

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:??????????
?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_4019`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:??????????
?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?+
?
Z__inference_decoder_conv_transpose_layer_0_layer_call_and_return_conditional_losses_399963

inputsM
5conv1d_transpose_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: J
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:??n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
args_05
serving_default_args_0:0??????????
?=
output_11
StatefulPartitionedCall:0??????????B
output_26
StatefulPartitionedCall:1??????????
?tensorflow/serving/predict:??
?
	inp_shape
_reduce_axis
encoder
decoder
	optimizer
loss

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_model
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
conv_filters
conv_kernels
conv_strides
	convs

layernorms
flatten
dense_mu
dense_logvar
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_model
?
conv_filters
 conv_kernels
!conv_strides
	"dense
#reshape
	$convs
%
layernorms
&output_conv
#'_self_saveable_object_factories
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_model
?
.iter

/beta_1

0beta_2
	1decay
2learning_rate4m?5m?6m?7m?8m?9m?:m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?Pm?Qm?Rm?Sm?Tm?Um?Vm?Wm?4v?5v?6v?7v?8v?9v?:v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?Pv?Qv?Rv?Sv?Tv?Uv?Vv?Wv?"
	optimizer
 "
trackable_dict_wrapper
,
3serving_default"
signature_map
 "
trackable_dict_wrapper
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19
H20
I21
J22
K23
L24
M25
N26
O27
P28
Q29
R30
S31
T32
U33
V34
W35"
trackable_list_wrapper
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19
H20
I21
J22
K23
L24
M25
N26
O27
P28
Q29
R30
S31
T32
U33
V34
W35"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
"__inference_vae_layer_call_fn_4495
"__inference_vae_layer_call_fn_4543?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
=__inference_vae_layer_call_and_return_conditional_losses_2384
=__inference_vae_layer_call_and_return_conditional_losses_4333?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
!__inference__wrapped_model_399726args_0"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
]0
^1
_2
`3"
trackable_list_wrapper
<
a0
b1
c2
d3"
trackable_list_wrapper
?
#e_self_saveable_object_factories
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Dkernel
Ebias
#l_self_saveable_object_factories
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Fkernel
Gbias
#s_self_saveable_object_factories
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19"
trackable_list_wrapper
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_encoder_layer_call_fn_4572
&__inference_encoder_layer_call_fn_4362?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_encoder_layer_call_and_return_conditional_losses_3034
A__inference_encoder_layer_call_and_return_conditional_losses_4620?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Hkernel
Ibias
#_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
8
?0
?1
?2"
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
?

Vkernel
Wbias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
?
H0
I1
J2
K3
L4
M5
N6
O7
P8
Q9
R10
S11
T12
U13
V14
W15"
trackable_list_wrapper
?
H0
I1
J2
K3
L4
M5
N6
O7
P8
Q9
R10
S11
T12
U13
V14
W15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_decoder_layer_call_fn_4061
&__inference_decoder_layer_call_fn_4040?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_decoder_layer_call_and_return_conditional_losses_1720
A__inference_decoder_layer_call_and_return_conditional_losses_4090?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
$__inference_signature_wrapper_399821args_0"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
3:1??2encoder_conv_layer_0/kernel
(:&?2encoder_conv_layer_0/bias
3:1??2encoder_conv_layer_1/kernel
(:&?2encoder_conv_layer_1/bias
3:1??2encoder_conv_layer_2/kernel
(:&?2encoder_conv_layer_2/bias
3:1??2encoder_conv_layer_3/kernel
(:&?2encoder_conv_layer_3/bias
!:?2encoder_ln_0/gamma
 :?2encoder_ln_0/beta
!:?2encoder_ln_1/gamma
 :?2encoder_ln_1/beta
!:?2encoder_ln_2/gamma
 :?2encoder_ln_2/beta
!:?2encoder_ln_3/gamma
 :?2encoder_ln_3/beta
*:(???2vae/encoder/mu/kernel
": ?2vae/encoder/mu/bias
4:2???2vae/encoder/log_variance/kernel
,:*?2vae/encoder/log_variance/bias
5:3???2 vae/decoder/decoder_dense/kernel
.:,??2vae/decoder/decoder_dense/bias
I:G??21vae/decoder/decoder_conv_transpose_layer_0/kernel
>:<?2/vae/decoder/decoder_conv_transpose_layer_0/bias
I:G??21vae/decoder/decoder_conv_transpose_layer_1/kernel
>:<?2/vae/decoder/decoder_conv_transpose_layer_1/bias
I:G??21vae/decoder/decoder_conv_transpose_layer_2/kernel
>:<?2/vae/decoder/decoder_conv_transpose_layer_2/bias
-:+?2vae/decoder/decoder_ln_0/gamma
,:*?2vae/decoder/decoder_ln_0/beta
-:+?2vae/decoder/decoder_ln_1/gamma
,:*?2vae/decoder/decoder_ln_1/beta
-:+?2vae/decoder/decoder_ln_2/gamma
,:*?2vae/decoder/decoder_ln_2/beta
I:G??21vae/decoder/decoder_conv_transpose_layer_4/kernel
>:<?2/vae/decoder/decoder_conv_transpose_layer_4/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?
recon_loss
?kl_loss"
trackable_dict_wrapper
?

4kernel
5bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

6kernel
7bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

8kernel
9bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	<gamma
=beta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	>gamma
?beta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	@gamma
Abeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	Bgamma
Cbeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
n
]0
^1
_2
`3
a4
b5
c6
d7
8
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?

Jkernel
Kbias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Lkernel
Mbias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Nkernel
Obias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	Pgamma
Qbeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	Rgamma
Sbeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	Tgamma
Ubeta
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
?__inference_decoder_conv_transpose_layer_4_layer_call_fn_399880?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Z__inference_decoder_conv_transpose_layer_4_layer_call_and_return_conditional_losses_399919?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
e
"0
#1
?2
?3
?4
?5
?6
?7
&8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
x

?total

?count
$?_self_saveable_object_factories
?	variables
?	keras_api"
_tf_keras_metric
x

?total

?count
$?_self_saveable_object_factories
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
?__inference_decoder_conv_transpose_layer_0_layer_call_fn_399979?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Z__inference_decoder_conv_transpose_layer_0_layer_call_and_return_conditional_losses_400019?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
?__inference_decoder_conv_transpose_layer_1_layer_call_fn_400079?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Z__inference_decoder_conv_transpose_layer_1_layer_call_and_return_conditional_losses_400119?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
?__inference_decoder_conv_transpose_layer_2_layer_call_fn_400179?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Z__inference_decoder_conv_transpose_layer_2_layer_call_and_return_conditional_losses_400219?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2	vae/total
:  (2	vae/count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2	vae/total
:  (2	vae/count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
8:6??2"Adam/encoder_conv_layer_0/kernel/m
-:+?2 Adam/encoder_conv_layer_0/bias/m
8:6??2"Adam/encoder_conv_layer_1/kernel/m
-:+?2 Adam/encoder_conv_layer_1/bias/m
8:6??2"Adam/encoder_conv_layer_2/kernel/m
-:+?2 Adam/encoder_conv_layer_2/bias/m
8:6??2"Adam/encoder_conv_layer_3/kernel/m
-:+?2 Adam/encoder_conv_layer_3/bias/m
&:$?2Adam/encoder_ln_0/gamma/m
%:#?2Adam/encoder_ln_0/beta/m
&:$?2Adam/encoder_ln_1/gamma/m
%:#?2Adam/encoder_ln_1/beta/m
&:$?2Adam/encoder_ln_2/gamma/m
%:#?2Adam/encoder_ln_2/beta/m
&:$?2Adam/encoder_ln_3/gamma/m
%:#?2Adam/encoder_ln_3/beta/m
/:-???2Adam/vae/encoder/mu/kernel/m
':%?2Adam/vae/encoder/mu/bias/m
9:7???2&Adam/vae/encoder/log_variance/kernel/m
1:/?2$Adam/vae/encoder/log_variance/bias/m
::8???2'Adam/vae/decoder/decoder_dense/kernel/m
3:1??2%Adam/vae/decoder/decoder_dense/bias/m
N:L??28Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/m
C:A?26Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/m
N:L??28Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/m
C:A?26Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/m
N:L??28Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/m
C:A?26Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/m
2:0?2%Adam/vae/decoder/decoder_ln_0/gamma/m
1:/?2$Adam/vae/decoder/decoder_ln_0/beta/m
2:0?2%Adam/vae/decoder/decoder_ln_1/gamma/m
1:/?2$Adam/vae/decoder/decoder_ln_1/beta/m
2:0?2%Adam/vae/decoder/decoder_ln_2/gamma/m
1:/?2$Adam/vae/decoder/decoder_ln_2/beta/m
N:L??28Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/m
C:A?26Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/m
8:6??2"Adam/encoder_conv_layer_0/kernel/v
-:+?2 Adam/encoder_conv_layer_0/bias/v
8:6??2"Adam/encoder_conv_layer_1/kernel/v
-:+?2 Adam/encoder_conv_layer_1/bias/v
8:6??2"Adam/encoder_conv_layer_2/kernel/v
-:+?2 Adam/encoder_conv_layer_2/bias/v
8:6??2"Adam/encoder_conv_layer_3/kernel/v
-:+?2 Adam/encoder_conv_layer_3/bias/v
&:$?2Adam/encoder_ln_0/gamma/v
%:#?2Adam/encoder_ln_0/beta/v
&:$?2Adam/encoder_ln_1/gamma/v
%:#?2Adam/encoder_ln_1/beta/v
&:$?2Adam/encoder_ln_2/gamma/v
%:#?2Adam/encoder_ln_2/beta/v
&:$?2Adam/encoder_ln_3/gamma/v
%:#?2Adam/encoder_ln_3/beta/v
/:-???2Adam/vae/encoder/mu/kernel/v
':%?2Adam/vae/encoder/mu/bias/v
9:7???2&Adam/vae/encoder/log_variance/kernel/v
1:/?2$Adam/vae/encoder/log_variance/bias/v
::8???2'Adam/vae/decoder/decoder_dense/kernel/v
3:1??2%Adam/vae/decoder/decoder_dense/bias/v
N:L??28Adam/vae/decoder/decoder_conv_transpose_layer_0/kernel/v
C:A?26Adam/vae/decoder/decoder_conv_transpose_layer_0/bias/v
N:L??28Adam/vae/decoder/decoder_conv_transpose_layer_1/kernel/v
C:A?26Adam/vae/decoder/decoder_conv_transpose_layer_1/bias/v
N:L??28Adam/vae/decoder/decoder_conv_transpose_layer_2/kernel/v
C:A?26Adam/vae/decoder/decoder_conv_transpose_layer_2/bias/v
2:0?2%Adam/vae/decoder/decoder_ln_0/gamma/v
1:/?2$Adam/vae/decoder/decoder_ln_0/beta/v
2:0?2%Adam/vae/decoder/decoder_ln_1/gamma/v
1:/?2$Adam/vae/decoder/decoder_ln_1/beta/v
2:0?2%Adam/vae/decoder/decoder_ln_2/gamma/v
1:/?2$Adam/vae/decoder/decoder_ln_2/beta/v
N:L??28Adam/vae/decoder/decoder_conv_transpose_layer_4/kernel/v
C:A?26Adam/vae/decoder/decoder_conv_transpose_layer_4/bias/v?
!__inference__wrapped_model_399726?,45<=67>?89@A:;BCDEFGHIJKPQLMRSNOTUVW????5?2
+?(
&?#
args_0??????????
?
? "j?g
/
output_1#? 
output_1??????????
4
output_2(?%
output_2??????????
??
Z__inference_decoder_conv_transpose_layer_0_layer_call_and_return_conditional_losses_400019xJK=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
?__inference_decoder_conv_transpose_layer_0_layer_call_fn_399979kJK=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
Z__inference_decoder_conv_transpose_layer_1_layer_call_and_return_conditional_losses_400119xLM=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
?__inference_decoder_conv_transpose_layer_1_layer_call_fn_400079kLM=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
Z__inference_decoder_conv_transpose_layer_2_layer_call_and_return_conditional_losses_400219xNO=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
?__inference_decoder_conv_transpose_layer_2_layer_call_fn_400179kNO=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
Z__inference_decoder_conv_transpose_layer_4_layer_call_and_return_conditional_losses_399919xVW=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
?__inference_decoder_conv_transpose_layer_4_layer_call_fn_399880kVW=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
A__inference_decoder_layer_call_and_return_conditional_losses_1720lHIJKPQLMRSNOTUVW+?(
!?
?
x??????????
? "+?(
!?
0??????????
?
? ?
A__inference_decoder_layer_call_and_return_conditional_losses_4090rHIJKPQLMRSNOTUVW1?.
'?$
"?
input_1??????????
? "+?(
!?
0??????????
?
? ?
&__inference_decoder_layer_call_fn_4040_HIJKPQLMRSNOTUVW+?(
!?
?
x??????????
? "???????????
??
&__inference_decoder_layer_call_fn_4061eHIJKPQLMRSNOTUVW1?.
'?$
"?
input_1??????????
? "???????????
??
A__inference_encoder_layer_call_and_return_conditional_losses_3034?45<=67>?89@A:;BCDEFG0?-
&?#
!?
x??????????
?
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
A__inference_encoder_layer_call_and_return_conditional_losses_4620?45<=67>?89@A:;BCDEFG6?3
,?)
'?$
input_1??????????
?
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
&__inference_encoder_layer_call_fn_4362?45<=67>?89@A:;BCDEFG0?-
&?#
!?
x??????????
?
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
&__inference_encoder_layer_call_fn_4572?45<=67>?89@A:;BCDEFG6?3
,?)
'?$
input_1??????????
?
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
$__inference_signature_wrapper_399821?,45<=67>?89@A:;BCDEFGHIJKPQLMRSNOTUVW??????<
? 
5?2
0
args_0&?#
args_0??????????
?"j?g
/
output_1#? 
output_1??????????
4
output_2(?%
output_2??????????
??
=__inference_vae_layer_call_and_return_conditional_losses_2384?,45<=67>?89@A:;BCDEFGHIJKPQLMRSNOTUVW????0?-
&?#
!?
x??????????
?
? "m?j
H?E
?
0/0??????????
#? 
0/1??????????
?
?
?
1/0??????????
=__inference_vae_layer_call_and_return_conditional_losses_4333?,45<=67>?89@A:;BCDEFGHIJKPQLMRSNOTUVW????6?3
,?)
'?$
input_1??????????
?
? "m?j
H?E
?
0/0??????????
#? 
0/1??????????
?
?
?
1/0??????????
"__inference_vae_layer_call_fn_4495?,45<=67>?89@A:;BCDEFGHIJKPQLMRSNOTUVW????6?3
,?)
'?$
input_1??????????
?
? "D?A
?
0??????????
!?
1??????????
??
"__inference_vae_layer_call_fn_4543?,45<=67>?89@A:;BCDEFGHIJKPQLMRSNOTUVW????0?-
&?#
!?
x??????????
?
? "D?A
?
0??????????
!?
1??????????
?
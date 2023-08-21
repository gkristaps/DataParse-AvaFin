{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 CourierNewPSMT;\f1\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red255\green255\blue254;\red25\green25\blue25;
\red101\green76\blue29;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c100000;\cssrgb\c100000\c100000\c99608;\cssrgb\c12941\c12941\c12941;
\cssrgb\c47451\c36863\c14902;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl336\partightenfactor0

\f0\fs18\fsmilli9333 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 DATABASE\cf4 \strokec4  \cf5 \strokec5 avafin_task\cf4 \strokec4 ;
\f1\fs24 \cf6 \cb1 \strokec6 \uc0\u8232 \cb3 \

\f0\fs18\fsmilli9333 \cf2 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TABLE\cf4 \strokec4  \cf5 \strokec5 dbo\cf4 \strokec4 .parsed_data (
\f1\fs24 \cf6 \strokec6 \
\pard\pardeftab720\sl336\partightenfactor0

\f0\fs18\fsmilli9333 \cf4 \strokec4 [pid] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4  \cf2 \strokec2 IDENTITY\cf4 \strokec4  \cf2 \strokec2 PRIMARY KEY\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [id] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [salary] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [status] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [bank.issued] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [bank.status] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [non_bank.issued] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [non_bank.status] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [history.status] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [history.value] \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [created_at] \cf2 \strokec2 DATETIME\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4  \cf2 \strokec2 DEFAULT\cf4 \strokec4  \cf5 \strokec5 GETDATE\cf4 \strokec4 (),
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf4 \strokec4 [updated_at] \cf2 \strokec2 DATETIME\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4  \cf2 \strokec2 DEFAULT\cf4 \strokec4  \cf2 \strokec2 NULL\cf4 \strokec4 ,
\f1\fs24 \cf6 \strokec6 \
\pard\pardeftab720\sl336\partightenfactor0

\f0\fs18\fsmilli9333 \cf2 \strokec2 INDEX\cf4 \strokec4  [parsed_data_id_idx] ([id] \cf2 \strokec2 ASC\cf4 \strokec4 ),
\f1\fs24 \cf6 \strokec6 \

\f0\fs18\fsmilli9333 \cf2 \strokec2 INDEX\cf4 \strokec4  [parsed_data_created_at_idx] ([created_at] \cf2 \strokec2 DESC\cf4 \strokec4 )
\f1\fs24 \cf6 \strokec6 \
\pard\pardeftab720\sl336\partightenfactor0

\f0\fs18\fsmilli9333 \cf4 \strokec4 );
\f1\fs24 \cf6 \strokec6 \
}
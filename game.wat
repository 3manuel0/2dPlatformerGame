(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param f32)))
  (type (;5;) (func (result f32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32 i32 f32 f32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32 f32 i32)))
  (type (;10;) (func (param i32 f32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32)))
  (import "env" "InitWindow" (func $InitWindow (type 0)))
  (import "env" "InitAudioDevice" (func $InitAudioDevice (type 1)))
  (import "env" "LoadMusicStream" (func $LoadMusicStream (type 2)))
  (import "env" "PlayMusicStream" (func $PlayMusicStream (type 3)))
  (import "env" "LoadTexture" (func $LoadTexture (type 2)))
  (import "env" "loadGame" (func $loadGame (type 2)))
  (import "env" "SetTargetFPS" (func $SetTargetFPS (type 3)))
  (import "env" "SetMasterVolume" (func $SetMasterVolume (type 4)))
  (import "env" "GetMousePosition" (func $GetMousePosition (type 3)))
  (import "env" "UpdateMusicStream" (func $UpdateMusicStream (type 3)))
  (import "env" "GetFrameTime" (func $GetFrameTime (type 5)))
  (import "env" "saveGame" (func $saveGame (type 2)))
  (import "env" "CheckCollisionRecs" (func $CheckCollisionRecs (type 6)))
  (import "env" "IsKeyDown" (func $IsKeyDown (type 7)))
  (import "env" "BeginDrawing" (func $BeginDrawing (type 1)))
  (import "env" "ClearBackground" (func $ClearBackground (type 3)))
  (import "env" "DrawTextureEx" (func $DrawTextureEx (type 8)))
  (import "env" "DrawTexturePro" (func $DrawTexturePro (type 9)))
  (import "env" "DrawRectangleRec" (func $DrawRectangleRec (type 2)))
  (import "env" "DrawRectangleLinesEx" (func $DrawRectangleLinesEx (type 10)))
  (import "env" "DrawText" (func $DrawText (type 11)))
  (import "env" "DrawFPS" (func $DrawFPS (type 2)))
  (import "env" "EndDrawing" (func $EndDrawing (type 1)))
  (import "env" "CheckCollisionPointRec" (func $CheckCollisionPointRec (type 6)))
  (import "env" "IsMouseButtonPressed" (func $IsMouseButtonPressed (type 7)))
  (func $__wasm_call_ctors (type 1))
  (func $GameInit (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i64 i64 i32 i64 i64 f32 f32 f32 f32 i32 i32 i32 i64 i32 i32 i32 i64 i32 f32 i32 f32 f32 i32 f32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 f32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 960
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 1280
    local.set 3
    i32.const 720
    local.set 4
    i32.const 1111
    local.set 5
    local.get 3
    local.get 4
    local.get 5
    call $InitWindow
    call $InitAudioDevice
    i32.const 920
    local.set 6
    local.get 2
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    i32.const 1559
    local.set 9
    local.get 8
    local.get 9
    call $LoadMusicStream
    i32.const 920
    local.set 10
    local.get 2
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    local.get 12
    i64.load align=4
    local.set 13
    i32.const 0
    local.set 14
    local.get 14
    local.get 13
    i64.store offset=2244 align=4
    i32.const 32
    local.set 15
    local.get 12
    local.get 15
    i32.add
    local.set 16
    local.get 16
    i32.load
    local.set 17
    local.get 14
    local.get 17
    i32.store offset=2276
    i32.const 24
    local.set 18
    local.get 12
    local.get 18
    i32.add
    local.set 19
    local.get 19
    i64.load align=4
    local.set 20
    local.get 14
    local.get 20
    i64.store offset=2268 align=4
    i32.const 16
    local.set 21
    local.get 12
    local.get 21
    i32.add
    local.set 22
    local.get 22
    i64.load align=4
    local.set 23
    local.get 14
    local.get 23
    i64.store offset=2260 align=4
    i32.const 8
    local.set 24
    local.get 12
    local.get 24
    i32.add
    local.set 25
    local.get 25
    i64.load align=4
    local.set 26
    local.get 14
    local.get 26
    i64.store offset=2252 align=4
    i32.const 0
    local.set 27
    local.get 27
    i32.load offset=2276
    local.set 28
    i32.const 32
    local.set 29
    local.get 2
    local.get 29
    i32.add
    local.set 30
    local.get 30
    local.get 28
    i32.store
    local.get 27
    i64.load offset=2268 align=4
    local.set 31
    i32.const 24
    local.set 32
    local.get 2
    local.get 32
    i32.add
    local.set 33
    local.get 33
    local.get 31
    i64.store
    local.get 27
    i64.load offset=2260 align=4
    local.set 34
    i32.const 16
    local.set 35
    local.get 2
    local.get 35
    i32.add
    local.set 36
    local.get 36
    local.get 34
    i64.store
    local.get 27
    i64.load offset=2252 align=4
    local.set 37
    i32.const 8
    local.set 38
    local.get 2
    local.get 38
    i32.add
    local.set 39
    local.get 39
    local.get 37
    i64.store
    local.get 27
    i64.load offset=2244 align=4
    local.set 40
    local.get 2
    local.get 40
    i64.store
    local.get 2
    call $PlayMusicStream
    i32.const 0
    local.set 41
    local.get 41
    f32.convert_i32_s
    local.set 42
    local.get 2
    local.get 42
    f32.store offset=840
    f32.const 0x1.9p+6 (;=100;)
    local.set 43
    local.get 2
    local.get 43
    f32.store offset=844
    f32.const 0x1p+7 (;=128;)
    local.set 44
    local.get 2
    local.get 44
    f32.store offset=848
    f32.const 0x1.58p+6 (;=86;)
    local.set 45
    local.get 2
    local.get 45
    f32.store offset=852
    f32.const 0x1p+6 (;=64;)
    local.set 46
    local.get 2
    local.get 46
    f32.store offset=832
    f32.const 0x1.58p+5 (;=43;)
    local.set 47
    local.get 2
    local.get 47
    f32.store offset=836
    i32.const 0
    local.set 48
    local.get 48
    f32.convert_i32_s
    local.set 49
    local.get 2
    local.get 49
    f32.store offset=824
    i32.const 0
    local.set 50
    local.get 50
    f32.convert_i32_s
    local.set 51
    local.get 2
    local.get 51
    f32.store offset=828
    i32.const 856
    local.set 52
    local.get 2
    local.get 52
    i32.add
    local.set 53
    local.get 53
    drop
    i32.const 8
    local.set 54
    i32.const 56
    local.set 55
    local.get 2
    local.get 55
    i32.add
    local.set 56
    local.get 56
    local.get 54
    i32.add
    local.set 57
    i32.const 840
    local.set 58
    local.get 2
    local.get 58
    i32.add
    local.set 59
    local.get 59
    local.get 54
    i32.add
    local.set 60
    local.get 60
    i64.load
    local.set 61
    local.get 57
    local.get 61
    i64.store
    local.get 2
    i64.load offset=840
    local.set 62
    local.get 2
    local.get 62
    i64.store offset=56
    local.get 2
    i64.load offset=832
    local.set 63
    local.get 2
    local.get 63
    i64.store offset=48
    local.get 2
    i64.load offset=824
    local.set 64
    local.get 2
    local.get 64
    i64.store offset=40
    i32.const 856
    local.set 65
    local.get 2
    local.get 65
    i32.add
    local.set 66
    i32.const 56
    local.set 67
    local.get 2
    local.get 67
    i32.add
    local.set 68
    i32.const 48
    local.set 69
    local.get 2
    local.get 69
    i32.add
    local.set 70
    i32.const 40
    local.set 71
    local.get 2
    local.get 71
    i32.add
    local.set 72
    local.get 66
    local.get 68
    local.get 70
    local.get 72
    call $createPlayer
    i32.const 856
    local.set 73
    local.get 2
    local.get 73
    i32.add
    local.set 74
    local.get 74
    local.set 75
    local.get 75
    i64.load align=4
    local.set 76
    i32.const 0
    local.set 77
    local.get 77
    local.get 76
    i64.store offset=1868 align=4
    i32.const 56
    local.set 78
    local.get 75
    local.get 78
    i32.add
    local.set 79
    local.get 79
    i64.load align=4
    local.set 80
    local.get 77
    local.get 80
    i64.store offset=1924 align=4
    i32.const 48
    local.set 81
    local.get 75
    local.get 81
    i32.add
    local.set 82
    local.get 82
    i64.load align=4
    local.set 83
    local.get 77
    local.get 83
    i64.store offset=1916 align=4
    i32.const 40
    local.set 84
    local.get 75
    local.get 84
    i32.add
    local.set 85
    local.get 85
    i64.load align=4
    local.set 86
    local.get 77
    local.get 86
    i64.store offset=1908 align=4
    i32.const 32
    local.set 87
    local.get 75
    local.get 87
    i32.add
    local.set 88
    local.get 88
    i64.load align=4
    local.set 89
    local.get 77
    local.get 89
    i64.store offset=1900 align=4
    i32.const 24
    local.set 90
    local.get 75
    local.get 90
    i32.add
    local.set 91
    local.get 91
    i64.load align=4
    local.set 92
    local.get 77
    local.get 92
    i64.store offset=1892 align=4
    i32.const 16
    local.set 93
    local.get 75
    local.get 93
    i32.add
    local.set 94
    local.get 94
    i64.load align=4
    local.set 95
    local.get 77
    local.get 95
    i64.store offset=1884 align=4
    i32.const 8
    local.set 96
    local.get 75
    local.get 96
    i32.add
    local.set 97
    local.get 97
    i64.load align=4
    local.set 98
    local.get 77
    local.get 98
    i64.store offset=1876 align=4
    i32.const 0
    local.set 99
    local.get 99
    i32.load offset=1904
    local.set 100
    i32.const 0
    local.set 101
    local.get 101
    local.get 100
    i32.store16 offset=2280
    i32.const 752
    local.set 102
    local.get 2
    local.get 102
    i32.add
    local.set 103
    local.get 103
    local.set 104
    i32.const 1430
    local.set 105
    local.get 104
    local.get 105
    call $LoadTexture
    i32.const 728
    local.set 106
    local.get 2
    local.get 106
    i32.add
    local.set 107
    local.get 107
    local.set 108
    i32.const 1287
    local.set 109
    local.get 108
    local.get 109
    call $LoadTexture
    i32.const 776
    local.set 110
    local.get 2
    local.get 110
    i32.add
    local.set 111
    local.get 111
    drop
    i32.const 16
    local.set 112
    i32.const 96
    local.set 113
    local.get 2
    local.get 113
    i32.add
    local.set 114
    local.get 114
    local.get 112
    i32.add
    local.set 115
    i32.const 752
    local.set 116
    local.get 2
    local.get 116
    i32.add
    local.set 117
    local.get 117
    local.get 112
    i32.add
    local.set 118
    local.get 118
    i32.load
    local.set 119
    local.get 115
    local.get 119
    i32.store
    i32.const 8
    local.set 120
    i32.const 96
    local.set 121
    local.get 2
    local.get 121
    i32.add
    local.set 122
    local.get 122
    local.get 120
    i32.add
    local.set 123
    i32.const 752
    local.set 124
    local.get 2
    local.get 124
    i32.add
    local.set 125
    local.get 125
    local.get 120
    i32.add
    local.set 126
    local.get 126
    i64.load
    local.set 127
    local.get 123
    local.get 127
    i64.store
    local.get 2
    i64.load offset=752
    local.set 128
    local.get 2
    local.get 128
    i64.store offset=96
    i32.const 72
    local.set 129
    local.get 2
    local.get 129
    i32.add
    local.set 130
    local.get 130
    local.get 112
    i32.add
    local.set 131
    i32.const 728
    local.set 132
    local.get 2
    local.get 132
    i32.add
    local.set 133
    local.get 133
    local.get 112
    i32.add
    local.set 134
    local.get 134
    i32.load
    local.set 135
    local.get 131
    local.get 135
    i32.store
    i32.const 72
    local.set 136
    local.get 2
    local.get 136
    i32.add
    local.set 137
    local.get 137
    local.get 120
    i32.add
    local.set 138
    i32.const 728
    local.set 139
    local.get 2
    local.get 139
    i32.add
    local.set 140
    local.get 140
    local.get 120
    i32.add
    local.set 141
    local.get 141
    i64.load
    local.set 142
    local.get 138
    local.get 142
    i64.store
    local.get 2
    i64.load offset=728
    local.set 143
    local.get 2
    local.get 143
    i64.store offset=72
    i32.const 5
    local.set 144
    i32.const 776
    local.set 145
    local.get 2
    local.get 145
    i32.add
    local.set 146
    i32.const 96
    local.set 147
    local.get 2
    local.get 147
    i32.add
    local.set 148
    i32.const 72
    local.set 149
    local.get 2
    local.get 149
    i32.add
    local.set 150
    local.get 146
    local.get 148
    local.get 150
    local.get 144
    call $createAnimation
    i32.const 776
    local.set 151
    local.get 2
    local.get 151
    i32.add
    local.set 152
    local.get 152
    local.set 153
    local.get 153
    i64.load align=4
    local.set 154
    i32.const 0
    local.set 155
    local.get 155
    local.get 154
    i64.store offset=2056 align=4
    i32.const 40
    local.set 156
    local.get 153
    local.get 156
    i32.add
    local.set 157
    local.get 157
    i32.load
    local.set 158
    local.get 155
    local.get 158
    i32.store offset=2096
    i32.const 32
    local.set 159
    local.get 153
    local.get 159
    i32.add
    local.set 160
    local.get 160
    i64.load align=4
    local.set 161
    local.get 155
    local.get 161
    i64.store offset=2088 align=4
    i32.const 24
    local.set 162
    local.get 153
    local.get 162
    i32.add
    local.set 163
    local.get 163
    i64.load align=4
    local.set 164
    local.get 155
    local.get 164
    i64.store offset=2080 align=4
    i32.const 16
    local.set 165
    local.get 153
    local.get 165
    i32.add
    local.set 166
    local.get 166
    i64.load align=4
    local.set 167
    local.get 155
    local.get 167
    i64.store offset=2072 align=4
    i32.const 8
    local.set 168
    local.get 153
    local.get 168
    i32.add
    local.set 169
    local.get 169
    i64.load align=4
    local.set 170
    local.get 155
    local.get 170
    i64.store offset=2064 align=4
    i32.const 656
    local.set 171
    local.get 2
    local.get 171
    i32.add
    local.set 172
    local.get 172
    local.set 173
    i32.const 1362
    local.set 174
    local.get 173
    local.get 174
    call $LoadTexture
    i32.const 632
    local.set 175
    local.get 2
    local.get 175
    i32.add
    local.set 176
    local.get 176
    local.set 177
    i32.const 1209
    local.set 178
    local.get 177
    local.get 178
    call $LoadTexture
    i32.const 680
    local.set 179
    local.get 2
    local.get 179
    i32.add
    local.set 180
    local.get 180
    drop
    i32.const 16
    local.set 181
    i32.const 144
    local.set 182
    local.get 2
    local.get 182
    i32.add
    local.set 183
    local.get 183
    local.get 181
    i32.add
    local.set 184
    i32.const 656
    local.set 185
    local.get 2
    local.get 185
    i32.add
    local.set 186
    local.get 186
    local.get 181
    i32.add
    local.set 187
    local.get 187
    i32.load
    local.set 188
    local.get 184
    local.get 188
    i32.store
    i32.const 8
    local.set 189
    i32.const 144
    local.set 190
    local.get 2
    local.get 190
    i32.add
    local.set 191
    local.get 191
    local.get 189
    i32.add
    local.set 192
    i32.const 656
    local.set 193
    local.get 2
    local.get 193
    i32.add
    local.set 194
    local.get 194
    local.get 189
    i32.add
    local.set 195
    local.get 195
    i64.load
    local.set 196
    local.get 192
    local.get 196
    i64.store
    local.get 2
    i64.load offset=656
    local.set 197
    local.get 2
    local.get 197
    i64.store offset=144
    i32.const 120
    local.set 198
    local.get 2
    local.get 198
    i32.add
    local.set 199
    local.get 199
    local.get 181
    i32.add
    local.set 200
    i32.const 632
    local.set 201
    local.get 2
    local.get 201
    i32.add
    local.set 202
    local.get 202
    local.get 181
    i32.add
    local.set 203
    local.get 203
    i32.load
    local.set 204
    local.get 200
    local.get 204
    i32.store
    i32.const 120
    local.set 205
    local.get 2
    local.get 205
    i32.add
    local.set 206
    local.get 206
    local.get 189
    i32.add
    local.set 207
    i32.const 632
    local.set 208
    local.get 2
    local.get 208
    i32.add
    local.set 209
    local.get 209
    local.get 189
    i32.add
    local.set 210
    local.get 210
    i64.load
    local.set 211
    local.get 207
    local.get 211
    i64.store
    local.get 2
    i64.load offset=632
    local.set 212
    local.get 2
    local.get 212
    i64.store offset=120
    i32.const 7
    local.set 213
    i32.const 680
    local.set 214
    local.get 2
    local.get 214
    i32.add
    local.set 215
    i32.const 144
    local.set 216
    local.get 2
    local.get 216
    i32.add
    local.set 217
    i32.const 120
    local.set 218
    local.get 2
    local.get 218
    i32.add
    local.set 219
    local.get 215
    local.get 217
    local.get 219
    local.get 213
    call $createAnimation
    i32.const 680
    local.set 220
    local.get 2
    local.get 220
    i32.add
    local.set 221
    local.get 221
    local.set 222
    local.get 222
    i64.load align=4
    local.set 223
    i32.const 0
    local.set 224
    local.get 224
    local.get 223
    i64.store offset=2100 align=4
    i32.const 40
    local.set 225
    local.get 222
    local.get 225
    i32.add
    local.set 226
    local.get 226
    i32.load
    local.set 227
    local.get 224
    local.get 227
    i32.store offset=2140
    i32.const 32
    local.set 228
    local.get 222
    local.get 228
    i32.add
    local.set 229
    local.get 229
    i64.load align=4
    local.set 230
    local.get 224
    local.get 230
    i64.store offset=2132 align=4
    i32.const 24
    local.set 231
    local.get 222
    local.get 231
    i32.add
    local.set 232
    local.get 232
    i64.load align=4
    local.set 233
    local.get 224
    local.get 233
    i64.store offset=2124 align=4
    i32.const 16
    local.set 234
    local.get 222
    local.get 234
    i32.add
    local.set 235
    local.get 235
    i64.load align=4
    local.set 236
    local.get 224
    local.get 236
    i64.store offset=2116 align=4
    i32.const 8
    local.set 237
    local.get 222
    local.get 237
    i32.add
    local.set 238
    local.get 238
    i64.load align=4
    local.set 239
    local.get 224
    local.get 239
    i64.store offset=2108 align=4
    i32.const 560
    local.set 240
    local.get 2
    local.get 240
    i32.add
    local.set 241
    local.get 241
    local.set 242
    i32.const 1327
    local.set 243
    local.get 242
    local.get 243
    call $LoadTexture
    i32.const 536
    local.set 244
    local.get 2
    local.get 244
    i32.add
    local.set 245
    local.get 245
    local.set 246
    i32.const 1169
    local.set 247
    local.get 246
    local.get 247
    call $LoadTexture
    i32.const 584
    local.set 248
    local.get 2
    local.get 248
    i32.add
    local.set 249
    local.get 249
    drop
    i32.const 16
    local.set 250
    i32.const 192
    local.set 251
    local.get 2
    local.get 251
    i32.add
    local.set 252
    local.get 252
    local.get 250
    i32.add
    local.set 253
    i32.const 560
    local.set 254
    local.get 2
    local.get 254
    i32.add
    local.set 255
    local.get 255
    local.get 250
    i32.add
    local.set 256
    local.get 256
    i32.load
    local.set 257
    local.get 253
    local.get 257
    i32.store
    i32.const 8
    local.set 258
    i32.const 192
    local.set 259
    local.get 2
    local.get 259
    i32.add
    local.set 260
    local.get 260
    local.get 258
    i32.add
    local.set 261
    i32.const 560
    local.set 262
    local.get 2
    local.get 262
    i32.add
    local.set 263
    local.get 263
    local.get 258
    i32.add
    local.set 264
    local.get 264
    i64.load
    local.set 265
    local.get 261
    local.get 265
    i64.store
    local.get 2
    i64.load offset=560
    local.set 266
    local.get 2
    local.get 266
    i64.store offset=192
    i32.const 168
    local.set 267
    local.get 2
    local.get 267
    i32.add
    local.set 268
    local.get 268
    local.get 250
    i32.add
    local.set 269
    i32.const 536
    local.set 270
    local.get 2
    local.get 270
    i32.add
    local.set 271
    local.get 271
    local.get 250
    i32.add
    local.set 272
    local.get 272
    i32.load
    local.set 273
    local.get 269
    local.get 273
    i32.store
    i32.const 168
    local.set 274
    local.get 2
    local.get 274
    i32.add
    local.set 275
    local.get 275
    local.get 258
    i32.add
    local.set 276
    i32.const 536
    local.set 277
    local.get 2
    local.get 277
    i32.add
    local.set 278
    local.get 278
    local.get 258
    i32.add
    local.set 279
    local.get 279
    i64.load
    local.set 280
    local.get 276
    local.get 280
    i64.store
    local.get 2
    i64.load offset=536
    local.set 281
    local.get 2
    local.get 281
    i64.store offset=168
    i32.const 2
    local.set 282
    i32.const 584
    local.set 283
    local.get 2
    local.get 283
    i32.add
    local.set 284
    i32.const 192
    local.set 285
    local.get 2
    local.get 285
    i32.add
    local.set 286
    i32.const 168
    local.set 287
    local.get 2
    local.get 287
    i32.add
    local.set 288
    local.get 284
    local.get 286
    local.get 288
    local.get 282
    call $createAnimation
    i32.const 584
    local.set 289
    local.get 2
    local.get 289
    i32.add
    local.set 290
    local.get 290
    local.set 291
    local.get 291
    i64.load align=4
    local.set 292
    i32.const 0
    local.set 293
    local.get 293
    local.get 292
    i64.store offset=2144 align=4
    i32.const 40
    local.set 294
    local.get 291
    local.get 294
    i32.add
    local.set 295
    local.get 295
    i32.load
    local.set 296
    local.get 293
    local.get 296
    i32.store offset=2184
    i32.const 32
    local.set 297
    local.get 291
    local.get 297
    i32.add
    local.set 298
    local.get 298
    i64.load align=4
    local.set 299
    local.get 293
    local.get 299
    i64.store offset=2176 align=4
    i32.const 24
    local.set 300
    local.get 291
    local.get 300
    i32.add
    local.set 301
    local.get 301
    i64.load align=4
    local.set 302
    local.get 293
    local.get 302
    i64.store offset=2168 align=4
    i32.const 16
    local.set 303
    local.get 291
    local.get 303
    i32.add
    local.set 304
    local.get 304
    i64.load align=4
    local.set 305
    local.get 293
    local.get 305
    i64.store offset=2160 align=4
    i32.const 8
    local.set 306
    local.get 291
    local.get 306
    i32.add
    local.set 307
    local.get 307
    i64.load align=4
    local.set 308
    local.get 293
    local.get 308
    i64.store offset=2152 align=4
    i32.const 464
    local.set 309
    local.get 2
    local.get 309
    i32.add
    local.set 310
    local.get 310
    local.set 311
    i32.const 1395
    local.set 312
    local.get 311
    local.get 312
    call $LoadTexture
    i32.const 440
    local.set 313
    local.get 2
    local.get 313
    i32.add
    local.set 314
    local.get 314
    local.set 315
    i32.const 1247
    local.set 316
    local.get 315
    local.get 316
    call $LoadTexture
    i32.const 488
    local.set 317
    local.get 2
    local.get 317
    i32.add
    local.set 318
    local.get 318
    drop
    i32.const 16
    local.set 319
    i32.const 240
    local.set 320
    local.get 2
    local.get 320
    i32.add
    local.set 321
    local.get 321
    local.get 319
    i32.add
    local.set 322
    i32.const 464
    local.set 323
    local.get 2
    local.get 323
    i32.add
    local.set 324
    local.get 324
    local.get 319
    i32.add
    local.set 325
    local.get 325
    i32.load
    local.set 326
    local.get 322
    local.get 326
    i32.store
    i32.const 8
    local.set 327
    i32.const 240
    local.set 328
    local.get 2
    local.get 328
    i32.add
    local.set 329
    local.get 329
    local.get 327
    i32.add
    local.set 330
    i32.const 464
    local.set 331
    local.get 2
    local.get 331
    i32.add
    local.set 332
    local.get 332
    local.get 327
    i32.add
    local.set 333
    local.get 333
    i64.load
    local.set 334
    local.get 330
    local.get 334
    i64.store
    local.get 2
    i64.load offset=464
    local.set 335
    local.get 2
    local.get 335
    i64.store offset=240
    i32.const 216
    local.set 336
    local.get 2
    local.get 336
    i32.add
    local.set 337
    local.get 337
    local.get 319
    i32.add
    local.set 338
    i32.const 440
    local.set 339
    local.get 2
    local.get 339
    i32.add
    local.set 340
    local.get 340
    local.get 319
    i32.add
    local.set 341
    local.get 341
    i32.load
    local.set 342
    local.get 338
    local.get 342
    i32.store
    i32.const 216
    local.set 343
    local.get 2
    local.get 343
    i32.add
    local.set 344
    local.get 344
    local.get 327
    i32.add
    local.set 345
    i32.const 440
    local.set 346
    local.get 2
    local.get 346
    i32.add
    local.set 347
    local.get 347
    local.get 327
    i32.add
    local.set 348
    local.get 348
    i64.load
    local.set 349
    local.get 345
    local.get 349
    i64.store
    local.get 2
    i64.load offset=440
    local.set 350
    local.get 2
    local.get 350
    i64.store offset=216
    i32.const 2
    local.set 351
    i32.const 488
    local.set 352
    local.get 2
    local.get 352
    i32.add
    local.set 353
    i32.const 240
    local.set 354
    local.get 2
    local.get 354
    i32.add
    local.set 355
    i32.const 216
    local.set 356
    local.get 2
    local.get 356
    i32.add
    local.set 357
    local.get 353
    local.get 355
    local.get 357
    local.get 351
    call $createAnimation
    i32.const 488
    local.set 358
    local.get 2
    local.get 358
    i32.add
    local.set 359
    local.get 359
    local.set 360
    local.get 360
    i64.load align=4
    local.set 361
    i32.const 0
    local.set 362
    local.get 362
    local.get 361
    i64.store offset=2188 align=4
    i32.const 40
    local.set 363
    local.get 360
    local.get 363
    i32.add
    local.set 364
    local.get 364
    i32.load
    local.set 365
    local.get 362
    local.get 365
    i32.store offset=2228
    i32.const 32
    local.set 366
    local.get 360
    local.get 366
    i32.add
    local.set 367
    local.get 367
    i64.load align=4
    local.set 368
    local.get 362
    local.get 368
    i64.store offset=2220 align=4
    i32.const 24
    local.set 369
    local.get 360
    local.get 369
    i32.add
    local.set 370
    local.get 370
    i64.load align=4
    local.set 371
    local.get 362
    local.get 371
    i64.store offset=2212 align=4
    i32.const 16
    local.set 372
    local.get 360
    local.get 372
    i32.add
    local.set 373
    local.get 373
    i64.load align=4
    local.set 374
    local.get 362
    local.get 374
    i64.store offset=2204 align=4
    i32.const 8
    local.set 375
    local.get 360
    local.get 375
    i32.add
    local.set 376
    local.get 376
    i64.load align=4
    local.set 377
    local.get 362
    local.get 377
    i64.store offset=2196 align=4
    i32.const 416
    local.set 378
    local.get 2
    local.get 378
    i32.add
    local.set 379
    local.get 379
    local.set 380
    i32.const 1465
    local.set 381
    local.get 380
    local.get 381
    call $LoadTexture
    i32.const 416
    local.set 382
    local.get 2
    local.get 382
    i32.add
    local.set 383
    local.get 383
    local.set 384
    local.get 384
    i64.load align=4
    local.set 385
    i32.const 0
    local.set 386
    local.get 386
    local.get 385
    i64.store offset=1932 align=4
    i32.const 16
    local.set 387
    local.get 384
    local.get 387
    i32.add
    local.set 388
    local.get 388
    i32.load
    local.set 389
    local.get 386
    local.get 389
    i32.store offset=1948
    i32.const 8
    local.set 390
    local.get 384
    local.get 390
    i32.add
    local.set 391
    local.get 391
    i64.load align=4
    local.set 392
    local.get 386
    local.get 392
    i64.store offset=1940 align=4
    i32.const 392
    local.set 393
    local.get 2
    local.get 393
    i32.add
    local.set 394
    local.get 394
    local.set 395
    i32.const 1540
    local.set 396
    local.get 395
    local.get 396
    call $LoadTexture
    i32.const 392
    local.set 397
    local.get 2
    local.get 397
    i32.add
    local.set 398
    local.get 398
    local.set 399
    local.get 399
    i64.load align=4
    local.set 400
    i32.const 0
    local.set 401
    local.get 401
    local.get 400
    i64.store offset=1952 align=4
    i32.const 16
    local.set 402
    local.get 399
    local.get 402
    i32.add
    local.set 403
    local.get 403
    i32.load
    local.set 404
    local.get 401
    local.get 404
    i32.store offset=1968
    i32.const 8
    local.set 405
    local.get 399
    local.get 405
    i32.add
    local.set 406
    local.get 406
    i64.load align=4
    local.set 407
    local.get 401
    local.get 407
    i64.store offset=1960 align=4
    i32.const 368
    local.set 408
    local.get 2
    local.get 408
    i32.add
    local.set 409
    local.get 409
    local.set 410
    i32.const 1521
    local.set 411
    local.get 410
    local.get 411
    call $LoadTexture
    i32.const 368
    local.set 412
    local.get 2
    local.get 412
    i32.add
    local.set 413
    local.get 413
    local.set 414
    local.get 414
    i64.load align=4
    local.set 415
    i32.const 0
    local.set 416
    local.get 416
    local.get 415
    i64.store offset=1972 align=4
    i32.const 16
    local.set 417
    local.get 414
    local.get 417
    i32.add
    local.set 418
    local.get 418
    i32.load
    local.set 419
    local.get 416
    local.get 419
    i32.store offset=1988
    i32.const 8
    local.set 420
    local.get 414
    local.get 420
    i32.add
    local.set 421
    local.get 421
    i64.load align=4
    local.set 422
    local.get 416
    local.get 422
    i64.store offset=1980 align=4
    i32.const 344
    local.set 423
    local.get 2
    local.get 423
    i32.add
    local.set 424
    local.get 424
    local.set 425
    i32.const 1502
    local.set 426
    local.get 425
    local.get 426
    call $LoadTexture
    i32.const 344
    local.set 427
    local.get 2
    local.get 427
    i32.add
    local.set 428
    local.get 428
    local.set 429
    local.get 429
    i64.load align=4
    local.set 430
    i32.const 0
    local.set 431
    local.get 431
    local.get 430
    i64.store offset=1992 align=4
    i32.const 16
    local.set 432
    local.get 429
    local.get 432
    i32.add
    local.set 433
    local.get 433
    i32.load
    local.set 434
    local.get 431
    local.get 434
    i32.store offset=2008
    i32.const 8
    local.set 435
    local.get 429
    local.get 435
    i32.add
    local.set 436
    local.get 436
    i64.load align=4
    local.set 437
    local.get 431
    local.get 437
    i64.store offset=2000 align=4
    i32.const 320
    local.set 438
    local.get 2
    local.get 438
    i32.add
    local.set 439
    local.get 439
    local.set 440
    i32.const 1138
    local.set 441
    local.get 440
    local.get 441
    call $LoadTexture
    i32.const 320
    local.set 442
    local.get 2
    local.get 442
    i32.add
    local.set 443
    local.get 443
    local.set 444
    local.get 444
    i64.load align=4
    local.set 445
    i32.const 0
    local.set 446
    local.get 446
    local.get 445
    i64.store offset=2012 align=4
    i32.const 16
    local.set 447
    local.get 444
    local.get 447
    i32.add
    local.set 448
    local.get 448
    i32.load
    local.set 449
    local.get 446
    local.get 449
    i32.store offset=2028
    i32.const 8
    local.set 450
    local.get 444
    local.get 450
    i32.add
    local.set 451
    local.get 451
    i64.load align=4
    local.set 452
    local.get 446
    local.get 452
    i64.store offset=2020 align=4
    i32.const 0
    local.set 453
    local.get 453
    i64.load offset=1876 align=4
    local.set 454
    local.get 453
    local.get 454
    i64.store offset=2048 align=4
    local.get 453
    i64.load offset=1868 align=4
    local.set 455
    local.get 453
    local.get 455
    i64.store offset=2040 align=4
    i32.const 0
    local.set 456
    local.get 456
    i64.load offset=1876 align=4
    local.set 457
    local.get 456
    local.get 457
    i64.store offset=2048 align=4
    local.get 456
    i64.load offset=1868 align=4
    local.set 458
    local.get 456
    local.get 458
    i64.store offset=2040 align=4
    f32.const 0x1.1p+5 (;=34;)
    local.set 459
    local.get 2
    local.get 459
    f32.store offset=304
    f32.const 0x1.4p+3 (;=10;)
    local.set 460
    local.get 2
    local.get 460
    f32.store offset=308
    f32.const 0x1.2cp+8 (;=300;)
    local.set 461
    local.get 2
    local.get 461
    f32.store offset=312
    f32.const 0x1.ep+4 (;=30;)
    local.set 462
    local.get 2
    local.get 462
    f32.store offset=316
    i32.const 304
    local.set 463
    local.get 2
    local.get 463
    i32.add
    local.set 464
    local.get 464
    local.set 465
    local.get 465
    i64.load align=4
    local.set 466
    i32.const 0
    local.set 467
    local.get 467
    local.get 466
    i64.store offset=2284 align=4
    i32.const 8
    local.set 468
    local.get 465
    local.get 468
    i32.add
    local.set 469
    local.get 469
    i64.load align=4
    local.set 470
    local.get 467
    local.get 470
    i64.store offset=2292 align=4
    i32.const 0
    local.set 471
    local.get 471
    f32.load offset=2284
    local.set 472
    local.get 2
    local.get 472
    f32.store offset=288
    i32.const 0
    local.set 473
    local.get 473
    f32.load offset=2288
    local.set 474
    local.get 2
    local.get 474
    f32.store offset=292
    f32.const 0x1.2cp+8 (;=300;)
    local.set 475
    local.get 2
    local.get 475
    f32.store offset=296
    i32.const 0
    local.set 476
    local.get 476
    f32.load offset=2296
    local.set 477
    local.get 2
    local.get 477
    f32.store offset=300
    i32.const 288
    local.set 478
    local.get 2
    local.get 478
    i32.add
    local.set 479
    local.get 479
    local.set 480
    local.get 480
    i64.load align=4
    local.set 481
    i32.const 0
    local.set 482
    local.get 482
    local.get 481
    i64.store offset=2300 align=4
    i32.const 8
    local.set 483
    local.get 480
    local.get 483
    i32.add
    local.set 484
    local.get 484
    i64.load align=4
    local.set 485
    local.get 482
    local.get 485
    i64.store offset=2308 align=4
    i32.const 0
    local.set 486
    local.get 2
    local.get 486
    i32.store8 offset=280
    i32.const 228
    local.set 487
    local.get 2
    local.get 487
    i32.store8 offset=281
    i32.const 48
    local.set 488
    local.get 2
    local.get 488
    i32.store8 offset=282
    i32.const 255
    local.set 489
    local.get 2
    local.get 489
    i32.store8 offset=283
    i32.const 280
    local.set 490
    local.get 2
    local.get 490
    i32.add
    local.set 491
    local.get 491
    local.set 492
    local.get 492
    i32.load align=1
    local.set 493
    i32.const 0
    local.set 494
    local.get 494
    local.get 493
    i32.store offset=2316 align=1
    i32.const 0
    local.set 495
    local.get 495
    i32.load offset=1904
    local.set 496
    i32.const 0
    local.set 497
    local.get 497
    i32.load16_u offset=2280
    local.set 498
    i32.const 65535
    local.set 499
    local.get 498
    local.get 499
    i32.and
    local.set 500
    i32.const 45
    local.set 501
    local.get 500
    local.get 501
    i32.mul
    local.set 502
    i32.const 100
    local.set 503
    local.get 502
    local.get 503
    i32.div_s
    local.set 504
    local.get 496
    local.set 505
    local.get 504
    local.set 506
    local.get 505
    local.get 506
    i32.le_u
    local.set 507
    i32.const 1
    local.set 508
    local.get 507
    local.get 508
    i32.and
    local.set 509
    block  ;; label = @1
      block  ;; label = @2
        local.get 509
        i32.eqz
        br_if 0 (;@2;)
        i32.const 253
        local.set 510
        local.get 2
        local.get 510
        i32.store8 offset=272
        i32.const 249
        local.set 511
        local.get 2
        local.get 511
        i32.store8 offset=273
        i32.const 0
        local.set 512
        local.get 2
        local.get 512
        i32.store8 offset=274
        i32.const 255
        local.set 513
        local.get 2
        local.get 513
        i32.store8 offset=275
        i32.const 272
        local.set 514
        local.get 2
        local.get 514
        i32.add
        local.set 515
        local.get 515
        local.set 516
        local.get 516
        i32.load align=1
        local.set 517
        i32.const 0
        local.set 518
        local.get 518
        local.get 517
        i32.store offset=2316 align=1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 519
      local.get 519
      i32.load offset=1904
      local.set 520
      i32.const 0
      local.set 521
      local.get 521
      i32.load16_u offset=2280
      local.set 522
      i32.const 65535
      local.set 523
      local.get 522
      local.get 523
      i32.and
      local.set 524
      i32.const 30
      local.set 525
      local.get 524
      local.get 525
      i32.mul
      local.set 526
      i32.const 100
      local.set 527
      local.get 526
      local.get 527
      i32.div_s
      local.set 528
      local.get 520
      local.set 529
      local.get 528
      local.set 530
      local.get 529
      local.get 530
      i32.le_u
      local.set 531
      i32.const 1
      local.set 532
      local.get 531
      local.get 532
      i32.and
      local.set 533
      block  ;; label = @2
        local.get 533
        i32.eqz
        br_if 0 (;@2;)
        i32.const 230
        local.set 534
        local.get 2
        local.get 534
        i32.store8 offset=264
        i32.const 41
        local.set 535
        local.get 2
        local.get 535
        i32.store8 offset=265
        i32.const 55
        local.set 536
        local.get 2
        local.get 536
        i32.store8 offset=266
        i32.const 255
        local.set 537
        local.get 2
        local.get 537
        i32.store8 offset=267
        i32.const 264
        local.set 538
        local.get 2
        local.get 538
        i32.add
        local.set 539
        local.get 539
        local.set 540
        local.get 540
        i32.load align=1
        local.set 541
        i32.const 0
        local.set 542
        local.get 542
        local.get 541
        i32.store offset=2316 align=1
      end
    end
    i32.const 0
    local.set 543
    local.get 543
    f32.load offset=2292
    local.set 544
    local.get 543
    i32.load offset=1904
    local.set 545
    local.get 545
    f32.convert_i32_u
    local.set 546
    local.get 544
    local.get 546
    f32.div
    local.set 547
    i32.const 0
    local.set 548
    local.get 548
    local.get 547
    f32.store offset=2320
    i32.const 1868
    local.set 549
    i32.const 1844
    local.set 550
    local.get 549
    local.get 550
    call $loadGame
    i32.const 0
    local.set 551
    local.get 2
    local.get 551
    i32.store8 offset=263
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load8_u offset=263
        local.set 552
        i32.const 255
        local.set 553
        local.get 552
        local.get 553
        i32.and
        local.set 554
        i32.const 0
        local.set 555
        local.get 555
        i32.load8_u offset=1840
        local.set 556
        i32.const 255
        local.set 557
        local.get 556
        local.get 557
        i32.and
        local.set 558
        local.get 554
        local.set 559
        local.get 558
        local.set 560
        local.get 559
        local.get 560
        i32.lt_s
        local.set 561
        i32.const 1
        local.set 562
        local.get 561
        local.get 562
        i32.and
        local.set 563
        local.get 563
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 564
        local.get 564
        f32.load offset=1844
        local.set 565
        local.get 2
        i32.load8_u offset=263
        local.set 566
        i32.const 255
        local.set 567
        local.get 566
        local.get 567
        i32.and
        local.set 568
        i32.const 1616
        local.set 569
        i32.const 4
        local.set 570
        local.get 568
        local.get 570
        i32.shl
        local.set 571
        local.get 569
        local.get 571
        i32.add
        local.set 572
        local.get 572
        f32.load
        local.set 573
        local.get 573
        local.get 565
        f32.add
        local.set 574
        local.get 572
        local.get 574
        f32.store
        local.get 2
        i32.load8_u offset=263
        local.set 575
        i32.const 1
        local.set 576
        local.get 575
        local.get 576
        i32.add
        local.set 577
        local.get 2
        local.get 577
        i32.store8 offset=263
        br 0 (;@2;)
      end
    end
    i32.const 120
    local.set 578
    local.get 578
    call $SetTargetFPS
    f32.const 0x1.99999ap-5 (;=0.05;)
    local.set 579
    local.get 579
    call $SetMasterVolume
    i32.const 960
    local.set 580
    local.get 2
    local.get 580
    i32.add
    local.set 581
    local.get 581
    global.set $__stack_pointer
    return)
  (func $createPlayer (type 12) (param i32 i32 i32 i32)
    (local i64 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
    local.get 1
    i64.load align=4
    local.set 4
    local.get 0
    local.get 4
    i64.store align=4
    i32.const 8
    local.set 5
    local.get 0
    local.get 5
    i32.add
    local.set 6
    local.get 1
    local.get 5
    i32.add
    local.set 7
    local.get 7
    i64.load align=4
    local.set 8
    local.get 6
    local.get 8
    i64.store align=4
    i32.const 16
    local.set 9
    local.get 0
    local.get 9
    i32.add
    local.set 10
    local.get 2
    i64.load align=4
    local.set 11
    local.get 10
    local.get 11
    i64.store align=4
    i32.const 24
    local.set 12
    local.get 0
    local.get 12
    i32.add
    local.set 13
    local.get 3
    i64.load align=4
    local.set 14
    local.get 13
    local.get 14
    i64.store align=4
    i32.const 0
    local.set 15
    local.get 0
    local.get 15
    i32.store16 offset=32
    i32.const 0
    local.set 16
    local.get 0
    local.get 16
    i32.store8 offset=34
    i32.const 1000
    local.set 17
    local.get 0
    local.get 17
    i32.store offset=36
    i32.const 40
    local.set 18
    local.get 0
    local.get 18
    i32.add
    local.set 19
    i64.const 0
    local.set 20
    local.get 19
    local.get 20
    i64.store align=4
    i32.const 16
    local.set 21
    local.get 19
    local.get 21
    i32.add
    local.set 22
    i32.const 0
    local.set 23
    local.get 22
    local.get 23
    i32.store
    i32.const 8
    local.set 24
    local.get 19
    local.get 24
    i32.add
    local.set 25
    local.get 25
    local.get 20
    i64.store align=4
    i32.const 0
    local.set 26
    local.get 0
    local.get 26
    i32.store offset=60
    return)
  (func $createAnimation (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 16
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    local.get 3
    i32.store8 offset=15
    local.get 1
    i64.load align=4
    local.set 7
    local.get 0
    local.get 7
    i64.store align=4
    i32.const 16
    local.set 8
    local.get 0
    local.get 8
    i32.add
    local.set 9
    local.get 1
    local.get 8
    i32.add
    local.set 10
    local.get 10
    i32.load
    local.set 11
    local.get 9
    local.get 11
    i32.store
    i32.const 8
    local.set 12
    local.get 0
    local.get 12
    i32.add
    local.set 13
    local.get 1
    local.get 12
    i32.add
    local.set 14
    local.get 14
    i64.load align=4
    local.set 15
    local.get 13
    local.get 15
    i64.store align=4
    i32.const 20
    local.set 16
    local.get 0
    local.get 16
    i32.add
    local.set 17
    local.get 2
    i64.load align=4
    local.set 18
    local.get 17
    local.get 18
    i64.store align=4
    i32.const 16
    local.set 19
    local.get 17
    local.get 19
    i32.add
    local.set 20
    local.get 2
    local.get 19
    i32.add
    local.set 21
    local.get 21
    i32.load
    local.set 22
    local.get 20
    local.get 22
    i32.store
    i32.const 8
    local.set 23
    local.get 17
    local.get 23
    i32.add
    local.set 24
    local.get 2
    local.get 23
    i32.add
    local.set 25
    local.get 25
    i64.load align=4
    local.set 26
    local.get 24
    local.get 26
    i64.store align=4
    local.get 6
    i32.load8_u offset=15
    local.set 27
    i32.const 255
    local.set 28
    local.get 27
    local.get 28
    i32.and
    local.set 29
    local.get 0
    local.get 29
    i32.store offset=40
    return)
  (func $GameFrame (type 1)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i64 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 i32 i64 i64 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 i32 f32 f32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 i32 i32 i64 i32 i32 i32 i64 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 f32 i32 f32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i64 i32 i64 i32 i32 i32 i64 i64 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 f32 i32 i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i64 i32 i64 i32 i32 i32 i64 i64 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 f32 f32 i32 f32 i32 f32 i32 f32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i64 i64 i64 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 1120
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 1112
    local.set 3
    local.get 2
    local.get 3
    i32.add
    local.set 4
    local.get 4
    call $GetMousePosition
    i32.const 0
    local.set 5
    local.get 2
    i64.load offset=1112
    local.set 6
    local.get 5
    local.get 6
    i64.store offset=2032 align=4
    i32.const 736
    local.set 7
    local.get 2
    local.get 7
    i32.add
    local.set 8
    local.get 5
    i32.load offset=2276
    local.set 9
    local.get 8
    local.get 9
    i32.store
    i32.const 728
    local.set 10
    local.get 2
    local.get 10
    i32.add
    local.set 11
    local.get 5
    i64.load offset=2268 align=4
    local.set 12
    local.get 11
    local.get 12
    i64.store
    i32.const 720
    local.set 13
    local.get 2
    local.get 13
    i32.add
    local.set 14
    local.get 5
    i64.load offset=2260 align=4
    local.set 15
    local.get 14
    local.get 15
    i64.store
    i32.const 712
    local.set 16
    local.get 2
    local.get 16
    i32.add
    local.set 17
    local.get 5
    i64.load offset=2252 align=4
    local.set 18
    local.get 17
    local.get 18
    i64.store
    local.get 5
    i64.load offset=2244 align=4
    local.set 19
    local.get 2
    local.get 19
    i64.store offset=704
    i32.const 704
    local.set 20
    local.get 2
    local.get 20
    i32.add
    local.set 21
    local.get 21
    call $UpdateMusicStream
    call $GetFrameTime
    local.set 22
    local.get 2
    local.get 22
    f32.store offset=1108
    local.get 2
    f32.load offset=1108
    local.set 23
    f32.const 0x1.f4p+8 (;=500;)
    local.set 24
    local.get 23
    local.get 24
    f32.mul
    local.set 25
    local.get 5
    local.get 25
    f32.store offset=1892
    local.get 5
    f32.load offset=1896
    local.set 26
    local.get 2
    f32.load offset=1108
    local.set 27
    local.get 5
    f32.load offset=1872
    local.set 28
    local.get 26
    local.get 27
    f32.mul
    local.set 29
    local.get 29
    local.get 28
    f32.add
    local.set 30
    local.get 5
    local.get 30
    f32.store offset=1872
    local.get 5
    i32.load offset=2072
    local.set 31
    local.get 5
    local.get 31
    i32.store offset=1924
    local.get 5
    i64.load offset=2064 align=4
    local.set 32
    local.get 5
    local.get 32
    i64.store offset=1916 align=4
    local.get 5
    i64.load offset=2056 align=4
    local.set 33
    local.get 5
    local.get 33
    i64.store offset=1908 align=4
    local.get 5
    i32.load offset=1904
    local.set 34
    local.get 34
    f32.convert_i32_u
    local.set 35
    i32.const 0
    local.set 36
    local.get 36
    f32.load offset=2320
    local.set 37
    local.get 35
    local.get 37
    f32.mul
    local.set 38
    i32.const 0
    local.set 39
    local.get 39
    local.get 38
    f32.store offset=2308
    local.get 2
    f32.load offset=1108
    local.set 40
    i32.const 0
    local.set 41
    local.get 41
    f32.load offset=2240
    local.set 42
    local.get 42
    local.get 40
    f32.add
    local.set 43
    i32.const 0
    local.set 44
    local.get 44
    local.get 43
    f32.store offset=2240
    i32.const 0
    local.set 45
    local.get 45
    f32.load offset=2240
    local.set 46
    f32.const 0x1p+0 (;=1;)
    local.set 47
    local.get 46
    local.get 47
    f32.ge
    local.set 48
    i32.const 1
    local.set 49
    local.get 48
    local.get 49
    i32.and
    local.set 50
    block  ;; label = @1
      local.get 50
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 51
      local.get 51
      i64.load offset=1924 align=4
      local.set 52
      i32.const 696
      local.set 53
      local.get 2
      local.get 53
      i32.add
      local.set 54
      local.get 54
      local.get 52
      i64.store
      local.get 51
      i64.load offset=1916 align=4
      local.set 55
      i32.const 688
      local.set 56
      local.get 2
      local.get 56
      i32.add
      local.set 57
      local.get 57
      local.get 55
      i64.store
      local.get 51
      i64.load offset=1908 align=4
      local.set 58
      i32.const 680
      local.set 59
      local.get 2
      local.get 59
      i32.add
      local.set 60
      local.get 60
      local.get 58
      i64.store
      local.get 51
      i64.load offset=1900 align=4
      local.set 61
      i32.const 672
      local.set 62
      local.get 2
      local.get 62
      i32.add
      local.set 63
      local.get 63
      local.get 61
      i64.store
      local.get 51
      i64.load offset=1892 align=4
      local.set 64
      i32.const 664
      local.set 65
      local.get 2
      local.get 65
      i32.add
      local.set 66
      local.get 66
      local.get 64
      i64.store
      local.get 51
      i64.load offset=1884 align=4
      local.set 67
      i32.const 16
      local.set 68
      i32.const 640
      local.set 69
      local.get 2
      local.get 69
      i32.add
      local.set 70
      local.get 70
      local.get 68
      i32.add
      local.set 71
      local.get 71
      local.get 67
      i64.store
      local.get 51
      i64.load offset=1876 align=4
      local.set 72
      i32.const 8
      local.set 73
      i32.const 640
      local.set 74
      local.get 2
      local.get 74
      i32.add
      local.set 75
      local.get 75
      local.get 73
      i32.add
      local.set 76
      local.get 76
      local.get 72
      i64.store
      local.get 51
      i64.load offset=1868 align=4
      local.set 77
      local.get 2
      local.get 77
      i64.store offset=640
      i32.const 616
      local.set 78
      local.get 2
      local.get 78
      i32.add
      local.set 79
      local.get 79
      local.get 68
      i32.add
      local.set 80
      local.get 51
      i64.load offset=1860 align=4
      local.set 81
      local.get 80
      local.get 81
      i64.store
      i32.const 616
      local.set 82
      local.get 2
      local.get 82
      i32.add
      local.set 83
      local.get 83
      local.get 73
      i32.add
      local.set 84
      local.get 51
      i64.load offset=1852 align=4
      local.set 85
      local.get 84
      local.get 85
      i64.store
      local.get 51
      i64.load offset=1844 align=4
      local.set 86
      local.get 2
      local.get 86
      i64.store offset=616
      i32.const 640
      local.set 87
      local.get 2
      local.get 87
      i32.add
      local.set 88
      i32.const 616
      local.set 89
      local.get 2
      local.get 89
      i32.add
      local.set 90
      local.get 88
      local.get 90
      call $saveGame
      i32.const 0
      local.set 91
      local.get 91
      f32.convert_i32_s
      local.set 92
      i32.const 0
      local.set 93
      local.get 93
      local.get 92
      f32.store offset=2240
    end
    i32.const 0
    local.set 94
    local.get 94
    i32.load offset=1928
    local.set 95
    block  ;; label = @1
      block  ;; label = @2
        local.get 95
        br_if 0 (;@2;)
        i32.const 0
        local.set 96
        local.get 96
        f32.load offset=1868
        local.set 97
        i32.const 0
        local.set 98
        local.get 98
        f32.load offset=1876
        local.set 99
        f32.const 0x1p+2 (;=4;)
        local.set 100
        local.get 99
        local.get 100
        f32.div
        local.set 101
        local.get 97
        local.get 101
        f32.add
        local.set 102
        f32.const 0x1.ep+3 (;=15;)
        local.set 103
        local.get 102
        local.get 103
        f32.add
        local.set 104
        local.get 2
        local.get 104
        f32.store offset=1088
        i32.const 0
        local.set 105
        local.get 105
        f32.load offset=1872
        local.set 106
        i32.const 0
        local.set 107
        local.get 107
        f32.load offset=1880
        local.set 108
        local.get 106
        local.get 108
        f32.add
        local.set 109
        f32.const 0x1.4p+3 (;=10;)
        local.set 110
        local.get 109
        local.get 110
        f32.sub
        local.set 111
        local.get 2
        local.get 111
        f32.store offset=1092
        f32.const 0x1.ap+4 (;=26;)
        local.set 112
        local.get 2
        local.get 112
        f32.store offset=1096
        f32.const 0x1.4p+3 (;=10;)
        local.set 113
        local.get 2
        local.get 113
        f32.store offset=1100
        i32.const 1088
        local.set 114
        local.get 2
        local.get 114
        i32.add
        local.set 115
        local.get 115
        local.set 116
        local.get 116
        i64.load align=4
        local.set 117
        i32.const 0
        local.set 118
        local.get 118
        local.get 117
        i64.store offset=2324 align=4
        i32.const 8
        local.set 119
        local.get 116
        local.get 119
        i32.add
        local.set 120
        local.get 120
        i64.load align=4
        local.set 121
        local.get 118
        local.get 121
        i64.store offset=2332 align=4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 122
      local.get 122
      f32.load offset=1868
      local.set 123
      i32.const 0
      local.set 124
      local.get 124
      f32.load offset=1876
      local.set 125
      f32.const 0x1p+1 (;=2;)
      local.set 126
      local.get 125
      local.get 126
      f32.div
      local.set 127
      local.get 123
      local.get 127
      f32.add
      local.set 128
      f32.const 0x1.4p+3 (;=10;)
      local.set 129
      local.get 128
      local.get 129
      f32.sub
      local.set 130
      local.get 2
      local.get 130
      f32.store offset=1072
      i32.const 0
      local.set 131
      local.get 131
      f32.load offset=1872
      local.set 132
      i32.const 0
      local.set 133
      local.get 133
      f32.load offset=1880
      local.set 134
      local.get 132
      local.get 134
      f32.add
      local.set 135
      f32.const 0x1.4p+3 (;=10;)
      local.set 136
      local.get 135
      local.get 136
      f32.sub
      local.set 137
      local.get 2
      local.get 137
      f32.store offset=1076
      f32.const 0x1.ap+4 (;=26;)
      local.set 138
      local.get 2
      local.get 138
      f32.store offset=1080
      f32.const 0x1.4p+3 (;=10;)
      local.set 139
      local.get 2
      local.get 139
      f32.store offset=1084
      i32.const 1072
      local.set 140
      local.get 2
      local.get 140
      i32.add
      local.set 141
      local.get 141
      local.set 142
      local.get 142
      i64.load align=4
      local.set 143
      i32.const 0
      local.set 144
      local.get 144
      local.get 143
      i64.store offset=2324 align=4
      i32.const 8
      local.set 145
      local.get 142
      local.get 145
      i32.add
      local.set 146
      local.get 146
      i64.load align=4
      local.set 147
      local.get 144
      local.get 147
      i64.store offset=2332 align=4
    end
    i32.const 0
    local.set 148
    local.get 148
    i32.load16_u offset=1900
    local.set 149
    i32.const 65535
    local.set 150
    local.get 149
    local.get 150
    i32.and
    local.set 151
    i32.const 0
    local.set 152
    local.get 152
    i32.load8_u offset=2232
    local.set 153
    i32.const 255
    local.set 154
    local.get 153
    local.get 154
    i32.and
    local.set 155
    local.get 151
    local.set 156
    local.get 155
    local.set 157
    local.get 156
    local.get 157
    i32.ge_s
    local.set 158
    i32.const 1
    local.set 159
    local.get 158
    local.get 159
    i32.and
    local.set 160
    block  ;; label = @1
      local.get 160
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 161
      i32.const 0
      local.set 162
      local.get 162
      local.get 161
      i32.store16 offset=1900
      i32.const 0
      local.set 163
      local.get 163
      f32.convert_i32_s
      local.set 164
      i32.const 0
      local.set 165
      local.get 165
      local.get 164
      f32.store offset=2236
    end
    local.get 2
    f32.load offset=1108
    local.set 166
    i32.const 0
    local.set 167
    local.get 167
    f32.load offset=2236
    local.set 168
    f32.const 0x1.8p+3 (;=12;)
    local.set 169
    local.get 166
    local.get 169
    f32.mul
    local.set 170
    local.get 170
    local.get 168
    f32.add
    local.set 171
    local.get 167
    local.get 171
    f32.store offset=2236
    local.get 167
    f32.load offset=2236
    local.set 172
    f32.const 0x1p+32 (;=4.29497e+09;)
    local.set 173
    local.get 172
    local.get 173
    f32.lt
    local.set 174
    f32.const 0x0p+0 (;=0;)
    local.set 175
    local.get 172
    local.get 175
    f32.ge
    local.set 176
    local.get 174
    local.get 176
    i32.and
    local.set 177
    local.get 177
    i32.eqz
    local.set 178
    block  ;; label = @1
      block  ;; label = @2
        local.get 178
        br_if 0 (;@2;)
        local.get 172
        i32.trunc_f32_u
        local.set 179
        local.get 179
        local.set 180
        br 1 (;@1;)
      end
      i32.const 0
      local.set 181
      local.get 181
      local.set 180
    end
    local.get 180
    local.set 182
    i32.const 0
    local.set 183
    local.get 183
    local.get 182
    i32.store16 offset=1900
    i32.const 0
    local.set 184
    local.get 184
    i32.load offset=2096
    local.set 185
    i32.const 0
    local.set 186
    local.get 186
    local.get 185
    i32.store8 offset=2232
    i32.const 0
    local.set 187
    local.get 187
    i32.load offset=1928
    local.set 188
    block  ;; label = @1
      block  ;; label = @2
        local.get 188
        br_if 0 (;@2;)
        i32.const 0
        local.set 189
        local.get 189
        i32.load offset=2072
        local.set 190
        local.get 189
        local.get 190
        i32.store offset=1924
        local.get 189
        i64.load offset=2064 align=4
        local.set 191
        local.get 189
        local.get 191
        i64.store offset=1916 align=4
        local.get 189
        i64.load offset=2056 align=4
        local.set 192
        local.get 189
        local.get 192
        i64.store offset=1908 align=4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 193
      local.get 193
      i32.load offset=2092
      local.set 194
      local.get 193
      local.get 194
      i32.store offset=1924
      local.get 193
      i64.load offset=2084 align=4
      local.set 195
      local.get 193
      local.get 195
      i64.store offset=1916 align=4
      local.get 193
      i64.load offset=2076 align=4
      local.set 196
      local.get 193
      local.get 196
      i64.store offset=1908 align=4
    end
    i32.const 0
    local.set 197
    local.get 197
    i32.load8_u offset=2232
    local.set 198
    i32.const 255
    local.set 199
    local.get 198
    local.get 199
    i32.and
    local.set 200
    i32.const 0
    local.set 201
    local.get 201
    i32.load offset=2096
    local.set 202
    local.get 200
    local.set 203
    local.get 202
    local.set 204
    local.get 203
    local.get 204
    i32.gt_u
    local.set 205
    i32.const 1
    local.set 206
    local.get 205
    local.get 206
    i32.and
    local.set 207
    block  ;; label = @1
      local.get 207
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 208
      i32.const 0
      local.set 209
      local.get 209
      local.get 208
      i32.store16 offset=1900
    end
    i32.const 0
    local.set 210
    local.get 210
    f32.load offset=1872
    local.set 211
    f32.const 0x1.c2p+9 (;=900;)
    local.set 212
    local.get 211
    local.get 212
    f32.gt
    local.set 213
    i32.const 1
    local.set 214
    local.get 213
    local.get 214
    i32.and
    local.set 215
    block  ;; label = @1
      local.get 215
      i32.eqz
      br_if 0 (;@1;)
      f32.const 0x1.9p+6 (;=100;)
      local.set 216
      i32.const 0
      local.set 217
      local.get 217
      local.get 216
      f32.store offset=1872
      i32.const 1868
      local.set 218
      i32.const 36
      local.set 219
      local.get 218
      local.get 219
      i32.add
      local.set 220
      i32.const 400
      local.set 221
      local.get 220
      local.get 221
      call $takeDamage
      i32.const 0
      local.set 222
      local.get 222
      f32.convert_i32_s
      local.set 223
      i32.const 0
      local.set 224
      local.get 224
      local.get 223
      f32.store offset=1868
      call $resetGame
    end
    i32.const 0
    local.set 225
    i32.const 0
    local.set 226
    local.get 226
    local.get 225
    i32.store8 offset=1902
    i32.const 0
    local.set 227
    local.get 2
    local.get 227
    i32.store16 offset=1070
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load16_u offset=1070
        local.set 228
        i32.const 65535
        local.set 229
        local.get 228
        local.get 229
        i32.and
        local.set 230
        i32.const 0
        local.set 231
        local.get 231
        i32.load8_u offset=1840
        local.set 232
        i32.const 255
        local.set 233
        local.get 232
        local.get 233
        i32.and
        local.set 234
        local.get 230
        local.set 235
        local.get 234
        local.set 236
        local.get 235
        local.get 236
        i32.lt_s
        local.set 237
        i32.const 1
        local.set 238
        local.get 237
        local.get 238
        i32.and
        local.set 239
        local.get 239
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load16_u offset=1070
        local.set 240
        i32.const 65535
        local.set 241
        local.get 240
        local.get 241
        i32.and
        local.set 242
        i32.const 1616
        local.set 243
        i32.const 4
        local.set 244
        local.get 242
        local.get 244
        i32.shl
        local.set 245
        local.get 243
        local.get 245
        i32.add
        local.set 246
        i32.const 0
        local.set 247
        local.get 247
        i64.load offset=2332 align=4
        local.set 248
        i32.const 8
        local.set 249
        i32.const 600
        local.set 250
        local.get 2
        local.get 250
        i32.add
        local.set 251
        local.get 251
        local.get 249
        i32.add
        local.set 252
        local.get 252
        local.get 248
        i64.store
        local.get 247
        i64.load offset=2324 align=4
        local.set 253
        local.get 2
        local.get 253
        i64.store offset=600
        local.get 246
        local.get 249
        i32.add
        local.set 254
        local.get 254
        i64.load align=4
        local.set 255
        i32.const 584
        local.set 256
        local.get 2
        local.get 256
        i32.add
        local.set 257
        local.get 257
        local.get 249
        i32.add
        local.set 258
        local.get 258
        local.get 255
        i64.store
        local.get 246
        i64.load align=4
        local.set 259
        local.get 2
        local.get 259
        i64.store offset=584
        i32.const 600
        local.set 260
        local.get 2
        local.get 260
        i32.add
        local.set 261
        i32.const 584
        local.set 262
        local.get 2
        local.get 262
        i32.add
        local.set 263
        local.get 261
        local.get 263
        call $CheckCollisionRecs
        local.set 264
        i32.const 1
        local.set 265
        local.get 264
        local.get 265
        i32.and
        local.set 266
        block  ;; label = @3
          local.get 266
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 267
          local.get 267
          f32.load offset=2328
          local.set 268
          i32.const 0
          local.set 269
          local.get 269
          f32.load offset=2336
          local.set 270
          local.get 268
          local.get 270
          f32.sub
          local.set 271
          local.get 2
          i32.load16_u offset=1070
          local.set 272
          i32.const 65535
          local.set 273
          local.get 272
          local.get 273
          i32.and
          local.set 274
          i32.const 1616
          local.set 275
          i32.const 4
          local.set 276
          local.get 274
          local.get 276
          i32.shl
          local.set 277
          local.get 275
          local.get 277
          i32.add
          local.set 278
          local.get 278
          f32.load offset=4
          local.set 279
          local.get 271
          local.get 279
          f32.le
          local.set 280
          i32.const 1
          local.set 281
          local.get 280
          local.get 281
          i32.and
          local.set 282
          local.get 282
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 283
          local.get 283
          f32.convert_i32_s
          local.set 284
          i32.const 0
          local.set 285
          local.get 285
          local.get 284
          f32.store offset=1896
          local.get 2
          i32.load16_u offset=1070
          local.set 286
          i32.const 65535
          local.set 287
          local.get 286
          local.get 287
          i32.and
          local.set 288
          i32.const 1616
          local.set 289
          i32.const 4
          local.set 290
          local.get 288
          local.get 290
          i32.shl
          local.set 291
          local.get 289
          local.get 291
          i32.add
          local.set 292
          local.get 292
          f32.load offset=4
          local.set 293
          i32.const 0
          local.set 294
          local.get 294
          f32.load offset=2052
          local.set 295
          local.get 293
          local.get 295
          f32.sub
          local.set 296
          i32.const 0
          local.set 297
          local.get 297
          local.get 296
          f32.store offset=1872
          i32.const 1
          local.set 298
          i32.const 0
          local.set 299
          local.get 299
          local.get 298
          i32.store8 offset=1902
          br 2 (;@1;)
        end
        local.get 2
        i32.load16_u offset=1070
        local.set 300
        i32.const 1
        local.set 301
        local.get 300
        local.get 301
        i32.add
        local.set 302
        local.get 2
        local.get 302
        i32.store16 offset=1070
        br 0 (;@2;)
      end
    end
    i32.const 68
    local.set 303
    local.get 303
    call $IsKeyDown
    local.set 304
    i32.const 1
    local.set 305
    local.get 304
    local.get 305
    i32.and
    local.set 306
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 306
          br_if 0 (;@3;)
          i32.const 262
          local.set 307
          local.get 307
          call $IsKeyDown
          local.set 308
          i32.const 1
          local.set 309
          local.get 308
          local.get 309
          i32.and
          local.set 310
          local.get 310
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 311
        local.get 311
        f32.load offset=1868
        local.set 312
        f32.const 0x1.4p+9 (;=640;)
        local.set 313
        local.get 312
        local.get 313
        f32.ge
        local.set 314
        i32.const 1
        local.set 315
        local.get 314
        local.get 315
        i32.and
        local.set 316
        block  ;; label = @3
          block  ;; label = @4
            local.get 316
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 317
            local.get 317
            f32.load offset=1892
            local.set 318
            i32.const 0
            local.set 319
            local.get 319
            f32.load offset=1844
            local.set 320
            local.get 320
            local.get 318
            f32.sub
            local.set 321
            i32.const 0
            local.set 322
            local.get 322
            local.get 321
            f32.store offset=1844
            i32.const 0
            local.set 323
            i32.const 0
            local.set 324
            local.get 324
            local.get 323
            i32.store offset=1928
            i32.const 0
            local.set 325
            local.get 2
            local.get 325
            i32.store16 offset=1068
            block  ;; label = @5
              loop  ;; label = @6
                local.get 2
                i32.load16_u offset=1068
                local.set 326
                i32.const 65535
                local.set 327
                local.get 326
                local.get 327
                i32.and
                local.set 328
                i32.const 0
                local.set 329
                local.get 329
                i32.load8_u offset=1840
                local.set 330
                i32.const 255
                local.set 331
                local.get 330
                local.get 331
                i32.and
                local.set 332
                local.get 328
                local.set 333
                local.get 332
                local.set 334
                local.get 333
                local.get 334
                i32.lt_s
                local.set 335
                i32.const 1
                local.set 336
                local.get 335
                local.get 336
                i32.and
                local.set 337
                local.get 337
                i32.eqz
                br_if 1 (;@5;)
                i32.const 0
                local.set 338
                local.get 338
                f32.load offset=1892
                local.set 339
                local.get 2
                i32.load16_u offset=1068
                local.set 340
                i32.const 65535
                local.set 341
                local.get 340
                local.get 341
                i32.and
                local.set 342
                i32.const 1616
                local.set 343
                i32.const 4
                local.set 344
                local.get 342
                local.get 344
                i32.shl
                local.set 345
                local.get 343
                local.get 345
                i32.add
                local.set 346
                local.get 346
                f32.load
                local.set 347
                local.get 347
                local.get 339
                f32.sub
                local.set 348
                local.get 346
                local.get 348
                f32.store
                local.get 2
                i32.load16_u offset=1068
                local.set 349
                i32.const 1
                local.set 350
                local.get 349
                local.get 350
                i32.add
                local.set 351
                local.get 2
                local.get 351
                i32.store16 offset=1068
                br 0 (;@6;)
              end
            end
            br 1 (;@3;)
          end
          i32.const 0
          local.set 352
          i32.const 0
          local.set 353
          local.get 353
          local.get 352
          i32.store offset=1928
          i32.const 0
          local.set 354
          local.get 354
          f32.load offset=1892
          local.set 355
          i32.const 0
          local.set 356
          local.get 356
          f32.load offset=1868
          local.set 357
          local.get 357
          local.get 355
          f32.add
          local.set 358
          i32.const 0
          local.set 359
          local.get 359
          local.get 358
          f32.store offset=1868
        end
        i32.const 0
        local.set 360
        local.get 360
        i32.load offset=2116
        local.set 361
        local.get 360
        local.get 361
        i32.store offset=1924
        local.get 360
        i64.load offset=2108 align=4
        local.set 362
        local.get 360
        local.get 362
        i64.store offset=1916 align=4
        local.get 360
        i64.load offset=2100 align=4
        local.set 363
        local.get 360
        local.get 363
        i64.store offset=1908 align=4
        i32.const 0
        local.set 364
        local.get 364
        i32.load offset=2140
        local.set 365
        i32.const 0
        local.set 366
        local.get 366
        local.get 365
        i32.store8 offset=2232
        br 1 (;@1;)
      end
      i32.const 65
      local.set 367
      local.get 367
      call $IsKeyDown
      local.set 368
      i32.const 1
      local.set 369
      local.get 368
      local.get 369
      i32.and
      local.set 370
      block  ;; label = @2
        block  ;; label = @3
          local.get 370
          br_if 0 (;@3;)
          i32.const 263
          local.set 371
          local.get 371
          call $IsKeyDown
          local.set 372
          i32.const 1
          local.set 373
          local.get 372
          local.get 373
          i32.and
          local.set 374
          local.get 374
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 375
        local.get 375
        f32.load offset=1868
        local.set 376
        f32.const 0x1.4p+9 (;=640;)
        local.set 377
        local.get 376
        local.get 377
        f32.ge
        local.set 378
        i32.const 1
        local.set 379
        local.get 378
        local.get 379
        i32.and
        local.set 380
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 380
              br_if 0 (;@5;)
              i32.const 0
              local.set 381
              local.get 381
              f32.load offset=1616
              local.set 382
              f32.const -0x1.4p+2 (;=-5;)
              local.set 383
              local.get 382
              local.get 383
              f32.ge
              local.set 384
              i32.const 1
              local.set 385
              local.get 384
              local.get 385
              i32.and
              local.set 386
              local.get 386
              i32.eqz
              br_if 1 (;@4;)
            end
            i32.const 0
            local.set 387
            local.get 387
            f32.load offset=1868
            local.set 388
            i32.const 0
            local.set 389
            local.get 389
            f32.load offset=1876
            local.set 390
            f32.const 0x1p+1 (;=2;)
            local.set 391
            local.get 390
            local.get 391
            f32.div
            local.set 392
            local.get 388
            local.get 392
            f32.add
            local.set 393
            f32.const 0x1.4p+4 (;=20;)
            local.set 394
            local.get 393
            local.get 394
            f32.sub
            local.set 395
            i32.const 0
            local.set 396
            local.get 396
            f32.convert_i32_s
            local.set 397
            local.get 395
            local.get 397
            f32.ge
            local.set 398
            i32.const 1
            local.set 399
            local.get 398
            local.get 399
            i32.and
            local.set 400
            block  ;; label = @5
              local.get 400
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.set 401
              local.get 401
              f32.load offset=1892
              local.set 402
              i32.const 0
              local.set 403
              local.get 403
              f32.load offset=1868
              local.set 404
              local.get 404
              local.get 402
              f32.sub
              local.set 405
              i32.const 0
              local.set 406
              local.get 406
              local.get 405
              f32.store offset=1868
              i32.const 1
              local.set 407
              i32.const 0
              local.set 408
              local.get 408
              local.get 407
              i32.store offset=1928
            end
            br 1 (;@3;)
          end
          i32.const 1
          local.set 409
          i32.const 0
          local.set 410
          local.get 410
          local.get 409
          i32.store offset=1928
          i32.const 0
          local.set 411
          local.get 411
          f32.load offset=1892
          local.set 412
          i32.const 0
          local.set 413
          local.get 413
          f32.load offset=1844
          local.set 414
          local.get 414
          local.get 412
          f32.add
          local.set 415
          i32.const 0
          local.set 416
          local.get 416
          local.get 415
          f32.store offset=1844
          i32.const 0
          local.set 417
          local.get 2
          local.get 417
          i32.store16 offset=1066
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              i32.load16_u offset=1066
              local.set 418
              i32.const 65535
              local.set 419
              local.get 418
              local.get 419
              i32.and
              local.set 420
              i32.const 0
              local.set 421
              local.get 421
              i32.load8_u offset=1840
              local.set 422
              i32.const 255
              local.set 423
              local.get 422
              local.get 423
              i32.and
              local.set 424
              local.get 420
              local.set 425
              local.get 424
              local.set 426
              local.get 425
              local.get 426
              i32.lt_s
              local.set 427
              i32.const 1
              local.set 428
              local.get 427
              local.get 428
              i32.and
              local.set 429
              local.get 429
              i32.eqz
              br_if 1 (;@4;)
              i32.const 0
              local.set 430
              local.get 430
              f32.load offset=1892
              local.set 431
              local.get 2
              i32.load16_u offset=1066
              local.set 432
              i32.const 65535
              local.set 433
              local.get 432
              local.get 433
              i32.and
              local.set 434
              i32.const 1616
              local.set 435
              i32.const 4
              local.set 436
              local.get 434
              local.get 436
              i32.shl
              local.set 437
              local.get 435
              local.get 437
              i32.add
              local.set 438
              local.get 438
              f32.load
              local.set 439
              local.get 439
              local.get 431
              f32.add
              local.set 440
              local.get 438
              local.get 440
              f32.store
              local.get 2
              i32.load16_u offset=1066
              local.set 441
              i32.const 1
              local.set 442
              local.get 441
              local.get 442
              i32.add
              local.set 443
              local.get 2
              local.get 443
              i32.store16 offset=1066
              br 0 (;@5;)
            end
          end
        end
        i32.const 0
        local.set 444
        local.get 444
        i32.load offset=2136
        local.set 445
        local.get 444
        local.get 445
        i32.store offset=1924
        local.get 444
        i64.load offset=2128 align=4
        local.set 446
        local.get 444
        local.get 446
        i64.store offset=1916 align=4
        local.get 444
        i64.load offset=2120 align=4
        local.set 447
        local.get 444
        local.get 447
        i64.store offset=1908 align=4
        i32.const 0
        local.set 448
        local.get 448
        i32.load offset=2140
        local.set 449
        i32.const 0
        local.set 450
        local.get 450
        local.get 449
        i32.store8 offset=2232
      end
    end
    local.get 2
    f32.load offset=1108
    local.set 451
    i32.const 0
    local.set 452
    local.get 452
    f32.load offset=1896
    local.set 453
    f32.const 0x1.906666p+9 (;=800.8;)
    local.set 454
    local.get 451
    local.get 454
    f32.mul
    local.set 455
    local.get 455
    local.get 453
    f32.add
    local.set 456
    i32.const 0
    local.set 457
    local.get 457
    local.get 456
    f32.store offset=1896
    i32.const 0
    local.set 458
    local.get 458
    i32.load8_u offset=1902
    local.set 459
    i32.const 1
    local.set 460
    local.get 459
    local.get 460
    i32.and
    local.set 461
    block  ;; label = @1
      local.get 461
      i32.eqz
      br_if 0 (;@1;)
      i32.const 87
      local.set 462
      local.get 462
      call $IsKeyDown
      local.set 463
      i32.const 1
      local.set 464
      local.get 463
      local.get 464
      i32.and
      local.set 465
      block  ;; label = @2
        block  ;; label = @3
          local.get 465
          br_if 0 (;@3;)
          i32.const 265
          local.set 466
          local.get 466
          call $IsKeyDown
          local.set 467
          i32.const 1
          local.set 468
          local.get 467
          local.get 468
          i32.and
          local.set 469
          local.get 469
          br_if 0 (;@3;)
          i32.const 32
          local.set 470
          local.get 470
          call $IsKeyDown
          local.set 471
          i32.const 1
          local.set 472
          local.get 471
          local.get 472
          i32.and
          local.set 473
          local.get 473
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 474
        local.get 474
        f32.load offset=1896
        local.set 475
        f32.const 0x1.9ap+8 (;=410;)
        local.set 476
        local.get 475
        local.get 476
        f32.sub
        local.set 477
        i32.const 0
        local.set 478
        local.get 478
        local.get 477
        f32.store offset=1896
        i32.const 0
        local.set 479
        i32.const 0
        local.set 480
        local.get 480
        local.get 479
        i32.store8 offset=1902
      end
    end
    i32.const 0
    local.set 481
    local.get 481
    i32.load8_u offset=1902
    local.set 482
    i32.const 1
    local.set 483
    local.get 482
    local.get 483
    i32.and
    local.set 484
    block  ;; label = @1
      local.get 484
      br_if 0 (;@1;)
      i32.const 0
      local.set 485
      local.get 485
      i32.load offset=2184
      local.set 486
      i32.const 0
      local.set 487
      local.get 487
      local.get 486
      i32.store8 offset=2232
      i32.const 0
      local.set 488
      local.get 488
      i32.load offset=1928
      local.set 489
      block  ;; label = @2
        block  ;; label = @3
          local.get 489
          br_if 0 (;@3;)
          i32.const 0
          local.set 490
          local.get 490
          i32.load offset=2160
          local.set 491
          local.get 490
          local.get 491
          i32.store offset=1924
          local.get 490
          i64.load offset=2152 align=4
          local.set 492
          local.get 490
          local.get 492
          i64.store offset=1916 align=4
          local.get 490
          i64.load offset=2144 align=4
          local.set 493
          local.get 490
          local.get 493
          i64.store offset=1908 align=4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 494
        local.get 494
        i32.load offset=2180
        local.set 495
        local.get 494
        local.get 495
        i32.store offset=1924
        local.get 494
        i64.load offset=2172 align=4
        local.set 496
        local.get 494
        local.get 496
        i64.store offset=1916 align=4
        local.get 494
        i64.load offset=2164 align=4
        local.set 497
        local.get 494
        local.get 497
        i64.store offset=1908 align=4
      end
    end
    i32.const 0
    local.set 498
    local.get 498
    i32.load8_u offset=1902
    local.set 499
    i32.const 1
    local.set 500
    local.get 499
    local.get 500
    i32.and
    local.set 501
    block  ;; label = @1
      local.get 501
      br_if 0 (;@1;)
      i32.const 0
      local.set 502
      local.get 502
      f32.load offset=1896
      local.set 503
      i32.const 0
      local.set 504
      local.get 504
      f32.convert_i32_s
      local.set 505
      local.get 503
      local.get 505
      f32.gt
      local.set 506
      i32.const 1
      local.set 507
      local.get 506
      local.get 507
      i32.and
      local.set 508
      local.get 508
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 509
      local.get 509
      i32.load offset=2228
      local.set 510
      i32.const 0
      local.set 511
      local.get 511
      local.get 510
      i32.store8 offset=2232
      i32.const 0
      local.set 512
      local.get 512
      i32.load offset=1928
      local.set 513
      block  ;; label = @2
        block  ;; label = @3
          local.get 513
          br_if 0 (;@3;)
          i32.const 0
          local.set 514
          local.get 514
          i32.load offset=2204
          local.set 515
          local.get 514
          local.get 515
          i32.store offset=1924
          local.get 514
          i64.load offset=2196 align=4
          local.set 516
          local.get 514
          local.get 516
          i64.store offset=1916 align=4
          local.get 514
          i64.load offset=2188 align=4
          local.set 517
          local.get 514
          local.get 517
          i64.store offset=1908 align=4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 518
        local.get 518
        i32.load offset=2224
        local.set 519
        local.get 518
        local.get 519
        i32.store offset=1924
        local.get 518
        i64.load offset=2216 align=4
        local.set 520
        local.get 518
        local.get 520
        i64.store offset=1916 align=4
        local.get 518
        i64.load offset=2208 align=4
        local.set 521
        local.get 518
        local.get 521
        i64.store offset=1908 align=4
      end
    end
    i32.const 0
    local.set 522
    local.get 522
    i32.load offset=1904
    local.set 523
    i32.const 0
    local.set 524
    local.get 524
    i32.load16_u offset=2280
    local.set 525
    i32.const 65535
    local.set 526
    local.get 525
    local.get 526
    i32.and
    local.set 527
    i32.const 45
    local.set 528
    local.get 527
    local.get 528
    i32.mul
    local.set 529
    i32.const 100
    local.set 530
    local.get 529
    local.get 530
    i32.div_s
    local.set 531
    local.get 523
    local.set 532
    local.get 531
    local.set 533
    local.get 532
    local.get 533
    i32.le_u
    local.set 534
    i32.const 1
    local.set 535
    local.get 534
    local.get 535
    i32.and
    local.set 536
    block  ;; label = @1
      local.get 536
      i32.eqz
      br_if 0 (;@1;)
      i32.const 253
      local.set 537
      local.get 2
      local.get 537
      i32.store8 offset=1056
      i32.const 249
      local.set 538
      local.get 2
      local.get 538
      i32.store8 offset=1057
      i32.const 0
      local.set 539
      local.get 2
      local.get 539
      i32.store8 offset=1058
      i32.const 255
      local.set 540
      local.get 2
      local.get 540
      i32.store8 offset=1059
      i32.const 1056
      local.set 541
      local.get 2
      local.get 541
      i32.add
      local.set 542
      local.get 542
      local.set 543
      local.get 543
      i32.load align=1
      local.set 544
      i32.const 0
      local.set 545
      local.get 545
      local.get 544
      i32.store offset=2316 align=1
    end
    i32.const 0
    local.set 546
    local.get 546
    i32.load offset=1904
    local.set 547
    i32.const 0
    local.set 548
    local.get 548
    i32.load16_u offset=2280
    local.set 549
    i32.const 65535
    local.set 550
    local.get 549
    local.get 550
    i32.and
    local.set 551
    i32.const 30
    local.set 552
    local.get 551
    local.get 552
    i32.mul
    local.set 553
    i32.const 100
    local.set 554
    local.get 553
    local.get 554
    i32.div_s
    local.set 555
    local.get 547
    local.set 556
    local.get 555
    local.set 557
    local.get 556
    local.get 557
    i32.le_u
    local.set 558
    i32.const 1
    local.set 559
    local.get 558
    local.get 559
    i32.and
    local.set 560
    block  ;; label = @1
      local.get 560
      i32.eqz
      br_if 0 (;@1;)
      i32.const 230
      local.set 561
      local.get 2
      local.get 561
      i32.store8 offset=1048
      i32.const 41
      local.set 562
      local.get 2
      local.get 562
      i32.store8 offset=1049
      i32.const 55
      local.set 563
      local.get 2
      local.get 563
      i32.store8 offset=1050
      i32.const 255
      local.set 564
      local.get 2
      local.get 564
      i32.store8 offset=1051
      i32.const 1048
      local.set 565
      local.get 2
      local.get 565
      i32.add
      local.set 566
      local.get 566
      local.set 567
      local.get 567
      i32.load align=1
      local.set 568
      i32.const 0
      local.set 569
      local.get 569
      local.get 568
      i32.store offset=2316 align=1
    end
    call $BeginDrawing
    i32.const 255
    local.set 570
    local.get 2
    local.get 570
    i32.store8 offset=1040
    i32.const 255
    local.set 571
    local.get 2
    local.get 571
    i32.store8 offset=1041
    i32.const 255
    local.set 572
    local.get 2
    local.get 572
    i32.store8 offset=1042
    i32.const 255
    local.set 573
    local.get 2
    local.get 573
    i32.store8 offset=1043
    local.get 2
    i32.load offset=1040
    local.set 574
    local.get 2
    local.get 574
    i32.store offset=580
    i32.const 580
    local.set 575
    local.get 2
    local.get 575
    i32.add
    local.set 576
    local.get 576
    call $ClearBackground
    i32.const 0
    local.set 577
    local.get 577
    i32.load8_u offset=2233
    local.set 578
    i32.const 1
    local.set 579
    local.get 578
    local.get 579
    i32.and
    local.set 580
    block  ;; label = @1
      block  ;; label = @2
        local.get 580
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 581
        local.get 581
        f32.load offset=1844
        local.set 582
        local.get 582
        f64.promote_f32
        local.set 583
        f64.const 0x1.3333333333333p-2 (;=0.3;)
        local.set 584
        local.get 583
        local.get 584
        f64.mul
        local.set 585
        local.get 585
        f32.demote_f64
        local.set 586
        local.get 2
        local.get 586
        f32.store offset=1032
        i32.const -1041235968
        local.set 587
        local.get 2
        local.get 587
        i32.store offset=1036
        i32.const 255
        local.set 588
        local.get 2
        local.get 588
        i32.store8 offset=1024
        local.get 2
        local.get 588
        i32.store8 offset=1025
        local.get 2
        local.get 588
        i32.store8 offset=1026
        local.get 2
        local.get 588
        i32.store8 offset=1027
        i32.const 16
        local.set 589
        i32.const 160
        local.set 590
        local.get 2
        local.get 590
        i32.add
        local.set 591
        local.get 591
        local.get 589
        i32.add
        local.set 592
        local.get 581
        i32.load offset=2008
        local.set 593
        local.get 592
        local.get 593
        i32.store
        i32.const 8
        local.set 594
        i32.const 160
        local.set 595
        local.get 2
        local.get 595
        i32.add
        local.set 596
        local.get 596
        local.get 594
        i32.add
        local.set 597
        local.get 581
        i64.load offset=2000 align=4
        local.set 598
        local.get 597
        local.get 598
        i64.store
        local.get 581
        i64.load offset=1992 align=4
        local.set 599
        local.get 2
        local.get 599
        i64.store offset=160
        local.get 2
        i64.load offset=1032
        local.set 600
        local.get 2
        local.get 600
        i64.store offset=152
        local.get 2
        i32.load offset=1024
        local.set 601
        local.get 2
        local.get 601
        i32.store offset=148
        f32.const 0x1p+1 (;=2;)
        local.set 602
        f32.const 0x0p+0 (;=0;)
        local.set 603
        i32.const 160
        local.set 604
        local.get 2
        local.get 604
        i32.add
        local.set 605
        i32.const 152
        local.set 606
        local.get 2
        local.get 606
        i32.add
        local.set 607
        i32.const 148
        local.set 608
        local.get 2
        local.get 608
        i32.add
        local.set 609
        local.get 605
        local.get 607
        local.get 603
        local.get 602
        local.get 609
        call $DrawTextureEx
        local.get 581
        f32.load offset=1844
        local.set 610
        local.get 610
        f64.promote_f32
        local.set 611
        local.get 611
        local.get 584
        f64.mul
        local.set 612
        f64.const 0x1.f4p+9 (;=1000;)
        local.set 613
        local.get 612
        local.get 613
        f64.add
        local.set 614
        local.get 614
        f32.demote_f64
        local.set 615
        local.get 2
        local.get 615
        f32.store offset=1016
        local.get 2
        local.get 587
        i32.store offset=1020
        local.get 2
        local.get 588
        i32.store8 offset=1008
        local.get 2
        local.get 588
        i32.store8 offset=1009
        local.get 2
        local.get 588
        i32.store8 offset=1010
        local.get 2
        local.get 588
        i32.store8 offset=1011
        i32.const 128
        local.set 616
        local.get 2
        local.get 616
        i32.add
        local.set 617
        local.get 617
        local.get 589
        i32.add
        local.set 618
        local.get 581
        i32.load offset=2008
        local.set 619
        local.get 618
        local.get 619
        i32.store
        i32.const 128
        local.set 620
        local.get 2
        local.get 620
        i32.add
        local.set 621
        local.get 621
        local.get 594
        i32.add
        local.set 622
        local.get 581
        i64.load offset=2000 align=4
        local.set 623
        local.get 622
        local.get 623
        i64.store
        local.get 581
        i64.load offset=1992 align=4
        local.set 624
        local.get 2
        local.get 624
        i64.store offset=128
        local.get 2
        i64.load offset=1016
        local.set 625
        local.get 2
        local.get 625
        i64.store offset=120
        local.get 2
        i32.load offset=1008
        local.set 626
        local.get 2
        local.get 626
        i32.store offset=116
        i32.const 128
        local.set 627
        local.get 2
        local.get 627
        i32.add
        local.set 628
        i32.const 120
        local.set 629
        local.get 2
        local.get 629
        i32.add
        local.set 630
        i32.const 116
        local.set 631
        local.get 2
        local.get 631
        i32.add
        local.set 632
        local.get 628
        local.get 630
        local.get 603
        local.get 602
        local.get 632
        call $DrawTextureEx
        local.get 581
        f32.load offset=1844
        local.set 633
        local.get 633
        f64.promote_f32
        local.set 634
        f64.const 0x1.999999999999ap-3 (;=0.2;)
        local.set 635
        local.get 634
        local.get 635
        f64.mul
        local.set 636
        local.get 636
        f32.demote_f64
        local.set 637
        local.get 2
        local.get 637
        f32.store offset=1000
        local.get 2
        local.get 587
        i32.store offset=1004
        local.get 2
        local.get 588
        i32.store8 offset=992
        local.get 2
        local.get 588
        i32.store8 offset=993
        local.get 2
        local.get 588
        i32.store8 offset=994
        local.get 2
        local.get 588
        i32.store8 offset=995
        i32.const 96
        local.set 638
        local.get 2
        local.get 638
        i32.add
        local.set 639
        local.get 639
        local.get 589
        i32.add
        local.set 640
        local.get 581
        i32.load offset=1988
        local.set 641
        local.get 640
        local.get 641
        i32.store
        i32.const 96
        local.set 642
        local.get 2
        local.get 642
        i32.add
        local.set 643
        local.get 643
        local.get 594
        i32.add
        local.set 644
        local.get 581
        i64.load offset=1980 align=4
        local.set 645
        local.get 644
        local.get 645
        i64.store
        local.get 581
        i64.load offset=1972 align=4
        local.set 646
        local.get 2
        local.get 646
        i64.store offset=96
        local.get 2
        i64.load offset=1000
        local.set 647
        local.get 2
        local.get 647
        i64.store offset=88
        local.get 2
        i32.load offset=992
        local.set 648
        local.get 2
        local.get 648
        i32.store offset=84
        i32.const 96
        local.set 649
        local.get 2
        local.get 649
        i32.add
        local.set 650
        i32.const 88
        local.set 651
        local.get 2
        local.get 651
        i32.add
        local.set 652
        i32.const 84
        local.set 653
        local.get 2
        local.get 653
        i32.add
        local.set 654
        local.get 650
        local.get 652
        local.get 603
        local.get 602
        local.get 654
        call $DrawTextureEx
        local.get 581
        f32.load offset=1844
        local.set 655
        local.get 655
        f64.promote_f32
        local.set 656
        f64.const 0x1.999999999999ap-4 (;=0.1;)
        local.set 657
        local.get 656
        local.get 657
        f64.mul
        local.set 658
        local.get 658
        f32.demote_f64
        local.set 659
        local.get 2
        local.get 659
        f32.store offset=984
        f32.const -0x1.ep+4 (;=-30;)
        local.set 660
        local.get 2
        local.get 660
        f32.store offset=988
        i32.const 255
        local.set 661
        local.get 2
        local.get 661
        i32.store8 offset=976
        i32.const 255
        local.set 662
        local.get 2
        local.get 662
        i32.store8 offset=977
        i32.const 255
        local.set 663
        local.get 2
        local.get 663
        i32.store8 offset=978
        i32.const 255
        local.set 664
        local.get 2
        local.get 664
        i32.store8 offset=979
        i32.const 0
        local.set 665
        local.get 665
        i32.load offset=1968
        local.set 666
        i32.const 208
        local.set 667
        local.get 2
        local.get 667
        i32.add
        local.set 668
        local.get 668
        local.get 666
        i32.store
        local.get 665
        i64.load offset=1960 align=4
        local.set 669
        i32.const 200
        local.set 670
        local.get 2
        local.get 670
        i32.add
        local.set 671
        local.get 671
        local.get 669
        i64.store
        local.get 665
        i64.load offset=1952 align=4
        local.set 672
        local.get 2
        local.get 672
        i64.store offset=192
        local.get 2
        i64.load offset=984
        local.set 673
        local.get 2
        local.get 673
        i64.store offset=184
        local.get 2
        i32.load offset=976
        local.set 674
        local.get 2
        local.get 674
        i32.store offset=180
        f32.const 0x1p+1 (;=2;)
        local.set 675
        f32.const 0x0p+0 (;=0;)
        local.set 676
        i32.const 192
        local.set 677
        local.get 2
        local.get 677
        i32.add
        local.set 678
        i32.const 184
        local.set 679
        local.get 2
        local.get 679
        i32.add
        local.set 680
        i32.const 180
        local.set 681
        local.get 2
        local.get 681
        i32.add
        local.set 682
        local.get 678
        local.get 680
        local.get 676
        local.get 675
        local.get 682
        call $DrawTextureEx
        i32.const 0
        local.set 683
        local.get 2
        local.get 683
        i32.store16 offset=974
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load16_u offset=974
            local.set 684
            i32.const 65535
            local.set 685
            local.get 684
            local.get 685
            i32.and
            local.set 686
            i32.const 0
            local.set 687
            local.get 687
            i32.load8_u offset=1840
            local.set 688
            i32.const 255
            local.set 689
            local.get 688
            local.get 689
            i32.and
            local.set 690
            local.get 686
            local.set 691
            local.get 690
            local.set 692
            local.get 691
            local.get 692
            i32.lt_s
            local.set 693
            i32.const 1
            local.set 694
            local.get 693
            local.get 694
            i32.and
            local.set 695
            local.get 695
            i32.eqz
            br_if 1 (;@3;)
            f32.const 0x1.8cp+6 (;=99;)
            local.set 696
            local.get 2
            local.get 696
            f32.store offset=952
            i32.const 0
            local.set 697
            local.get 697
            f32.convert_i32_s
            local.set 698
            local.get 2
            local.get 698
            f32.store offset=956
            f32.const 0x1.9p+4 (;=25;)
            local.set 699
            local.get 2
            local.get 699
            f32.store offset=960
            f32.const 0x1.04p+6 (;=65;)
            local.set 700
            local.get 2
            local.get 700
            f32.store offset=964
            local.get 2
            i32.load16_u offset=974
            local.set 701
            i32.const 65535
            local.set 702
            local.get 701
            local.get 702
            i32.and
            local.set 703
            i32.const 1616
            local.set 704
            i32.const 4
            local.set 705
            local.get 703
            local.get 705
            i32.shl
            local.set 706
            local.get 704
            local.get 706
            i32.add
            local.set 707
            i32.const 0
            local.set 708
            local.get 708
            f32.convert_i32_s
            local.set 709
            local.get 2
            local.get 709
            f32.store offset=944
            i32.const 0
            local.set 710
            local.get 710
            f32.convert_i32_s
            local.set 711
            local.get 2
            local.get 711
            f32.store offset=948
            i32.const 255
            local.set 712
            local.get 2
            local.get 712
            i32.store8 offset=936
            i32.const 255
            local.set 713
            local.get 2
            local.get 713
            i32.store8 offset=937
            i32.const 255
            local.set 714
            local.get 2
            local.get 714
            i32.store8 offset=938
            i32.const 255
            local.set 715
            local.get 2
            local.get 715
            i32.store8 offset=939
            i32.const 0
            local.set 716
            local.get 716
            i32.load offset=1948
            local.set 717
            i32.const 72
            local.set 718
            local.get 2
            local.get 718
            i32.add
            local.set 719
            local.get 719
            local.get 717
            i32.store
            local.get 716
            i64.load offset=1940 align=4
            local.set 720
            i32.const 8
            local.set 721
            i32.const 56
            local.set 722
            local.get 2
            local.get 722
            i32.add
            local.set 723
            local.get 723
            local.get 721
            i32.add
            local.set 724
            local.get 724
            local.get 720
            i64.store
            local.get 716
            i64.load offset=1932 align=4
            local.set 725
            local.get 2
            local.get 725
            i64.store offset=56
            i32.const 40
            local.set 726
            local.get 2
            local.get 726
            i32.add
            local.set 727
            local.get 727
            local.get 721
            i32.add
            local.set 728
            i32.const 952
            local.set 729
            local.get 2
            local.get 729
            i32.add
            local.set 730
            local.get 730
            local.get 721
            i32.add
            local.set 731
            local.get 731
            i64.load
            local.set 732
            local.get 728
            local.get 732
            i64.store
            local.get 2
            i64.load offset=952
            local.set 733
            local.get 2
            local.get 733
            i64.store offset=40
            local.get 707
            local.get 721
            i32.add
            local.set 734
            local.get 734
            i64.load align=4
            local.set 735
            i32.const 24
            local.set 736
            local.get 2
            local.get 736
            i32.add
            local.set 737
            local.get 737
            local.get 721
            i32.add
            local.set 738
            local.get 738
            local.get 735
            i64.store
            local.get 707
            i64.load align=4
            local.set 739
            local.get 2
            local.get 739
            i64.store offset=24
            local.get 2
            i64.load offset=944
            local.set 740
            local.get 2
            local.get 740
            i64.store offset=16
            local.get 2
            i32.load offset=936
            local.set 741
            local.get 2
            local.get 741
            i32.store offset=12
            f32.const 0x0p+0 (;=0;)
            local.set 742
            i32.const 56
            local.set 743
            local.get 2
            local.get 743
            i32.add
            local.set 744
            i32.const 40
            local.set 745
            local.get 2
            local.get 745
            i32.add
            local.set 746
            i32.const 24
            local.set 747
            local.get 2
            local.get 747
            i32.add
            local.set 748
            i32.const 16
            local.set 749
            local.get 2
            local.get 749
            i32.add
            local.set 750
            i32.const 12
            local.set 751
            local.get 2
            local.get 751
            i32.add
            local.set 752
            local.get 744
            local.get 746
            local.get 748
            local.get 750
            local.get 742
            local.get 752
            call $DrawTexturePro
            local.get 2
            i32.load16_u offset=974
            local.set 753
            i32.const 1
            local.set 754
            local.get 753
            local.get 754
            i32.add
            local.set 755
            local.get 2
            local.get 755
            i32.store16 offset=974
            br 0 (;@4;)
          end
        end
        i32.const 255
        local.set 756
        local.get 2
        local.get 756
        i32.store8 offset=928
        i32.const 255
        local.set 757
        local.get 2
        local.get 757
        i32.store8 offset=929
        i32.const 255
        local.set 758
        local.get 2
        local.get 758
        i32.store8 offset=930
        i32.const 255
        local.set 759
        local.get 2
        local.get 759
        i32.store8 offset=931
        local.get 2
        i32.load offset=928
        local.set 760
        local.get 2
        local.get 760
        i32.store offset=80
        i32.const 80
        local.set 761
        local.get 2
        local.get 761
        i32.add
        local.set 762
        local.get 762
        call $DrawGameOver
        br 1 (;@1;)
      end
      i32.const 0
      local.set 763
      local.get 763
      f32.load offset=1844
      local.set 764
      local.get 764
      f64.promote_f32
      local.set 765
      f64.const 0x1.3333333333333p-2 (;=0.3;)
      local.set 766
      local.get 765
      local.get 766
      f64.mul
      local.set 767
      local.get 767
      f32.demote_f64
      local.set 768
      local.get 2
      local.get 768
      f32.store offset=920
      i32.const -1041235968
      local.set 769
      local.get 2
      local.get 769
      i32.store offset=924
      i32.const 255
      local.set 770
      local.get 2
      local.get 770
      i32.store8 offset=912
      local.get 2
      local.get 770
      i32.store8 offset=913
      local.get 2
      local.get 770
      i32.store8 offset=914
      local.get 2
      local.get 770
      i32.store8 offset=915
      i32.const 16
      local.set 771
      i32.const 424
      local.set 772
      local.get 2
      local.get 772
      i32.add
      local.set 773
      local.get 773
      local.get 771
      i32.add
      local.set 774
      local.get 763
      i32.load offset=2008
      local.set 775
      local.get 774
      local.get 775
      i32.store
      i32.const 8
      local.set 776
      i32.const 424
      local.set 777
      local.get 2
      local.get 777
      i32.add
      local.set 778
      local.get 778
      local.get 776
      i32.add
      local.set 779
      local.get 763
      i64.load offset=2000 align=4
      local.set 780
      local.get 779
      local.get 780
      i64.store
      local.get 763
      i64.load offset=1992 align=4
      local.set 781
      local.get 2
      local.get 781
      i64.store offset=424
      local.get 2
      i64.load offset=920
      local.set 782
      local.get 2
      local.get 782
      i64.store offset=416
      local.get 2
      i32.load offset=912
      local.set 783
      local.get 2
      local.get 783
      i32.store offset=412
      f32.const 0x1p+1 (;=2;)
      local.set 784
      f32.const 0x0p+0 (;=0;)
      local.set 785
      i32.const 424
      local.set 786
      local.get 2
      local.get 786
      i32.add
      local.set 787
      i32.const 416
      local.set 788
      local.get 2
      local.get 788
      i32.add
      local.set 789
      i32.const 412
      local.set 790
      local.get 2
      local.get 790
      i32.add
      local.set 791
      local.get 787
      local.get 789
      local.get 785
      local.get 784
      local.get 791
      call $DrawTextureEx
      local.get 763
      f32.load offset=1844
      local.set 792
      local.get 792
      f64.promote_f32
      local.set 793
      local.get 793
      local.get 766
      f64.mul
      local.set 794
      f64.const 0x1.f4p+9 (;=1000;)
      local.set 795
      local.get 794
      local.get 795
      f64.add
      local.set 796
      local.get 796
      f32.demote_f64
      local.set 797
      local.get 2
      local.get 797
      f32.store offset=904
      local.get 2
      local.get 769
      i32.store offset=908
      local.get 2
      local.get 770
      i32.store8 offset=896
      local.get 2
      local.get 770
      i32.store8 offset=897
      local.get 2
      local.get 770
      i32.store8 offset=898
      local.get 2
      local.get 770
      i32.store8 offset=899
      i32.const 392
      local.set 798
      local.get 2
      local.get 798
      i32.add
      local.set 799
      local.get 799
      local.get 771
      i32.add
      local.set 800
      local.get 763
      i32.load offset=2008
      local.set 801
      local.get 800
      local.get 801
      i32.store
      i32.const 392
      local.set 802
      local.get 2
      local.get 802
      i32.add
      local.set 803
      local.get 803
      local.get 776
      i32.add
      local.set 804
      local.get 763
      i64.load offset=2000 align=4
      local.set 805
      local.get 804
      local.get 805
      i64.store
      local.get 763
      i64.load offset=1992 align=4
      local.set 806
      local.get 2
      local.get 806
      i64.store offset=392
      local.get 2
      i64.load offset=904
      local.set 807
      local.get 2
      local.get 807
      i64.store offset=384
      local.get 2
      i32.load offset=896
      local.set 808
      local.get 2
      local.get 808
      i32.store offset=380
      i32.const 392
      local.set 809
      local.get 2
      local.get 809
      i32.add
      local.set 810
      i32.const 384
      local.set 811
      local.get 2
      local.get 811
      i32.add
      local.set 812
      i32.const 380
      local.set 813
      local.get 2
      local.get 813
      i32.add
      local.set 814
      local.get 810
      local.get 812
      local.get 785
      local.get 784
      local.get 814
      call $DrawTextureEx
      local.get 763
      f32.load offset=1844
      local.set 815
      local.get 815
      f64.promote_f32
      local.set 816
      f64.const 0x1.999999999999ap-3 (;=0.2;)
      local.set 817
      local.get 816
      local.get 817
      f64.mul
      local.set 818
      local.get 818
      f32.demote_f64
      local.set 819
      local.get 2
      local.get 819
      f32.store offset=888
      local.get 2
      local.get 769
      i32.store offset=892
      local.get 2
      local.get 770
      i32.store8 offset=880
      local.get 2
      local.get 770
      i32.store8 offset=881
      local.get 2
      local.get 770
      i32.store8 offset=882
      local.get 2
      local.get 770
      i32.store8 offset=883
      i32.const 360
      local.set 820
      local.get 2
      local.get 820
      i32.add
      local.set 821
      local.get 821
      local.get 771
      i32.add
      local.set 822
      local.get 763
      i32.load offset=1988
      local.set 823
      local.get 822
      local.get 823
      i32.store
      i32.const 360
      local.set 824
      local.get 2
      local.get 824
      i32.add
      local.set 825
      local.get 825
      local.get 776
      i32.add
      local.set 826
      local.get 763
      i64.load offset=1980 align=4
      local.set 827
      local.get 826
      local.get 827
      i64.store
      local.get 763
      i64.load offset=1972 align=4
      local.set 828
      local.get 2
      local.get 828
      i64.store offset=360
      local.get 2
      i64.load offset=888
      local.set 829
      local.get 2
      local.get 829
      i64.store offset=352
      local.get 2
      i32.load offset=880
      local.set 830
      local.get 2
      local.get 830
      i32.store offset=348
      i32.const 360
      local.set 831
      local.get 2
      local.get 831
      i32.add
      local.set 832
      i32.const 352
      local.set 833
      local.get 2
      local.get 833
      i32.add
      local.set 834
      i32.const 348
      local.set 835
      local.get 2
      local.get 835
      i32.add
      local.set 836
      local.get 832
      local.get 834
      local.get 785
      local.get 784
      local.get 836
      call $DrawTextureEx
      local.get 763
      f32.load offset=1844
      local.set 837
      local.get 837
      f64.promote_f32
      local.set 838
      f64.const 0x1.999999999999ap-4 (;=0.1;)
      local.set 839
      local.get 838
      local.get 839
      f64.mul
      local.set 840
      local.get 840
      f32.demote_f64
      local.set 841
      local.get 2
      local.get 841
      f32.store offset=872
      f32.const -0x1.ep+4 (;=-30;)
      local.set 842
      local.get 2
      local.get 842
      f32.store offset=876
      i32.const 255
      local.set 843
      local.get 2
      local.get 843
      i32.store8 offset=864
      i32.const 255
      local.set 844
      local.get 2
      local.get 844
      i32.store8 offset=865
      i32.const 255
      local.set 845
      local.get 2
      local.get 845
      i32.store8 offset=866
      i32.const 255
      local.set 846
      local.get 2
      local.get 846
      i32.store8 offset=867
      i32.const 0
      local.set 847
      local.get 847
      i32.load offset=1968
      local.set 848
      i32.const 472
      local.set 849
      local.get 2
      local.get 849
      i32.add
      local.set 850
      local.get 850
      local.get 848
      i32.store
      local.get 847
      i64.load offset=1960 align=4
      local.set 851
      i32.const 464
      local.set 852
      local.get 2
      local.get 852
      i32.add
      local.set 853
      local.get 853
      local.get 851
      i64.store
      local.get 847
      i64.load offset=1952 align=4
      local.set 854
      local.get 2
      local.get 854
      i64.store offset=456
      local.get 2
      i64.load offset=872
      local.set 855
      local.get 2
      local.get 855
      i64.store offset=448
      local.get 2
      i32.load offset=864
      local.set 856
      local.get 2
      local.get 856
      i32.store offset=444
      f32.const 0x1p+1 (;=2;)
      local.set 857
      f32.const 0x0p+0 (;=0;)
      local.set 858
      i32.const 456
      local.set 859
      local.get 2
      local.get 859
      i32.add
      local.set 860
      i32.const 448
      local.set 861
      local.get 2
      local.get 861
      i32.add
      local.set 862
      i32.const 444
      local.set 863
      local.get 2
      local.get 863
      i32.add
      local.set 864
      local.get 860
      local.get 862
      local.get 858
      local.get 857
      local.get 864
      call $DrawTextureEx
      i32.const 245
      local.set 865
      local.get 2
      local.get 865
      i32.store8 offset=856
      i32.const 245
      local.set 866
      local.get 2
      local.get 866
      i32.store8 offset=857
      i32.const 245
      local.set 867
      local.get 2
      local.get 867
      i32.store8 offset=858
      i32.const 255
      local.set 868
      local.get 2
      local.get 868
      i32.store8 offset=859
      i32.const 0
      local.set 869
      local.get 869
      i64.load offset=2292 align=4
      local.set 870
      i32.const 488
      local.set 871
      local.get 2
      local.get 871
      i32.add
      local.set 872
      local.get 872
      local.get 870
      i64.store
      local.get 869
      i64.load offset=2284 align=4
      local.set 873
      local.get 2
      local.get 873
      i64.store offset=480
      local.get 2
      i32.load offset=856
      local.set 874
      local.get 2
      local.get 874
      i32.store offset=476
      i32.const 480
      local.set 875
      local.get 2
      local.get 875
      i32.add
      local.set 876
      i32.const 476
      local.set 877
      local.get 2
      local.get 877
      i32.add
      local.set 878
      local.get 876
      local.get 878
      call $DrawRectangleRec
      i32.const 0
      local.set 879
      local.get 879
      i64.load offset=2308 align=4
      local.set 880
      i32.const 512
      local.set 881
      local.get 2
      local.get 881
      i32.add
      local.set 882
      local.get 882
      local.get 880
      i64.store
      local.get 879
      i64.load offset=2300 align=4
      local.set 883
      local.get 2
      local.get 883
      i64.store offset=504
      local.get 879
      i32.load offset=2316 align=1
      local.set 884
      local.get 2
      local.get 884
      i32.store offset=500
      i32.const 504
      local.set 885
      local.get 2
      local.get 885
      i32.add
      local.set 886
      i32.const 500
      local.set 887
      local.get 2
      local.get 887
      i32.add
      local.set 888
      local.get 886
      local.get 888
      call $DrawRectangleRec
      i32.const 130
      local.set 889
      local.get 2
      local.get 889
      i32.store8 offset=848
      i32.const 130
      local.set 890
      local.get 2
      local.get 890
      i32.store8 offset=849
      i32.const 130
      local.set 891
      local.get 2
      local.get 891
      i32.store8 offset=850
      i32.const 255
      local.set 892
      local.get 2
      local.get 892
      i32.store8 offset=851
      i32.const 0
      local.set 893
      local.get 893
      i64.load offset=2292 align=4
      local.set 894
      i32.const 536
      local.set 895
      local.get 2
      local.get 895
      i32.add
      local.set 896
      local.get 896
      local.get 894
      i64.store
      local.get 893
      i64.load offset=2284 align=4
      local.set 897
      local.get 2
      local.get 897
      i64.store offset=528
      local.get 2
      i32.load offset=848
      local.set 898
      local.get 2
      local.get 898
      i32.store offset=524
      f32.const 0x1.8p+1 (;=3;)
      local.set 899
      i32.const 528
      local.set 900
      local.get 2
      local.get 900
      i32.add
      local.set 901
      i32.const 524
      local.set 902
      local.get 2
      local.get 902
      i32.add
      local.set 903
      local.get 901
      local.get 899
      local.get 903
      call $DrawRectangleLinesEx
      i32.const 0
      local.set 904
      local.get 904
      f32.convert_i32_s
      local.set 905
      local.get 2
      local.get 905
      f32.store offset=840
      i32.const 0
      local.set 906
      local.get 906
      f32.convert_i32_s
      local.set 907
      local.get 2
      local.get 907
      f32.store offset=844
      i32.const 255
      local.set 908
      local.get 2
      local.get 908
      i32.store8 offset=832
      i32.const 255
      local.set 909
      local.get 2
      local.get 909
      i32.store8 offset=833
      i32.const 255
      local.set 910
      local.get 2
      local.get 910
      i32.store8 offset=834
      i32.const 255
      local.set 911
      local.get 2
      local.get 911
      i32.store8 offset=835
      i32.const 0
      local.set 912
      local.get 912
      i32.load offset=2028
      local.set 913
      i32.const 576
      local.set 914
      local.get 2
      local.get 914
      i32.add
      local.set 915
      local.get 915
      local.get 913
      i32.store
      local.get 912
      i64.load offset=2020 align=4
      local.set 916
      i32.const 568
      local.set 917
      local.get 2
      local.get 917
      i32.add
      local.set 918
      local.get 918
      local.get 916
      i64.store
      local.get 912
      i64.load offset=2012 align=4
      local.set 919
      local.get 2
      local.get 919
      i64.store offset=560
      local.get 2
      i64.load offset=840
      local.set 920
      local.get 2
      local.get 920
      i64.store offset=552
      local.get 2
      i32.load offset=832
      local.set 921
      local.get 2
      local.get 921
      i32.store offset=548
      f32.const 0x1.666666p+1 (;=2.8;)
      local.set 922
      f32.const 0x0p+0 (;=0;)
      local.set 923
      i32.const 560
      local.set 924
      local.get 2
      local.get 924
      i32.add
      local.set 925
      i32.const 552
      local.set 926
      local.get 2
      local.get 926
      i32.add
      local.set 927
      i32.const 548
      local.set 928
      local.get 2
      local.get 928
      i32.add
      local.set 929
      local.get 925
      local.get 927
      local.get 923
      local.get 922
      local.get 929
      call $DrawTextureEx
      i32.const 0
      local.set 930
      local.get 2
      local.get 930
      i32.store16 offset=830
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load16_u offset=830
          local.set 931
          i32.const 65535
          local.set 932
          local.get 931
          local.get 932
          i32.and
          local.set 933
          i32.const 0
          local.set 934
          local.get 934
          i32.load8_u offset=1840
          local.set 935
          i32.const 255
          local.set 936
          local.get 935
          local.get 936
          i32.and
          local.set 937
          local.get 933
          local.set 938
          local.get 937
          local.set 939
          local.get 938
          local.get 939
          i32.lt_s
          local.set 940
          i32.const 1
          local.set 941
          local.get 940
          local.get 941
          i32.and
          local.set 942
          local.get 942
          i32.eqz
          br_if 1 (;@2;)
          f32.const 0x1.8cp+6 (;=99;)
          local.set 943
          local.get 2
          local.get 943
          f32.store offset=808
          i32.const 0
          local.set 944
          local.get 944
          f32.convert_i32_s
          local.set 945
          local.get 2
          local.get 945
          f32.store offset=812
          f32.const 0x1.9p+4 (;=25;)
          local.set 946
          local.get 2
          local.get 946
          f32.store offset=816
          f32.const 0x1.04p+6 (;=65;)
          local.set 947
          local.get 2
          local.get 947
          f32.store offset=820
          local.get 2
          i32.load16_u offset=830
          local.set 948
          i32.const 65535
          local.set 949
          local.get 948
          local.get 949
          i32.and
          local.set 950
          i32.const 1616
          local.set 951
          i32.const 4
          local.set 952
          local.get 950
          local.get 952
          i32.shl
          local.set 953
          local.get 951
          local.get 953
          i32.add
          local.set 954
          i32.const 0
          local.set 955
          local.get 955
          f32.convert_i32_s
          local.set 956
          local.get 2
          local.get 956
          f32.store offset=800
          i32.const 0
          local.set 957
          local.get 957
          f32.convert_i32_s
          local.set 958
          local.get 2
          local.get 958
          f32.store offset=804
          i32.const 255
          local.set 959
          local.get 2
          local.get 959
          i32.store8 offset=792
          i32.const 255
          local.set 960
          local.get 2
          local.get 960
          i32.store8 offset=793
          i32.const 255
          local.set 961
          local.get 2
          local.get 961
          i32.store8 offset=794
          i32.const 255
          local.set 962
          local.get 2
          local.get 962
          i32.store8 offset=795
          i32.const 0
          local.set 963
          local.get 963
          i32.load offset=1948
          local.set 964
          i32.const 272
          local.set 965
          local.get 2
          local.get 965
          i32.add
          local.set 966
          local.get 966
          local.get 964
          i32.store
          local.get 963
          i64.load offset=1940 align=4
          local.set 967
          i32.const 8
          local.set 968
          i32.const 256
          local.set 969
          local.get 2
          local.get 969
          i32.add
          local.set 970
          local.get 970
          local.get 968
          i32.add
          local.set 971
          local.get 971
          local.get 967
          i64.store
          local.get 963
          i64.load offset=1932 align=4
          local.set 972
          local.get 2
          local.get 972
          i64.store offset=256
          i32.const 240
          local.set 973
          local.get 2
          local.get 973
          i32.add
          local.set 974
          local.get 974
          local.get 968
          i32.add
          local.set 975
          i32.const 808
          local.set 976
          local.get 2
          local.get 976
          i32.add
          local.set 977
          local.get 977
          local.get 968
          i32.add
          local.set 978
          local.get 978
          i64.load
          local.set 979
          local.get 975
          local.get 979
          i64.store
          local.get 2
          i64.load offset=808
          local.set 980
          local.get 2
          local.get 980
          i64.store offset=240
          local.get 954
          local.get 968
          i32.add
          local.set 981
          local.get 981
          i64.load align=4
          local.set 982
          i32.const 224
          local.set 983
          local.get 2
          local.get 983
          i32.add
          local.set 984
          local.get 984
          local.get 968
          i32.add
          local.set 985
          local.get 985
          local.get 982
          i64.store
          local.get 954
          i64.load align=4
          local.set 986
          local.get 2
          local.get 986
          i64.store offset=224
          local.get 2
          i64.load offset=800
          local.set 987
          local.get 2
          local.get 987
          i64.store offset=216
          local.get 2
          i32.load offset=792
          local.set 988
          local.get 2
          local.get 988
          i32.store offset=212
          f32.const 0x0p+0 (;=0;)
          local.set 989
          i32.const 256
          local.set 990
          local.get 2
          local.get 990
          i32.add
          local.set 991
          i32.const 240
          local.set 992
          local.get 2
          local.get 992
          i32.add
          local.set 993
          i32.const 224
          local.set 994
          local.get 2
          local.get 994
          i32.add
          local.set 995
          i32.const 216
          local.set 996
          local.get 2
          local.get 996
          i32.add
          local.set 997
          i32.const 212
          local.set 998
          local.get 2
          local.get 998
          i32.add
          local.set 999
          local.get 991
          local.get 993
          local.get 995
          local.get 997
          local.get 989
          local.get 999
          call $DrawTexturePro
          local.get 2
          i32.load16_u offset=830
          local.set 1000
          i32.const 1
          local.set 1001
          local.get 1000
          local.get 1001
          i32.add
          local.set 1002
          local.get 2
          local.get 1002
          i32.store16 offset=830
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.set 1003
      local.get 1003
      f32.load offset=1884
      local.set 1004
      i32.const 0
      local.set 1005
      local.get 1005
      i32.load16_u offset=1900
      local.set 1006
      i32.const 65535
      local.set 1007
      local.get 1006
      local.get 1007
      i32.and
      local.set 1008
      local.get 1008
      f32.convert_i32_s
      local.set 1009
      local.get 1004
      local.get 1009
      f32.mul
      local.set 1010
      local.get 2
      local.get 1010
      f32.store offset=776
      i32.const 0
      local.set 1011
      local.get 1011
      f32.convert_i32_s
      local.set 1012
      local.get 2
      local.get 1012
      f32.store offset=780
      i32.const 0
      local.set 1013
      local.get 1013
      f32.load offset=1884
      local.set 1014
      local.get 2
      local.get 1014
      f32.store offset=784
      i32.const 0
      local.set 1015
      local.get 1015
      f32.load offset=1888
      local.set 1016
      local.get 2
      local.get 1016
      f32.store offset=788
      i32.const 0
      local.set 1017
      local.get 1017
      f32.convert_i32_s
      local.set 1018
      local.get 2
      local.get 1018
      f32.store offset=768
      i32.const 0
      local.set 1019
      local.get 1019
      f32.convert_i32_s
      local.set 1020
      local.get 2
      local.get 1020
      f32.store offset=772
      i32.const 255
      local.set 1021
      local.get 2
      local.get 1021
      i32.store8 offset=760
      i32.const 255
      local.set 1022
      local.get 2
      local.get 1022
      i32.store8 offset=761
      i32.const 255
      local.set 1023
      local.get 2
      local.get 1023
      i32.store8 offset=762
      i32.const 255
      local.set 1024
      local.get 2
      local.get 1024
      i32.store8 offset=763
      i32.const 0
      local.set 1025
      local.get 1025
      i32.load offset=1924
      local.set 1026
      i32.const 336
      local.set 1027
      local.get 2
      local.get 1027
      i32.add
      local.set 1028
      local.get 1028
      local.get 1026
      i32.store
      local.get 1025
      i64.load offset=1916 align=4
      local.set 1029
      i32.const 8
      local.set 1030
      i32.const 320
      local.set 1031
      local.get 2
      local.get 1031
      i32.add
      local.set 1032
      local.get 1032
      local.get 1030
      i32.add
      local.set 1033
      local.get 1033
      local.get 1029
      i64.store
      local.get 1025
      i64.load offset=1908 align=4
      local.set 1034
      local.get 2
      local.get 1034
      i64.store offset=320
      i32.const 304
      local.set 1035
      local.get 2
      local.get 1035
      i32.add
      local.set 1036
      local.get 1036
      local.get 1030
      i32.add
      local.set 1037
      i32.const 776
      local.set 1038
      local.get 2
      local.get 1038
      i32.add
      local.set 1039
      local.get 1039
      local.get 1030
      i32.add
      local.set 1040
      local.get 1040
      i64.load
      local.set 1041
      local.get 1037
      local.get 1041
      i64.store
      local.get 2
      i64.load offset=776
      local.set 1042
      local.get 2
      local.get 1042
      i64.store offset=304
      i32.const 288
      local.set 1043
      local.get 2
      local.get 1043
      i32.add
      local.set 1044
      local.get 1044
      local.get 1030
      i32.add
      local.set 1045
      local.get 1025
      i64.load offset=1876 align=4
      local.set 1046
      local.get 1045
      local.get 1046
      i64.store
      local.get 1025
      i64.load offset=1868 align=4
      local.set 1047
      local.get 2
      local.get 1047
      i64.store offset=288
      local.get 2
      i64.load offset=768
      local.set 1048
      local.get 2
      local.get 1048
      i64.store offset=280
      local.get 2
      i32.load offset=760
      local.set 1049
      local.get 2
      local.get 1049
      i32.store offset=276
      f32.const 0x0p+0 (;=0;)
      local.set 1050
      i32.const 320
      local.set 1051
      local.get 2
      local.get 1051
      i32.add
      local.set 1052
      i32.const 304
      local.set 1053
      local.get 2
      local.get 1053
      i32.add
      local.set 1054
      i32.const 288
      local.set 1055
      local.get 2
      local.get 1055
      i32.add
      local.set 1056
      i32.const 280
      local.set 1057
      local.get 2
      local.get 1057
      i32.add
      local.set 1058
      i32.const 276
      local.set 1059
      local.get 2
      local.get 1059
      i32.add
      local.set 1060
      local.get 1052
      local.get 1054
      local.get 1056
      local.get 1058
      local.get 1050
      local.get 1060
      call $DrawTexturePro
      i32.const 0
      local.set 1061
      local.get 1061
      f32.load offset=1844
      local.set 1062
      f32.const 0x1.4p+4 (;=20;)
      local.set 1063
      local.get 1063
      local.get 1062
      f32.add
      local.set 1064
      local.get 1064
      f32.abs
      local.set 1065
      f32.const 0x1p+31 (;=2.14748e+09;)
      local.set 1066
      local.get 1065
      local.get 1066
      f32.lt
      local.set 1067
      local.get 1067
      i32.eqz
      local.set 1068
      block  ;; label = @2
        block  ;; label = @3
          local.get 1068
          br_if 0 (;@3;)
          local.get 1064
          i32.trunc_f32_s
          local.set 1069
          local.get 1069
          local.set 1070
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 1071
        local.get 1071
        local.set 1070
      end
      local.get 1070
      local.set 1072
      i32.const 0
      local.set 1073
      local.get 2
      local.get 1073
      i32.store8 offset=752
      i32.const 0
      local.set 1074
      local.get 2
      local.get 1074
      i32.store8 offset=753
      i32.const 0
      local.set 1075
      local.get 2
      local.get 1075
      i32.store8 offset=754
      i32.const 255
      local.set 1076
      local.get 2
      local.get 1076
      i32.store8 offset=755
      i32.const 1082
      drop
      i32.const 200
      drop
      i32.const 16
      drop
      local.get 2
      i32.load offset=752
      local.set 1077
      local.get 2
      local.get 1077
      i32.store offset=340
      i32.const 1082
      local.set 1078
      i32.const 16
      local.set 1079
      i32.const 200
      local.set 1080
      i32.const 340
      local.set 1081
      local.get 2
      local.get 1081
      i32.add
      local.set 1082
      local.get 1078
      local.get 1072
      local.get 1080
      local.get 1079
      local.get 1082
      call $DrawText
      i32.const 0
      local.set 1083
      local.get 1083
      f32.load offset=1844
      local.set 1084
      f32.const 0x1.4p+4 (;=20;)
      local.set 1085
      local.get 1085
      local.get 1084
      f32.add
      local.set 1086
      local.get 1086
      f32.abs
      local.set 1087
      f32.const 0x1p+31 (;=2.14748e+09;)
      local.set 1088
      local.get 1087
      local.get 1088
      f32.lt
      local.set 1089
      local.get 1089
      i32.eqz
      local.set 1090
      block  ;; label = @2
        block  ;; label = @3
          local.get 1090
          br_if 0 (;@3;)
          local.get 1086
          i32.trunc_f32_s
          local.set 1091
          local.get 1091
          local.set 1092
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 1093
        local.get 1093
        local.set 1092
      end
      local.get 1092
      local.set 1094
      i32.const 0
      local.set 1095
      local.get 2
      local.get 1095
      i32.store8 offset=744
      i32.const 0
      local.set 1096
      local.get 2
      local.get 1096
      i32.store8 offset=745
      i32.const 0
      local.set 1097
      local.get 2
      local.get 1097
      i32.store8 offset=746
      i32.const 255
      local.set 1098
      local.get 2
      local.get 1098
      i32.store8 offset=747
      i32.const 1045
      drop
      i32.const 220
      drop
      i32.const 16
      drop
      local.get 2
      i32.load offset=744
      local.set 1099
      local.get 2
      local.get 1099
      i32.store offset=344
      i32.const 1045
      local.set 1100
      i32.const 16
      local.set 1101
      i32.const 220
      local.set 1102
      i32.const 344
      local.set 1103
      local.get 2
      local.get 1103
      i32.add
      local.set 1104
      local.get 1100
      local.get 1094
      local.get 1102
      local.get 1101
      local.get 1104
      call $DrawText
    end
    i32.const 0
    local.set 1105
    local.get 1105
    i32.load offset=1904
    local.set 1106
    i32.const 0
    local.set 1107
    local.get 1106
    local.set 1108
    local.get 1107
    local.set 1109
    local.get 1108
    local.get 1109
    i32.le_u
    local.set 1110
    i32.const 1
    local.set 1111
    local.get 1110
    local.get 1111
    i32.and
    local.set 1112
    block  ;; label = @1
      local.get 1112
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 1113
      i32.const 0
      local.set 1114
      local.get 1114
      local.get 1113
      i32.store8 offset=2233
    end
    i32.const 1190
    local.set 1115
    i32.const 0
    local.set 1116
    local.get 1115
    local.get 1116
    call $DrawFPS
    call $EndDrawing
    i32.const 1120
    local.set 1117
    local.get 2
    local.get 1117
    i32.add
    local.set 1118
    local.get 1118
    global.set $__stack_pointer
    return)
  (func $takeDamage (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 5
    i32.load
    local.set 6
    local.get 4
    i32.load offset=8
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.get 9
    i32.gt_u
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=8
        local.set 13
        local.get 4
        i32.load offset=12
        local.set 14
        local.get 14
        i32.load
        local.set 15
        local.get 15
        local.get 13
        i32.sub
        local.set 16
        local.get 14
        local.get 16
        i32.store
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=12
      local.set 17
      local.get 17
      i32.load
      local.set 18
      local.get 4
      i32.load offset=8
      local.set 19
      local.get 18
      local.set 20
      local.get 19
      local.set 21
      local.get 20
      local.get 21
      i32.lt_u
      local.set 22
      i32.const 1
      local.set 23
      local.get 22
      local.get 23
      i32.and
      local.set 24
      block  ;; label = @2
        local.get 24
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=12
        local.set 25
        local.get 25
        i32.load
        local.set 26
        local.get 4
        i32.load offset=12
        local.set 27
        local.get 27
        i32.load
        local.set 28
        local.get 28
        local.get 26
        i32.sub
        local.set 29
        local.get 27
        local.get 29
        i32.store
      end
    end
    return)
  (func $resetGame (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i64)
    global.get $__stack_pointer
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store8 offset=31
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load8_u offset=31
        local.set 4
        i32.const 255
        local.set 5
        local.get 4
        local.get 5
        i32.and
        local.set 6
        i32.const 0
        local.set 7
        local.get 7
        i32.load8_u offset=1840
        local.set 8
        i32.const 255
        local.set 9
        local.get 8
        local.get 9
        i32.and
        local.set 10
        local.get 6
        local.set 11
        local.get 10
        local.set 12
        local.get 11
        local.get 12
        i32.lt_s
        local.set 13
        i32.const 1
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 15
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 16
        local.get 16
        f32.load offset=1844
        local.set 17
        local.get 2
        i32.load8_u offset=31
        local.set 18
        i32.const 255
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        i32.const 1616
        local.set 21
        i32.const 4
        local.set 22
        local.get 20
        local.get 22
        i32.shl
        local.set 23
        local.get 21
        local.get 23
        i32.add
        local.set 24
        local.get 24
        f32.load
        local.set 25
        local.get 25
        local.get 17
        f32.sub
        local.set 26
        local.get 24
        local.get 26
        f32.store
        local.get 2
        i32.load8_u offset=31
        local.set 27
        i32.const 1
        local.set 28
        local.get 27
        local.get 28
        i32.add
        local.set 29
        local.get 2
        local.get 29
        i32.store8 offset=31
        br 0 (;@2;)
      end
    end
    local.get 2
    local.set 30
    i64.const 0
    local.set 31
    local.get 30
    local.get 31
    i64.store align=4
    i32.const 16
    local.set 32
    local.get 30
    local.get 32
    i32.add
    local.set 33
    local.get 33
    local.get 31
    i64.store align=4
    i32.const 8
    local.set 34
    local.get 30
    local.get 34
    i32.add
    local.set 35
    local.get 35
    local.get 31
    i64.store align=4
    local.get 2
    local.set 36
    local.get 36
    i64.load align=4
    local.set 37
    i32.const 0
    local.set 38
    local.get 38
    local.get 37
    i64.store offset=1844 align=4
    i32.const 16
    local.set 39
    local.get 36
    local.get 39
    i32.add
    local.set 40
    local.get 40
    i64.load align=4
    local.set 41
    local.get 38
    local.get 41
    i64.store offset=1860 align=4
    i32.const 8
    local.set 42
    local.get 36
    local.get 42
    i32.add
    local.set 43
    local.get 43
    i64.load align=4
    local.set 44
    local.get 38
    local.get 44
    i64.store offset=1852 align=4
    return)
  (func $DrawGameOver (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 f32 f32 f32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 112
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    i32.const 96
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    local.set 6
    i32.const 8
    local.set 7
    local.get 6
    local.get 7
    i32.add
    local.set 8
    i32.const 0
    local.set 9
    local.get 9
    i64.load offset=1604 align=4
    local.set 10
    local.get 8
    local.get 10
    i64.store align=4
    local.get 9
    i64.load offset=1596 align=4
    local.set 11
    local.get 6
    local.get 11
    i64.store align=4
    i32.const 8
    local.set 12
    i32.const 16
    local.set 13
    local.get 3
    local.get 13
    i32.add
    local.set 14
    local.get 14
    local.get 12
    i32.add
    local.set 15
    i32.const 96
    local.set 16
    local.get 3
    local.get 16
    i32.add
    local.set 17
    local.get 17
    local.get 12
    i32.add
    local.set 18
    local.get 18
    i64.load
    local.set 19
    local.get 15
    local.get 19
    i64.store
    local.get 3
    i64.load offset=96
    local.set 20
    local.get 3
    local.get 20
    i64.store offset=16
    local.get 0
    i32.load align=1
    local.set 21
    local.get 3
    local.get 21
    i32.store offset=12
    i32.const 16
    local.set 22
    local.get 3
    local.get 22
    i32.add
    local.set 23
    i32.const 12
    local.set 24
    local.get 3
    local.get 24
    i32.add
    local.set 25
    local.get 23
    local.get 25
    call $DrawRectangleRec
    local.get 3
    f32.load offset=96
    local.set 26
    local.get 26
    f32.abs
    local.set 27
    f32.const 0x1p+31 (;=2.14748e+09;)
    local.set 28
    local.get 27
    local.get 28
    f32.lt
    local.set 29
    local.get 29
    i32.eqz
    local.set 30
    block  ;; label = @1
      block  ;; label = @2
        local.get 30
        br_if 0 (;@2;)
        local.get 26
        i32.trunc_f32_s
        local.set 31
        local.get 31
        local.set 32
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 33
      local.get 33
      local.set 32
    end
    local.get 32
    local.set 34
    local.get 3
    f32.load offset=100
    local.set 35
    f32.const 0x1.4p+2 (;=5;)
    local.set 36
    local.get 35
    local.get 36
    f32.add
    local.set 37
    local.get 37
    f32.abs
    local.set 38
    f32.const 0x1p+31 (;=2.14748e+09;)
    local.set 39
    local.get 38
    local.get 39
    f32.lt
    local.set 40
    local.get 40
    i32.eqz
    local.set 41
    block  ;; label = @1
      block  ;; label = @2
        local.get 41
        br_if 0 (;@2;)
        local.get 37
        i32.trunc_f32_s
        local.set 42
        local.get 42
        local.set 43
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 44
      local.get 44
      local.set 43
    end
    local.get 43
    local.set 45
    i32.const 0
    local.set 46
    local.get 3
    local.get 46
    i32.store8 offset=88
    i32.const 0
    local.set 47
    local.get 3
    local.get 47
    i32.store8 offset=89
    i32.const 0
    local.set 48
    local.get 3
    local.get 48
    i32.store8 offset=90
    i32.const 255
    local.set 49
    local.get 3
    local.get 49
    i32.store8 offset=91
    i32.const 1024
    drop
    i32.const 16
    drop
    local.get 3
    i32.load offset=88
    local.set 50
    local.get 3
    local.get 50
    i32.store offset=32
    i32.const 1024
    local.set 51
    i32.const 16
    local.set 52
    i32.const 32
    local.set 53
    local.get 3
    local.get 53
    i32.add
    local.set 54
    local.get 51
    local.get 34
    local.get 45
    local.get 52
    local.get 54
    call $DrawText
    i32.const 0
    local.set 55
    local.get 3
    local.get 55
    i32.store8 offset=80
    i32.const 0
    local.set 56
    local.get 3
    local.get 56
    i32.store8 offset=81
    i32.const 0
    local.set 57
    local.get 3
    local.get 57
    i32.store8 offset=82
    i32.const 255
    local.set 58
    local.get 3
    local.get 58
    i32.store8 offset=83
    i32.const 1585
    drop
    i32.const 590
    drop
    i32.const 360
    drop
    i32.const 32
    drop
    local.get 3
    i32.load offset=80
    local.set 59
    local.get 3
    local.get 59
    i32.store offset=36
    i32.const 1585
    local.set 60
    i32.const 32
    local.set 61
    i32.const 360
    local.set 62
    i32.const 590
    local.set 63
    i32.const 36
    local.set 64
    local.get 3
    local.get 64
    i32.add
    local.set 65
    local.get 60
    local.get 63
    local.get 62
    local.get 61
    local.get 65
    call $DrawText
    i32.const 0
    local.set 66
    local.get 66
    i64.load offset=2032 align=4
    local.set 67
    local.get 3
    local.get 67
    i64.store offset=56
    i32.const 8
    local.set 68
    i32.const 40
    local.set 69
    local.get 3
    local.get 69
    i32.add
    local.set 70
    local.get 70
    local.get 68
    i32.add
    local.set 71
    i32.const 96
    local.set 72
    local.get 3
    local.get 72
    i32.add
    local.set 73
    local.get 73
    local.get 68
    i32.add
    local.set 74
    local.get 74
    i64.load
    local.set 75
    local.get 71
    local.get 75
    i64.store
    local.get 3
    i64.load offset=96
    local.set 76
    local.get 3
    local.get 76
    i64.store offset=40
    i32.const 56
    local.set 77
    local.get 3
    local.get 77
    i32.add
    local.set 78
    i32.const 40
    local.set 79
    local.get 3
    local.get 79
    i32.add
    local.set 80
    local.get 78
    local.get 80
    call $CheckCollisionPointRec
    local.set 81
    i32.const 1
    local.set 82
    local.get 81
    local.get 82
    i32.and
    local.set 83
    block  ;; label = @1
      local.get 83
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 84
      local.get 84
      call $IsMouseButtonPressed
      local.set 85
      i32.const 1
      local.set 86
      local.get 85
      local.get 86
      i32.and
      local.set 87
      block  ;; label = @2
        local.get 87
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 88
        local.get 3
        local.get 88
        i32.store8 offset=72
        i32.const 0
        local.set 89
        local.get 3
        local.get 89
        i32.store8 offset=73
        i32.const 0
        local.set 90
        local.get 3
        local.get 90
        i32.store8 offset=74
        i32.const 255
        local.set 91
        local.get 3
        local.get 91
        i32.store8 offset=75
        i32.const 1032
        drop
        i32.const 640
        drop
        i32.const 360
        drop
        i32.const 16
        drop
        local.get 3
        i32.load offset=72
        local.set 92
        local.get 3
        local.get 92
        i32.store offset=8
        i32.const 1032
        local.set 93
        i32.const 16
        local.set 94
        i32.const 360
        local.set 95
        i32.const 640
        local.set 96
        i32.const 8
        local.set 97
        local.get 3
        local.get 97
        i32.add
        local.set 98
        local.get 93
        local.get 96
        local.get 95
        local.get 94
        local.get 98
        call $DrawText
        i32.const 1000
        local.set 99
        i32.const 0
        local.set 100
        local.get 100
        local.get 99
        i32.store offset=1904
        i32.const 0
        local.set 101
        local.get 3
        local.get 101
        i32.store8 offset=64
        i32.const 228
        local.set 102
        local.get 3
        local.get 102
        i32.store8 offset=65
        i32.const 48
        local.set 103
        local.get 3
        local.get 103
        i32.store8 offset=66
        i32.const 255
        local.set 104
        local.get 3
        local.get 104
        i32.store8 offset=67
        i32.const 64
        local.set 105
        local.get 3
        local.get 105
        i32.add
        local.set 106
        local.get 106
        local.set 107
        local.get 107
        i32.load align=1
        local.set 108
        i32.const 0
        local.set 109
        local.get 109
        local.get 108
        i32.store offset=2316 align=1
        i32.const 0
        local.set 110
        i32.const 0
        local.set 111
        local.get 111
        local.get 110
        i32.store8 offset=2233
      end
    end
    i32.const 112
    local.set 112
    local.get 3
    local.get 112
    i32.add
    local.set 113
    local.get 113
    global.set $__stack_pointer
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 67888))
  (global (;1;) i32 (i32.const 2244))
  (global (;2;) i32 (i32.const 1868))
  (global (;3;) i32 (i32.const 2280))
  (global (;4;) i32 (i32.const 2056))
  (global (;5;) i32 (i32.const 2100))
  (global (;6;) i32 (i32.const 2144))
  (global (;7;) i32 (i32.const 2188))
  (global (;8;) i32 (i32.const 1932))
  (global (;9;) i32 (i32.const 1952))
  (global (;10;) i32 (i32.const 1972))
  (global (;11;) i32 (i32.const 1992))
  (global (;12;) i32 (i32.const 2012))
  (global (;13;) i32 (i32.const 2040))
  (global (;14;) i32 (i32.const 2284))
  (global (;15;) i32 (i32.const 2300))
  (global (;16;) i32 (i32.const 2316))
  (global (;17;) i32 (i32.const 2320))
  (global (;18;) i32 (i32.const 1844))
  (global (;19;) i32 (i32.const 1840))
  (global (;20;) i32 (i32.const 1616))
  (global (;21;) i32 (i32.const 2032))
  (global (;22;) i32 (i32.const 2240))
  (global (;23;) i32 (i32.const 2324))
  (global (;24;) i32 (i32.const 2232))
  (global (;25;) i32 (i32.const 2236))
  (global (;26;) i32 (i32.const 2233))
  (global (;27;) i32 (i32.const 1024))
  (global (;28;) i32 (i32.const 2340))
  (global (;29;) i32 (i32.const 1024))
  (global (;30;) i32 (i32.const 67888))
  (global (;31;) i32 (i32.const 0))
  (global (;32;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "GameInit" (func $GameInit))
  (export "mainSong" (global 1))
  (export "createPlayer" (func $createPlayer))
  (export "player" (global 2))
  (export "fullHp" (global 3))
  (export "createAnimation" (func $createAnimation))
  (export "idle" (global 4))
  (export "run" (global 5))
  (export "jump" (global 6))
  (export "fall" (global 7))
  (export "terrain" (global 8))
  (export "bg" (global 9))
  (export "bg1" (global 10))
  (export "bg2" (global 11))
  (export "playerIcon" (global 12))
  (export "spriteRect" (global 13))
  (export "healthBar" (global 14))
  (export "healthPoints" (global 15))
  (export "hpColor" (global 16))
  (export "hpConv" (global 17))
  (export "camera" (global 18))
  (export "platformsCount" (global 19))
  (export "platforms" (global 20))
  (export "GameFrame" (func $GameFrame))
  (export "mouse" (global 21))
  (export "saveDelay" (global 22))
  (export "hitBox" (global 23))
  (export "numberOfFrames" (global 24))
  (export "frameDelayCounter" (global 25))
  (export "takeDamage" (func $takeDamage))
  (export "resetGame" (func $resetGame))
  (export "gameOver" (global 26))
  (export "DrawGameOver" (func $DrawGameOver))
  (export "__indirect_function_table" (table 0))
  (export "__dso_handle" (global 27))
  (export "__data_end" (global 28))
  (export "__global_base" (global 29))
  (export "__heap_base" (global 30))
  (export "__memory_base" (global 31))
  (export "__table_base" (global 32))
  (data $.rodata (i32.const 1024) "Restart\00Anger Builds\00Or arrows to move and spaced to jump\00Use AS to move and W to jump\00my platformer game in wasm\00assets/icons/Warrior_icont.png\00assets/Jump/Warrior_Jump_sheet_left.png\00assets/run/Warrior_Run_sheet_left.png\00assets/Jump/Warrior_fall_sheet_left.png\00assets/idle/Warrior_Idle_sheet_left.png\00assets/Jump/Warrior_Jump_sheet.png\00assets/run/Warrior_Run_sheet.png\00assets/Jump/Warrior_fall_sheet.png\00assets/idle/Warrior_Idle_sheet.png\00assets/terrain/Terrain-and-Props.png\00assets/bg/BG_3.png\00assets/bg/BG_2.png\00assets/bg/BG_1.png\00assets/sound/mainSong.mp3\00Game Over!\00\00\80\13D\00\00\ffC\00\00\c8B\00\00\f0A")
  (data $.data (i32.const 1616) "\00\00\00\00\00\80\09D\00\00\c8C\00\00\c8C\00\00\16D\00\80\22D\00\00\c8C\00\00\c8C\00\00\96D\00\80\22D\00\00\c8C\00\00\c8C\00\00\e1D\00\80\22D\00\00\c8C\00\00\c8C\00\00\16E\00\80\22D\00\00HD\00\00\c8C\00\80TE\00\80\22D\00\00HD\00\00\c8C\00\80\89E\00\80\22D\00\00HD\00\00\c8C\00\c0\a8E\00\80\22D\00\00zD\00\00\c8C\00\80\d4E\00\80\22D\00\00zD\00\00\c8C\00 \00F\00\80\22D\00\00zD\00\00\c8C\00p\14F\00\80\22D\00\00zE\00\00\c8C\00\80\22F\00\80\22D\00\00zD\00\00\c8C\00 2F\00\80\22D\00\00zD\00\00\c8C\00\c0AF\00\80\22D\00\00zD\00\00\c8C\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\00\00\00\00\80?"))

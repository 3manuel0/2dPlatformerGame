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
  (import "env" "loadGame" (func $loadGame (type 2)))
  (import "env" "LoadTexture" (func $LoadTexture (type 2)))
  (import "env" "SetTargetFPS" (func $SetTargetFPS (type 3)))
  (import "env" "SetMasterVolume" (func $SetMasterVolume (type 4)))
  (import "env" "GetMousePosition" (func $GetMousePosition (type 3)))
  (import "env" "UpdateMusicStream" (func $UpdateMusicStream (type 3)))
  (import "env" "GetFrameTime" (func $GetFrameTime (type 5)))
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
  (import "env" "saveGame" (func $saveGame (type 2)))
  (import "env" "CheckCollisionPointRec" (func $CheckCollisionPointRec (type 6)))
  (import "env" "IsMouseButtonPressed" (func $IsMouseButtonPressed (type 7)))
  (func $__wasm_call_ctors (type 1))
  (func $GameInit (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i64 i64 f32 f32 i32 i32 i32 f32 i64 i64 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 f32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 944
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
    i32.const 904
    local.set 6
    local.get 2
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    i32.const 1548
    local.set 9
    local.get 8
    local.get 9
    call $LoadMusicStream
    i32.const 904
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
    i32.const 224
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
    i32.const 216
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
    i32.const 208
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
    i32.const 200
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
    i64.store offset=192
    i32.const 192
    local.set 41
    local.get 2
    local.get 41
    i32.add
    local.set 42
    local.get 42
    call $PlayMusicStream
    i32.const 0
    local.set 43
    local.get 43
    f32.convert_i32_s
    local.set 44
    local.get 2
    local.get 44
    f32.store offset=824
    f32.const 0x1.9p+6 (;=100;)
    local.set 45
    local.get 2
    local.get 45
    f32.store offset=828
    f32.const 0x1p+7 (;=128;)
    local.set 46
    local.get 2
    local.get 46
    f32.store offset=832
    f32.const 0x1.58p+6 (;=86;)
    local.set 47
    local.get 2
    local.get 47
    f32.store offset=836
    f32.const 0x1p+6 (;=64;)
    local.set 48
    local.get 2
    local.get 48
    f32.store offset=816
    f32.const 0x1.58p+5 (;=43;)
    local.set 49
    local.get 2
    local.get 49
    f32.store offset=820
    i32.const 0
    local.set 50
    local.get 50
    f32.convert_i32_s
    local.set 51
    local.get 2
    local.get 51
    f32.store offset=808
    i32.const 0
    local.set 52
    local.get 52
    f32.convert_i32_s
    local.set 53
    local.get 2
    local.get 53
    f32.store offset=812
    i32.const 840
    local.set 54
    local.get 2
    local.get 54
    i32.add
    local.set 55
    local.get 55
    drop
    i32.const 8
    local.set 56
    i32.const 248
    local.set 57
    local.get 2
    local.get 57
    i32.add
    local.set 58
    local.get 58
    local.get 56
    i32.add
    local.set 59
    i32.const 824
    local.set 60
    local.get 2
    local.get 60
    i32.add
    local.set 61
    local.get 61
    local.get 56
    i32.add
    local.set 62
    local.get 62
    i64.load
    local.set 63
    local.get 59
    local.get 63
    i64.store
    local.get 2
    i64.load offset=824
    local.set 64
    local.get 2
    local.get 64
    i64.store offset=248
    local.get 2
    i64.load offset=816
    local.set 65
    local.get 2
    local.get 65
    i64.store offset=240
    local.get 2
    i64.load offset=808
    local.set 66
    local.get 2
    local.get 66
    i64.store offset=232
    i32.const 840
    local.set 67
    local.get 2
    local.get 67
    i32.add
    local.set 68
    i32.const 248
    local.set 69
    local.get 2
    local.get 69
    i32.add
    local.set 70
    i32.const 240
    local.set 71
    local.get 2
    local.get 71
    i32.add
    local.set 72
    i32.const 232
    local.set 73
    local.get 2
    local.get 73
    i32.add
    local.set 74
    local.get 68
    local.get 70
    local.get 72
    local.get 74
    call $createPlayer
    i32.const 840
    local.set 75
    local.get 2
    local.get 75
    i32.add
    local.set 76
    local.get 76
    local.set 77
    local.get 77
    i64.load align=4
    local.set 78
    i32.const 0
    local.set 79
    local.get 79
    local.get 78
    i64.store offset=1868 align=4
    i32.const 56
    local.set 80
    local.get 77
    local.get 80
    i32.add
    local.set 81
    local.get 81
    i64.load align=4
    local.set 82
    local.get 79
    local.get 82
    i64.store offset=1924 align=4
    i32.const 48
    local.set 83
    local.get 77
    local.get 83
    i32.add
    local.set 84
    local.get 84
    i64.load align=4
    local.set 85
    local.get 79
    local.get 85
    i64.store offset=1916 align=4
    i32.const 40
    local.set 86
    local.get 77
    local.get 86
    i32.add
    local.set 87
    local.get 87
    i64.load align=4
    local.set 88
    local.get 79
    local.get 88
    i64.store offset=1908 align=4
    i32.const 32
    local.set 89
    local.get 77
    local.get 89
    i32.add
    local.set 90
    local.get 90
    i64.load align=4
    local.set 91
    local.get 79
    local.get 91
    i64.store offset=1900 align=4
    i32.const 24
    local.set 92
    local.get 77
    local.get 92
    i32.add
    local.set 93
    local.get 93
    i64.load align=4
    local.set 94
    local.get 79
    local.get 94
    i64.store offset=1892 align=4
    i32.const 16
    local.set 95
    local.get 77
    local.get 95
    i32.add
    local.set 96
    local.get 96
    i64.load align=4
    local.set 97
    local.get 79
    local.get 97
    i64.store offset=1884 align=4
    i32.const 8
    local.set 98
    local.get 77
    local.get 98
    i32.add
    local.set 99
    local.get 99
    i64.load align=4
    local.set 100
    local.get 79
    local.get 100
    i64.store offset=1876 align=4
    i32.const 1868
    local.set 101
    i32.const 1844
    local.set 102
    local.get 101
    local.get 102
    call $loadGame
    i32.const 0
    local.set 103
    local.get 2
    local.get 103
    i32.store8 offset=807
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load8_u offset=807
        local.set 104
        i32.const 255
        local.set 105
        local.get 104
        local.get 105
        i32.and
        local.set 106
        i32.const 0
        local.set 107
        local.get 107
        i32.load8_u offset=1840
        local.set 108
        i32.const 255
        local.set 109
        local.get 108
        local.get 109
        i32.and
        local.set 110
        local.get 106
        local.set 111
        local.get 110
        local.set 112
        local.get 111
        local.get 112
        i32.lt_s
        local.set 113
        i32.const 1
        local.set 114
        local.get 113
        local.get 114
        i32.and
        local.set 115
        local.get 115
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 116
        local.get 116
        f32.load offset=1844
        local.set 117
        local.get 2
        i32.load8_u offset=807
        local.set 118
        i32.const 255
        local.set 119
        local.get 118
        local.get 119
        i32.and
        local.set 120
        i32.const 1616
        local.set 121
        i32.const 4
        local.set 122
        local.get 120
        local.get 122
        i32.shl
        local.set 123
        local.get 121
        local.get 123
        i32.add
        local.set 124
        local.get 124
        f32.load
        local.set 125
        local.get 125
        local.get 117
        f32.add
        local.set 126
        local.get 124
        local.get 126
        f32.store
        local.get 2
        i32.load8_u offset=807
        local.set 127
        i32.const 1
        local.set 128
        local.get 127
        local.get 128
        i32.add
        local.set 129
        local.get 2
        local.get 129
        i32.store8 offset=807
        br 0 (;@2;)
      end
    end
    i32.const 1419
    local.set 130
    i32.const 736
    local.set 131
    local.get 2
    local.get 131
    i32.add
    local.set 132
    local.get 132
    local.get 130
    call $LoadTexture
    i32.const 1276
    local.set 133
    i32.const 712
    local.set 134
    local.get 2
    local.get 134
    i32.add
    local.set 135
    local.get 135
    local.get 133
    call $LoadTexture
    i32.const 16
    local.set 136
    i32.const 168
    local.set 137
    local.get 2
    local.get 137
    i32.add
    local.set 138
    local.get 138
    local.get 136
    i32.add
    local.set 139
    i32.const 736
    local.set 140
    local.get 2
    local.get 140
    i32.add
    local.set 141
    local.get 141
    local.get 136
    i32.add
    local.set 142
    local.get 142
    i32.load
    local.set 143
    local.get 139
    local.get 143
    i32.store
    i32.const 8
    local.set 144
    i32.const 168
    local.set 145
    local.get 2
    local.get 145
    i32.add
    local.set 146
    local.get 146
    local.get 144
    i32.add
    local.set 147
    i32.const 736
    local.set 148
    local.get 2
    local.get 148
    i32.add
    local.set 149
    local.get 149
    local.get 144
    i32.add
    local.set 150
    local.get 150
    i64.load
    local.set 151
    local.get 147
    local.get 151
    i64.store
    local.get 2
    i64.load offset=736
    local.set 152
    local.get 2
    local.get 152
    i64.store offset=168
    i32.const 144
    local.set 153
    local.get 2
    local.get 153
    i32.add
    local.set 154
    local.get 154
    local.get 136
    i32.add
    local.set 155
    i32.const 712
    local.set 156
    local.get 2
    local.get 156
    i32.add
    local.set 157
    local.get 157
    local.get 136
    i32.add
    local.set 158
    local.get 158
    i32.load
    local.set 159
    local.get 155
    local.get 159
    i32.store
    i32.const 144
    local.set 160
    local.get 2
    local.get 160
    i32.add
    local.set 161
    local.get 161
    local.get 144
    i32.add
    local.set 162
    i32.const 712
    local.set 163
    local.get 2
    local.get 163
    i32.add
    local.set 164
    local.get 164
    local.get 144
    i32.add
    local.set 165
    local.get 165
    i64.load
    local.set 166
    local.get 162
    local.get 166
    i64.store
    local.get 2
    i64.load offset=712
    local.set 167
    local.get 2
    local.get 167
    i64.store offset=144
    i32.const 5
    local.set 168
    i32.const 760
    local.set 169
    local.get 2
    local.get 169
    i32.add
    local.set 170
    i32.const 168
    local.set 171
    local.get 2
    local.get 171
    i32.add
    local.set 172
    i32.const 144
    local.set 173
    local.get 2
    local.get 173
    i32.add
    local.set 174
    local.get 170
    local.get 172
    local.get 174
    local.get 168
    call $createAnimation
    i32.const 40
    local.set 175
    i32.const 760
    local.set 176
    local.get 2
    local.get 176
    i32.add
    local.set 177
    local.get 177
    local.get 175
    i32.add
    local.set 178
    local.get 178
    i32.load
    local.set 179
    i32.const 0
    local.set 180
    local.get 180
    local.get 179
    i32.store offset=2100
    i32.const 32
    local.set 181
    i32.const 760
    local.set 182
    local.get 2
    local.get 182
    i32.add
    local.set 183
    local.get 183
    local.get 181
    i32.add
    local.set 184
    local.get 184
    i64.load
    local.set 185
    local.get 180
    local.get 185
    i64.store offset=2092 align=4
    i32.const 24
    local.set 186
    i32.const 760
    local.set 187
    local.get 2
    local.get 187
    i32.add
    local.set 188
    local.get 188
    local.get 186
    i32.add
    local.set 189
    local.get 189
    i64.load
    local.set 190
    local.get 180
    local.get 190
    i64.store offset=2084 align=4
    i32.const 760
    local.set 191
    local.get 2
    local.get 191
    i32.add
    local.set 192
    local.get 192
    local.get 136
    i32.add
    local.set 193
    local.get 193
    i64.load
    local.set 194
    local.get 180
    local.get 194
    i64.store offset=2076 align=4
    i32.const 760
    local.set 195
    local.get 2
    local.get 195
    i32.add
    local.set 196
    local.get 196
    local.get 144
    i32.add
    local.set 197
    local.get 197
    i64.load
    local.set 198
    local.get 180
    local.get 198
    i64.store offset=2068 align=4
    local.get 2
    i64.load offset=760
    local.set 199
    local.get 180
    local.get 199
    i64.store offset=2060 align=4
    i32.const 1351
    local.set 200
    i32.const 640
    local.set 201
    local.get 2
    local.get 201
    i32.add
    local.set 202
    local.get 202
    local.get 200
    call $LoadTexture
    i32.const 1198
    local.set 203
    i32.const 616
    local.set 204
    local.get 2
    local.get 204
    i32.add
    local.set 205
    local.get 205
    local.get 203
    call $LoadTexture
    i32.const 120
    local.set 206
    local.get 2
    local.get 206
    i32.add
    local.set 207
    local.get 207
    local.get 136
    i32.add
    local.set 208
    i32.const 640
    local.set 209
    local.get 2
    local.get 209
    i32.add
    local.set 210
    local.get 210
    local.get 136
    i32.add
    local.set 211
    local.get 211
    i32.load
    local.set 212
    local.get 208
    local.get 212
    i32.store
    i32.const 120
    local.set 213
    local.get 2
    local.get 213
    i32.add
    local.set 214
    local.get 214
    local.get 144
    i32.add
    local.set 215
    i32.const 640
    local.set 216
    local.get 2
    local.get 216
    i32.add
    local.set 217
    local.get 217
    local.get 144
    i32.add
    local.set 218
    local.get 218
    i64.load
    local.set 219
    local.get 215
    local.get 219
    i64.store
    local.get 2
    i64.load offset=640
    local.set 220
    local.get 2
    local.get 220
    i64.store offset=120
    i32.const 96
    local.set 221
    local.get 2
    local.get 221
    i32.add
    local.set 222
    local.get 222
    local.get 136
    i32.add
    local.set 223
    i32.const 616
    local.set 224
    local.get 2
    local.get 224
    i32.add
    local.set 225
    local.get 225
    local.get 136
    i32.add
    local.set 226
    local.get 226
    i32.load
    local.set 227
    local.get 223
    local.get 227
    i32.store
    i32.const 96
    local.set 228
    local.get 2
    local.get 228
    i32.add
    local.set 229
    local.get 229
    local.get 144
    i32.add
    local.set 230
    i32.const 616
    local.set 231
    local.get 2
    local.get 231
    i32.add
    local.set 232
    local.get 232
    local.get 144
    i32.add
    local.set 233
    local.get 233
    i64.load
    local.set 234
    local.get 230
    local.get 234
    i64.store
    local.get 2
    i64.load offset=616
    local.set 235
    local.get 2
    local.get 235
    i64.store offset=96
    i32.const 7
    local.set 236
    i32.const 664
    local.set 237
    local.get 2
    local.get 237
    i32.add
    local.set 238
    i32.const 120
    local.set 239
    local.get 2
    local.get 239
    i32.add
    local.set 240
    i32.const 96
    local.set 241
    local.get 2
    local.get 241
    i32.add
    local.set 242
    local.get 238
    local.get 240
    local.get 242
    local.get 236
    call $createAnimation
    i32.const 664
    local.set 243
    local.get 2
    local.get 243
    i32.add
    local.set 244
    local.get 244
    local.get 175
    i32.add
    local.set 245
    local.get 245
    i32.load
    local.set 246
    local.get 180
    local.get 246
    i32.store offset=2144
    i32.const 664
    local.set 247
    local.get 2
    local.get 247
    i32.add
    local.set 248
    local.get 248
    local.get 181
    i32.add
    local.set 249
    local.get 249
    i64.load
    local.set 250
    local.get 180
    local.get 250
    i64.store offset=2136 align=4
    i32.const 664
    local.set 251
    local.get 2
    local.get 251
    i32.add
    local.set 252
    local.get 252
    local.get 186
    i32.add
    local.set 253
    local.get 253
    i64.load
    local.set 254
    local.get 180
    local.get 254
    i64.store offset=2128 align=4
    i32.const 664
    local.set 255
    local.get 2
    local.get 255
    i32.add
    local.set 256
    local.get 256
    local.get 136
    i32.add
    local.set 257
    local.get 257
    i64.load
    local.set 258
    local.get 180
    local.get 258
    i64.store offset=2120 align=4
    i32.const 664
    local.set 259
    local.get 2
    local.get 259
    i32.add
    local.set 260
    local.get 260
    local.get 144
    i32.add
    local.set 261
    local.get 261
    i64.load
    local.set 262
    local.get 180
    local.get 262
    i64.store offset=2112 align=4
    local.get 2
    i64.load offset=664
    local.set 263
    local.get 180
    local.get 263
    i64.store offset=2104 align=4
    i32.const 1316
    local.set 264
    i32.const 544
    local.set 265
    local.get 2
    local.get 265
    i32.add
    local.set 266
    local.get 266
    local.get 264
    call $LoadTexture
    i32.const 1158
    local.set 267
    i32.const 520
    local.set 268
    local.get 2
    local.get 268
    i32.add
    local.set 269
    local.get 269
    local.get 267
    call $LoadTexture
    i32.const 72
    local.set 270
    local.get 2
    local.get 270
    i32.add
    local.set 271
    local.get 271
    local.get 136
    i32.add
    local.set 272
    i32.const 544
    local.set 273
    local.get 2
    local.get 273
    i32.add
    local.set 274
    local.get 274
    local.get 136
    i32.add
    local.set 275
    local.get 275
    i32.load
    local.set 276
    local.get 272
    local.get 276
    i32.store
    i32.const 72
    local.set 277
    local.get 2
    local.get 277
    i32.add
    local.set 278
    local.get 278
    local.get 144
    i32.add
    local.set 279
    i32.const 544
    local.set 280
    local.get 2
    local.get 280
    i32.add
    local.set 281
    local.get 281
    local.get 144
    i32.add
    local.set 282
    local.get 282
    i64.load
    local.set 283
    local.get 279
    local.get 283
    i64.store
    local.get 2
    i64.load offset=544
    local.set 284
    local.get 2
    local.get 284
    i64.store offset=72
    i32.const 48
    local.set 285
    local.get 2
    local.get 285
    i32.add
    local.set 286
    local.get 286
    local.get 136
    i32.add
    local.set 287
    i32.const 520
    local.set 288
    local.get 2
    local.get 288
    i32.add
    local.set 289
    local.get 289
    local.get 136
    i32.add
    local.set 290
    local.get 290
    i32.load
    local.set 291
    local.get 287
    local.get 291
    i32.store
    i32.const 48
    local.set 292
    local.get 2
    local.get 292
    i32.add
    local.set 293
    local.get 293
    local.get 144
    i32.add
    local.set 294
    i32.const 520
    local.set 295
    local.get 2
    local.get 295
    i32.add
    local.set 296
    local.get 296
    local.get 144
    i32.add
    local.set 297
    local.get 297
    i64.load
    local.set 298
    local.get 294
    local.get 298
    i64.store
    local.get 2
    i64.load offset=520
    local.set 299
    local.get 2
    local.get 299
    i64.store offset=48
    i32.const 2
    local.set 300
    i32.const 568
    local.set 301
    local.get 2
    local.get 301
    i32.add
    local.set 302
    i32.const 72
    local.set 303
    local.get 2
    local.get 303
    i32.add
    local.set 304
    i32.const 48
    local.set 305
    local.get 2
    local.get 305
    i32.add
    local.set 306
    local.get 302
    local.get 304
    local.get 306
    local.get 300
    call $createAnimation
    i32.const 568
    local.set 307
    local.get 2
    local.get 307
    i32.add
    local.set 308
    local.get 308
    local.get 175
    i32.add
    local.set 309
    local.get 309
    i32.load
    local.set 310
    local.get 180
    local.get 310
    i32.store offset=2188
    i32.const 568
    local.set 311
    local.get 2
    local.get 311
    i32.add
    local.set 312
    local.get 312
    local.get 181
    i32.add
    local.set 313
    local.get 313
    i64.load
    local.set 314
    local.get 180
    local.get 314
    i64.store offset=2180 align=4
    i32.const 568
    local.set 315
    local.get 2
    local.get 315
    i32.add
    local.set 316
    local.get 316
    local.get 186
    i32.add
    local.set 317
    local.get 317
    i64.load
    local.set 318
    local.get 180
    local.get 318
    i64.store offset=2172 align=4
    i32.const 568
    local.set 319
    local.get 2
    local.get 319
    i32.add
    local.set 320
    local.get 320
    local.get 136
    i32.add
    local.set 321
    local.get 321
    i64.load
    local.set 322
    local.get 180
    local.get 322
    i64.store offset=2164 align=4
    i32.const 568
    local.set 323
    local.get 2
    local.get 323
    i32.add
    local.set 324
    local.get 324
    local.get 144
    i32.add
    local.set 325
    local.get 325
    i64.load
    local.set 326
    local.get 180
    local.get 326
    i64.store offset=2156 align=4
    local.get 2
    i64.load offset=568
    local.set 327
    local.get 180
    local.get 327
    i64.store offset=2148 align=4
    i32.const 1384
    local.set 328
    i32.const 448
    local.set 329
    local.get 2
    local.get 329
    i32.add
    local.set 330
    local.get 330
    local.get 328
    call $LoadTexture
    i32.const 1236
    local.set 331
    i32.const 424
    local.set 332
    local.get 2
    local.get 332
    i32.add
    local.set 333
    local.get 333
    local.get 331
    call $LoadTexture
    i32.const 24
    local.set 334
    local.get 2
    local.get 334
    i32.add
    local.set 335
    local.get 335
    local.get 136
    i32.add
    local.set 336
    i32.const 448
    local.set 337
    local.get 2
    local.get 337
    i32.add
    local.set 338
    local.get 338
    local.get 136
    i32.add
    local.set 339
    local.get 339
    i32.load
    local.set 340
    local.get 336
    local.get 340
    i32.store
    i32.const 24
    local.set 341
    local.get 2
    local.get 341
    i32.add
    local.set 342
    local.get 342
    local.get 144
    i32.add
    local.set 343
    i32.const 448
    local.set 344
    local.get 2
    local.get 344
    i32.add
    local.set 345
    local.get 345
    local.get 144
    i32.add
    local.set 346
    local.get 346
    i64.load
    local.set 347
    local.get 343
    local.get 347
    i64.store
    local.get 2
    i64.load offset=448
    local.set 348
    local.get 2
    local.get 348
    i64.store offset=24
    local.get 2
    local.get 136
    i32.add
    local.set 349
    i32.const 424
    local.set 350
    local.get 2
    local.get 350
    i32.add
    local.set 351
    local.get 351
    local.get 136
    i32.add
    local.set 352
    local.get 352
    i32.load
    local.set 353
    local.get 349
    local.get 353
    i32.store
    local.get 2
    local.get 144
    i32.add
    local.set 354
    i32.const 424
    local.set 355
    local.get 2
    local.get 355
    i32.add
    local.set 356
    local.get 356
    local.get 144
    i32.add
    local.set 357
    local.get 357
    i64.load
    local.set 358
    local.get 354
    local.get 358
    i64.store
    local.get 2
    i64.load offset=424
    local.set 359
    local.get 2
    local.get 359
    i64.store
    i32.const 472
    local.set 360
    local.get 2
    local.get 360
    i32.add
    local.set 361
    i32.const 24
    local.set 362
    local.get 2
    local.get 362
    i32.add
    local.set 363
    local.get 361
    local.get 363
    local.get 2
    local.get 300
    call $createAnimation
    i32.const 472
    local.set 364
    local.get 2
    local.get 364
    i32.add
    local.set 365
    local.get 365
    local.get 175
    i32.add
    local.set 366
    local.get 366
    i32.load
    local.set 367
    local.get 180
    local.get 367
    i32.store offset=2232
    i32.const 472
    local.set 368
    local.get 2
    local.get 368
    i32.add
    local.set 369
    local.get 369
    local.get 181
    i32.add
    local.set 370
    local.get 370
    i64.load
    local.set 371
    local.get 180
    local.get 371
    i64.store offset=2224 align=4
    i32.const 472
    local.set 372
    local.get 2
    local.get 372
    i32.add
    local.set 373
    local.get 373
    local.get 186
    i32.add
    local.set 374
    local.get 374
    i64.load
    local.set 375
    local.get 180
    local.get 375
    i64.store offset=2216 align=4
    i32.const 472
    local.set 376
    local.get 2
    local.get 376
    i32.add
    local.set 377
    local.get 377
    local.get 136
    i32.add
    local.set 378
    local.get 378
    i64.load
    local.set 379
    local.get 180
    local.get 379
    i64.store offset=2208 align=4
    i32.const 472
    local.set 380
    local.get 2
    local.get 380
    i32.add
    local.set 381
    local.get 381
    local.get 144
    i32.add
    local.set 382
    local.get 382
    i64.load
    local.set 383
    local.get 180
    local.get 383
    i64.store offset=2200 align=4
    local.get 2
    i64.load offset=472
    local.set 384
    local.get 180
    local.get 384
    i64.store offset=2192 align=4
    i32.const 1454
    local.set 385
    i32.const 400
    local.set 386
    local.get 2
    local.get 386
    i32.add
    local.set 387
    local.get 387
    local.get 385
    call $LoadTexture
    i32.const 400
    local.set 388
    local.get 2
    local.get 388
    i32.add
    local.set 389
    local.get 389
    local.get 136
    i32.add
    local.set 390
    local.get 390
    i32.load
    local.set 391
    local.get 180
    local.get 391
    i32.store offset=1948
    i32.const 400
    local.set 392
    local.get 2
    local.get 392
    i32.add
    local.set 393
    local.get 393
    local.get 144
    i32.add
    local.set 394
    local.get 394
    i64.load
    local.set 395
    local.get 180
    local.get 395
    i64.store offset=1940 align=4
    local.get 2
    i64.load offset=400
    local.set 396
    local.get 180
    local.get 396
    i64.store offset=1932 align=4
    i32.const 1529
    local.set 397
    i32.const 376
    local.set 398
    local.get 2
    local.get 398
    i32.add
    local.set 399
    local.get 399
    local.get 397
    call $LoadTexture
    i32.const 376
    local.set 400
    local.get 2
    local.get 400
    i32.add
    local.set 401
    local.get 401
    local.get 136
    i32.add
    local.set 402
    local.get 402
    i32.load
    local.set 403
    local.get 180
    local.get 403
    i32.store offset=1968
    i32.const 376
    local.set 404
    local.get 2
    local.get 404
    i32.add
    local.set 405
    local.get 405
    local.get 144
    i32.add
    local.set 406
    local.get 406
    i64.load
    local.set 407
    local.get 180
    local.get 407
    i64.store offset=1960 align=4
    local.get 2
    i64.load offset=376
    local.set 408
    local.get 180
    local.get 408
    i64.store offset=1952 align=4
    i32.const 1510
    local.set 409
    i32.const 352
    local.set 410
    local.get 2
    local.get 410
    i32.add
    local.set 411
    local.get 411
    local.get 409
    call $LoadTexture
    i32.const 352
    local.set 412
    local.get 2
    local.get 412
    i32.add
    local.set 413
    local.get 413
    local.get 136
    i32.add
    local.set 414
    local.get 414
    i32.load
    local.set 415
    local.get 180
    local.get 415
    i32.store offset=1988
    i32.const 352
    local.set 416
    local.get 2
    local.get 416
    i32.add
    local.set 417
    local.get 417
    local.get 144
    i32.add
    local.set 418
    local.get 418
    i64.load
    local.set 419
    local.get 180
    local.get 419
    i64.store offset=1980 align=4
    local.get 2
    i64.load offset=352
    local.set 420
    local.get 180
    local.get 420
    i64.store offset=1972 align=4
    i32.const 1491
    local.set 421
    i32.const 328
    local.set 422
    local.get 2
    local.get 422
    i32.add
    local.set 423
    local.get 423
    local.get 421
    call $LoadTexture
    i32.const 328
    local.set 424
    local.get 2
    local.get 424
    i32.add
    local.set 425
    local.get 425
    local.get 136
    i32.add
    local.set 426
    local.get 426
    i32.load
    local.set 427
    local.get 180
    local.get 427
    i32.store offset=2008
    i32.const 328
    local.set 428
    local.get 2
    local.get 428
    i32.add
    local.set 429
    local.get 429
    local.get 144
    i32.add
    local.set 430
    local.get 430
    i64.load
    local.set 431
    local.get 180
    local.get 431
    i64.store offset=2000 align=4
    local.get 2
    i64.load offset=328
    local.set 432
    local.get 180
    local.get 432
    i64.store offset=1992 align=4
    i32.const 1127
    local.set 433
    i32.const 304
    local.set 434
    local.get 2
    local.get 434
    i32.add
    local.set 435
    local.get 435
    local.get 433
    call $LoadTexture
    i32.const 304
    local.set 436
    local.get 2
    local.get 436
    i32.add
    local.set 437
    local.get 437
    local.get 136
    i32.add
    local.set 438
    local.get 438
    i32.load
    local.set 439
    local.get 180
    local.get 439
    i32.store offset=2028
    i32.const 304
    local.set 440
    local.get 2
    local.get 440
    i32.add
    local.set 441
    local.get 441
    local.get 144
    i32.add
    local.set 442
    local.get 442
    i64.load
    local.set 443
    local.get 180
    local.get 443
    i64.store offset=2020 align=4
    local.get 2
    i64.load offset=304
    local.set 444
    local.get 180
    local.get 444
    i64.store offset=2012 align=4
    local.get 180
    i64.load offset=1876 align=4
    local.set 445
    local.get 180
    local.get 445
    i64.store offset=2052 align=4
    local.get 180
    i64.load offset=1868 align=4
    local.set 446
    local.get 180
    local.get 446
    i64.store offset=2044 align=4
    local.get 180
    i64.load offset=1876 align=4
    local.set 447
    local.get 180
    local.get 447
    i64.store offset=2052 align=4
    local.get 180
    i64.load offset=1868 align=4
    local.set 448
    local.get 180
    local.get 448
    i64.store offset=2044 align=4
    i32.const 1107820544
    local.set 449
    local.get 2
    local.get 449
    i32.store offset=288
    i32.const 1092616192
    local.set 450
    local.get 2
    local.get 450
    i32.store offset=292
    i32.const 288
    local.set 451
    local.get 2
    local.get 451
    i32.add
    local.set 452
    local.get 452
    local.get 144
    i32.add
    local.set 453
    i32.const 1133903872
    local.set 454
    local.get 453
    local.get 454
    i32.store
    i32.const 1106247680
    local.set 455
    local.get 2
    local.get 455
    i32.store offset=300
    local.get 453
    i64.load
    local.set 456
    local.get 180
    local.get 456
    i64.store offset=2288 align=4
    local.get 2
    i64.load offset=288
    local.set 457
    local.get 180
    local.get 457
    i64.store offset=2280 align=4
    local.get 180
    f32.load offset=2280
    local.set 458
    local.get 2
    local.get 458
    f32.store offset=272
    local.get 180
    f32.load offset=2284
    local.set 459
    local.get 2
    local.get 459
    f32.store offset=276
    i32.const 272
    local.set 460
    local.get 2
    local.get 460
    i32.add
    local.set 461
    local.get 461
    local.get 144
    i32.add
    local.set 462
    local.get 462
    local.get 454
    i32.store
    local.get 180
    f32.load offset=2292
    local.set 463
    local.get 2
    local.get 463
    f32.store offset=284
    local.get 462
    i64.load
    local.set 464
    local.get 180
    local.get 464
    i64.store offset=2304 align=4
    local.get 2
    i64.load offset=272
    local.set 465
    local.get 180
    local.get 465
    i64.store offset=2296 align=4
    local.get 2
    local.get 180
    i32.store8 offset=264
    i32.const 228
    local.set 466
    local.get 2
    local.get 466
    i32.store8 offset=265
    i32.const 48
    local.set 467
    local.get 2
    local.get 467
    i32.store8 offset=266
    i32.const 255
    local.set 468
    local.get 2
    local.get 468
    i32.store8 offset=267
    local.get 2
    i32.load offset=264
    local.set 469
    local.get 180
    local.get 469
    i32.store offset=2312 align=1
    local.get 180
    i32.load offset=1904
    local.set 470
    local.get 180
    local.get 470
    i32.store16 offset=2316
    local.get 180
    f32.load offset=2288
    local.set 471
    local.get 180
    i32.load offset=1904
    local.set 472
    local.get 472
    f32.convert_i32_u
    local.set 473
    local.get 471
    local.get 473
    f32.div
    local.set 474
    i32.const 0
    local.set 475
    local.get 475
    local.get 474
    f32.store offset=2320
    i32.const 0
    local.set 476
    i32.const 0
    local.set 477
    local.get 477
    local.get 476
    i32.store8 offset=2040
    i32.const 60
    local.set 478
    local.get 478
    call $SetTargetFPS
    f32.const 0x1.99999ap-4 (;=0.1;)
    local.set 479
    local.get 479
    call $SetMasterVolume
    i32.const 944
    local.set 480
    local.get 2
    local.get 480
    i32.add
    local.set 481
    local.get 481
    global.set $__stack_pointer
    return)
  (func $createPlayer (type 12) (param i32 i32 i32 i32)
    (local i64 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
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
    i32.store8 offset=32
    i32.const 1000
    local.set 16
    local.get 0
    local.get 16
    i32.store offset=36
    i32.const 40
    local.set 17
    local.get 0
    local.get 17
    i32.add
    local.set 18
    i64.const 0
    local.set 19
    local.get 18
    local.get 19
    i64.store align=4
    i32.const 16
    local.set 20
    local.get 18
    local.get 20
    i32.add
    local.set 21
    i32.const 0
    local.set 22
    local.get 21
    local.get 22
    i32.store
    i32.const 8
    local.set 23
    local.get 18
    local.get 23
    i32.add
    local.set 24
    local.get 24
    local.get 19
    i64.store align=4
    i32.const 0
    local.set 25
    local.get 0
    local.get 25
    i32.store offset=60
    return)
  (func $createAnimation (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32)
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
    local.get 0
    local.get 27
    i32.store8 offset=40
    return)
  (func $GameFrame (type 1)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i64 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 i32 i64 i64 i32 f32 i32 f32 f32 i32 i32 i32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 i32 i32 i64 i32 i32 i32 i64 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 f32 i32 f32 f32 f32 f32 f32 f32 i32 f32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 f32 i32 f32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i64 i32 i64 i32 i32 i32 i64 i64 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 f32 f64 f64 f64 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 f32 i32 i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i64 i32 i64 i32 i32 i32 i64 i64 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 f32 f32 i32 f32 i32 f32 i32 f32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i64 i64 i64 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32)
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
    i32.load offset=2076
    local.set 31
    local.get 5
    local.get 31
    i32.store offset=1924
    local.get 5
    i64.load offset=2068 align=4
    local.set 32
    local.get 5
    local.get 32
    i64.store offset=1916 align=4
    local.get 5
    i64.load offset=2060 align=4
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
    f32.store offset=2304
    i32.const 0
    local.set 40
    local.get 40
    i32.load offset=1928
    local.set 41
    block  ;; label = @1
      block  ;; label = @2
        local.get 41
        br_if 0 (;@2;)
        i32.const 0
        local.set 42
        local.get 42
        f32.load offset=1868
        local.set 43
        i32.const 0
        local.set 44
        local.get 44
        f32.load offset=1876
        local.set 45
        f32.const 0x1p+2 (;=4;)
        local.set 46
        local.get 45
        local.get 46
        f32.div
        local.set 47
        local.get 43
        local.get 47
        f32.add
        local.set 48
        f32.const 0x1.ep+3 (;=15;)
        local.set 49
        local.get 48
        local.get 49
        f32.add
        local.set 50
        local.get 2
        local.get 50
        f32.store offset=1088
        i32.const 0
        local.set 51
        local.get 51
        f32.load offset=1872
        local.set 52
        i32.const 0
        local.set 53
        local.get 53
        f32.load offset=1880
        local.set 54
        local.get 52
        local.get 54
        f32.add
        local.set 55
        f32.const 0x1.4p+3 (;=10;)
        local.set 56
        local.get 55
        local.get 56
        f32.sub
        local.set 57
        local.get 2
        local.get 57
        f32.store offset=1092
        f32.const 0x1.ap+4 (;=26;)
        local.set 58
        local.get 2
        local.get 58
        f32.store offset=1096
        f32.const 0x1.4p+3 (;=10;)
        local.set 59
        local.get 2
        local.get 59
        f32.store offset=1100
        i32.const 1088
        local.set 60
        local.get 2
        local.get 60
        i32.add
        local.set 61
        local.get 61
        local.set 62
        local.get 62
        i64.load align=4
        local.set 63
        i32.const 0
        local.set 64
        local.get 64
        local.get 63
        i64.store offset=2324 align=4
        i32.const 8
        local.set 65
        local.get 62
        local.get 65
        i32.add
        local.set 66
        local.get 66
        i64.load align=4
        local.set 67
        local.get 64
        local.get 67
        i64.store offset=2332 align=4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 68
      local.get 68
      f32.load offset=1868
      local.set 69
      i32.const 0
      local.set 70
      local.get 70
      f32.load offset=1876
      local.set 71
      f32.const 0x1p+1 (;=2;)
      local.set 72
      local.get 71
      local.get 72
      f32.div
      local.set 73
      local.get 69
      local.get 73
      f32.add
      local.set 74
      f32.const 0x1.4p+3 (;=10;)
      local.set 75
      local.get 74
      local.get 75
      f32.sub
      local.set 76
      local.get 2
      local.get 76
      f32.store offset=1072
      i32.const 0
      local.set 77
      local.get 77
      f32.load offset=1872
      local.set 78
      i32.const 0
      local.set 79
      local.get 79
      f32.load offset=1880
      local.set 80
      local.get 78
      local.get 80
      f32.add
      local.set 81
      f32.const 0x1.4p+3 (;=10;)
      local.set 82
      local.get 81
      local.get 82
      f32.sub
      local.set 83
      local.get 2
      local.get 83
      f32.store offset=1076
      f32.const 0x1.ap+4 (;=26;)
      local.set 84
      local.get 2
      local.get 84
      f32.store offset=1080
      f32.const 0x1.4p+3 (;=10;)
      local.set 85
      local.get 2
      local.get 85
      f32.store offset=1084
      i32.const 1072
      local.set 86
      local.get 2
      local.get 86
      i32.add
      local.set 87
      local.get 87
      local.set 88
      local.get 88
      i64.load align=4
      local.set 89
      i32.const 0
      local.set 90
      local.get 90
      local.get 89
      i64.store offset=2324 align=4
      i32.const 8
      local.set 91
      local.get 88
      local.get 91
      i32.add
      local.set 92
      local.get 92
      i64.load align=4
      local.set 93
      local.get 90
      local.get 93
      i64.store offset=2332 align=4
    end
    i32.const 0
    local.set 94
    local.get 94
    i32.load8_u offset=1900
    local.set 95
    i32.const 255
    local.set 96
    local.get 95
    local.get 96
    i32.and
    local.set 97
    i32.const 0
    local.set 98
    local.get 98
    i32.load8_u offset=2236
    local.set 99
    i32.const 255
    local.set 100
    local.get 99
    local.get 100
    i32.and
    local.set 101
    local.get 97
    local.set 102
    local.get 101
    local.set 103
    local.get 102
    local.get 103
    i32.ge_s
    local.set 104
    i32.const 1
    local.set 105
    local.get 104
    local.get 105
    i32.and
    local.set 106
    block  ;; label = @1
      local.get 106
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 107
      i32.const 0
      local.set 108
      local.get 108
      local.get 107
      i32.store8 offset=1900
      i32.const 0
      local.set 109
      local.get 109
      f32.convert_i32_s
      local.set 110
      i32.const 0
      local.set 111
      local.get 111
      local.get 110
      f32.store offset=2240
    end
    local.get 2
    f32.load offset=1108
    local.set 112
    i32.const 0
    local.set 113
    local.get 113
    f32.load offset=2240
    local.set 114
    f32.const 0x1.8p+3 (;=12;)
    local.set 115
    local.get 112
    local.get 115
    f32.mul
    local.set 116
    local.get 116
    local.get 114
    f32.add
    local.set 117
    local.get 113
    local.get 117
    f32.store offset=2240
    local.get 113
    f32.load offset=2240
    local.set 118
    f32.const 0x1p+32 (;=4.29497e+09;)
    local.set 119
    local.get 118
    local.get 119
    f32.lt
    local.set 120
    f32.const 0x0p+0 (;=0;)
    local.set 121
    local.get 118
    local.get 121
    f32.ge
    local.set 122
    local.get 120
    local.get 122
    i32.and
    local.set 123
    local.get 123
    i32.eqz
    local.set 124
    block  ;; label = @1
      block  ;; label = @2
        local.get 124
        br_if 0 (;@2;)
        local.get 118
        i32.trunc_f32_u
        local.set 125
        local.get 125
        local.set 126
        br 1 (;@1;)
      end
      i32.const 0
      local.set 127
      local.get 127
      local.set 126
    end
    local.get 126
    local.set 128
    i32.const 0
    local.set 129
    local.get 129
    local.get 128
    i32.store8 offset=1900
    i32.const 0
    local.set 130
    local.get 130
    i32.load8_u offset=2100
    local.set 131
    i32.const 0
    local.set 132
    local.get 132
    local.get 131
    i32.store8 offset=2236
    i32.const 0
    local.set 133
    local.get 133
    i32.load offset=1928
    local.set 134
    block  ;; label = @1
      block  ;; label = @2
        local.get 134
        br_if 0 (;@2;)
        i32.const 0
        local.set 135
        local.get 135
        i32.load offset=2076
        local.set 136
        local.get 135
        local.get 136
        i32.store offset=1924
        local.get 135
        i64.load offset=2068 align=4
        local.set 137
        local.get 135
        local.get 137
        i64.store offset=1916 align=4
        local.get 135
        i64.load offset=2060 align=4
        local.set 138
        local.get 135
        local.get 138
        i64.store offset=1908 align=4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 139
      local.get 139
      i32.load offset=2096
      local.set 140
      local.get 139
      local.get 140
      i32.store offset=1924
      local.get 139
      i64.load offset=2088 align=4
      local.set 141
      local.get 139
      local.get 141
      i64.store offset=1916 align=4
      local.get 139
      i64.load offset=2080 align=4
      local.set 142
      local.get 139
      local.get 142
      i64.store offset=1908 align=4
    end
    i32.const 0
    local.set 143
    local.get 143
    i32.load8_u offset=2236
    local.set 144
    i32.const 255
    local.set 145
    local.get 144
    local.get 145
    i32.and
    local.set 146
    i32.const 0
    local.set 147
    local.get 147
    i32.load8_u offset=2100
    local.set 148
    i32.const 255
    local.set 149
    local.get 148
    local.get 149
    i32.and
    local.set 150
    local.get 146
    local.set 151
    local.get 150
    local.set 152
    local.get 151
    local.get 152
    i32.gt_s
    local.set 153
    i32.const 1
    local.set 154
    local.get 153
    local.get 154
    i32.and
    local.set 155
    block  ;; label = @1
      local.get 155
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 156
      i32.const 0
      local.set 157
      local.get 157
      local.get 156
      i32.store8 offset=1900
    end
    i32.const 0
    local.set 158
    local.get 158
    f32.load offset=1872
    local.set 159
    f32.const 0x1.c2p+9 (;=900;)
    local.set 160
    local.get 159
    local.get 160
    f32.gt
    local.set 161
    i32.const 1
    local.set 162
    local.get 161
    local.get 162
    i32.and
    local.set 163
    block  ;; label = @1
      local.get 163
      i32.eqz
      br_if 0 (;@1;)
      f32.const 0x1.9p+6 (;=100;)
      local.set 164
      i32.const 0
      local.set 165
      local.get 165
      local.get 164
      f32.store offset=1872
      i32.const 1868
      local.set 166
      i32.const 36
      local.set 167
      local.get 166
      local.get 167
      i32.add
      local.set 168
      i32.const 400
      local.set 169
      local.get 168
      local.get 169
      call $takeDamage
      i32.const 0
      local.set 170
      local.get 170
      f32.convert_i32_s
      local.set 171
      i32.const 0
      local.set 172
      local.get 172
      local.get 171
      f32.store offset=1868
      call $resetGame
    end
    i32.const 0
    local.set 173
    i32.const 0
    local.set 174
    local.get 174
    local.get 173
    i32.store8 offset=2040
    i32.const 0
    local.set 175
    local.get 2
    local.get 175
    i32.store16 offset=1070
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load16_u offset=1070
        local.set 176
        i32.const 65535
        local.set 177
        local.get 176
        local.get 177
        i32.and
        local.set 178
        i32.const 0
        local.set 179
        local.get 179
        i32.load8_u offset=1840
        local.set 180
        i32.const 255
        local.set 181
        local.get 180
        local.get 181
        i32.and
        local.set 182
        local.get 178
        local.set 183
        local.get 182
        local.set 184
        local.get 183
        local.get 184
        i32.lt_s
        local.set 185
        i32.const 1
        local.set 186
        local.get 185
        local.get 186
        i32.and
        local.set 187
        local.get 187
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load16_u offset=1070
        local.set 188
        i32.const 65535
        local.set 189
        local.get 188
        local.get 189
        i32.and
        local.set 190
        i32.const 1616
        local.set 191
        i32.const 4
        local.set 192
        local.get 190
        local.get 192
        i32.shl
        local.set 193
        local.get 191
        local.get 193
        i32.add
        local.set 194
        i32.const 0
        local.set 195
        local.get 195
        i64.load offset=2332 align=4
        local.set 196
        i32.const 8
        local.set 197
        i32.const 688
        local.set 198
        local.get 2
        local.get 198
        i32.add
        local.set 199
        local.get 199
        local.get 197
        i32.add
        local.set 200
        local.get 200
        local.get 196
        i64.store
        local.get 195
        i64.load offset=2324 align=4
        local.set 201
        local.get 2
        local.get 201
        i64.store offset=688
        local.get 194
        local.get 197
        i32.add
        local.set 202
        local.get 202
        i64.load align=4
        local.set 203
        i32.const 672
        local.set 204
        local.get 2
        local.get 204
        i32.add
        local.set 205
        local.get 205
        local.get 197
        i32.add
        local.set 206
        local.get 206
        local.get 203
        i64.store
        local.get 194
        i64.load align=4
        local.set 207
        local.get 2
        local.get 207
        i64.store offset=672
        i32.const 688
        local.set 208
        local.get 2
        local.get 208
        i32.add
        local.set 209
        i32.const 672
        local.set 210
        local.get 2
        local.get 210
        i32.add
        local.set 211
        local.get 209
        local.get 211
        call $CheckCollisionRecs
        local.set 212
        i32.const 1
        local.set 213
        local.get 212
        local.get 213
        i32.and
        local.set 214
        block  ;; label = @3
          local.get 214
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 215
          local.get 215
          f32.load offset=2328
          local.set 216
          i32.const 0
          local.set 217
          local.get 217
          f32.load offset=2336
          local.set 218
          local.get 216
          local.get 218
          f32.sub
          local.set 219
          local.get 2
          i32.load16_u offset=1070
          local.set 220
          i32.const 65535
          local.set 221
          local.get 220
          local.get 221
          i32.and
          local.set 222
          i32.const 1616
          local.set 223
          i32.const 4
          local.set 224
          local.get 222
          local.get 224
          i32.shl
          local.set 225
          local.get 223
          local.get 225
          i32.add
          local.set 226
          local.get 226
          f32.load offset=4
          local.set 227
          local.get 219
          local.get 227
          f32.le
          local.set 228
          i32.const 1
          local.set 229
          local.get 228
          local.get 229
          i32.and
          local.set 230
          local.get 230
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 231
          local.get 231
          f32.convert_i32_s
          local.set 232
          i32.const 0
          local.set 233
          local.get 233
          local.get 232
          f32.store offset=1896
          local.get 2
          i32.load16_u offset=1070
          local.set 234
          i32.const 65535
          local.set 235
          local.get 234
          local.get 235
          i32.and
          local.set 236
          i32.const 1616
          local.set 237
          i32.const 4
          local.set 238
          local.get 236
          local.get 238
          i32.shl
          local.set 239
          local.get 237
          local.get 239
          i32.add
          local.set 240
          local.get 240
          f32.load offset=4
          local.set 241
          i32.const 0
          local.set 242
          local.get 242
          f32.load offset=2056
          local.set 243
          local.get 241
          local.get 243
          f32.sub
          local.set 244
          i32.const 0
          local.set 245
          local.get 245
          local.get 244
          f32.store offset=1872
          i32.const 1
          local.set 246
          i32.const 0
          local.set 247
          local.get 247
          local.get 246
          i32.store8 offset=2040
          br 2 (;@1;)
        end
        local.get 2
        i32.load16_u offset=1070
        local.set 248
        i32.const 1
        local.set 249
        local.get 248
        local.get 249
        i32.add
        local.set 250
        local.get 2
        local.get 250
        i32.store16 offset=1070
        br 0 (;@2;)
      end
    end
    i32.const 68
    local.set 251
    local.get 251
    call $IsKeyDown
    local.set 252
    i32.const 1
    local.set 253
    local.get 252
    local.get 253
    i32.and
    local.set 254
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 254
          br_if 0 (;@3;)
          i32.const 262
          local.set 255
          local.get 255
          call $IsKeyDown
          local.set 256
          i32.const 1
          local.set 257
          local.get 256
          local.get 257
          i32.and
          local.set 258
          local.get 258
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 259
        local.get 259
        f32.load offset=1868
        local.set 260
        f32.const 0x1.4p+9 (;=640;)
        local.set 261
        local.get 260
        local.get 261
        f32.ge
        local.set 262
        i32.const 1
        local.set 263
        local.get 262
        local.get 263
        i32.and
        local.set 264
        block  ;; label = @3
          block  ;; label = @4
            local.get 264
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 265
            local.get 265
            f32.load offset=1892
            local.set 266
            i32.const 0
            local.set 267
            local.get 267
            f32.load offset=1844
            local.set 268
            local.get 268
            local.get 266
            f32.sub
            local.set 269
            i32.const 0
            local.set 270
            local.get 270
            local.get 269
            f32.store offset=1844
            i32.const 0
            local.set 271
            i32.const 0
            local.set 272
            local.get 272
            local.get 271
            i32.store offset=1928
            i32.const 0
            local.set 273
            local.get 2
            local.get 273
            i32.store16 offset=1068
            block  ;; label = @5
              loop  ;; label = @6
                local.get 2
                i32.load16_u offset=1068
                local.set 274
                i32.const 65535
                local.set 275
                local.get 274
                local.get 275
                i32.and
                local.set 276
                i32.const 0
                local.set 277
                local.get 277
                i32.load8_u offset=1840
                local.set 278
                i32.const 255
                local.set 279
                local.get 278
                local.get 279
                i32.and
                local.set 280
                local.get 276
                local.set 281
                local.get 280
                local.set 282
                local.get 281
                local.get 282
                i32.lt_s
                local.set 283
                i32.const 1
                local.set 284
                local.get 283
                local.get 284
                i32.and
                local.set 285
                local.get 285
                i32.eqz
                br_if 1 (;@5;)
                i32.const 0
                local.set 286
                local.get 286
                f32.load offset=1892
                local.set 287
                local.get 2
                i32.load16_u offset=1068
                local.set 288
                i32.const 65535
                local.set 289
                local.get 288
                local.get 289
                i32.and
                local.set 290
                i32.const 1616
                local.set 291
                i32.const 4
                local.set 292
                local.get 290
                local.get 292
                i32.shl
                local.set 293
                local.get 291
                local.get 293
                i32.add
                local.set 294
                local.get 294
                f32.load
                local.set 295
                local.get 295
                local.get 287
                f32.sub
                local.set 296
                local.get 294
                local.get 296
                f32.store
                local.get 2
                i32.load16_u offset=1068
                local.set 297
                i32.const 1
                local.set 298
                local.get 297
                local.get 298
                i32.add
                local.set 299
                local.get 2
                local.get 299
                i32.store16 offset=1068
                br 0 (;@6;)
              end
            end
            br 1 (;@3;)
          end
          i32.const 0
          local.set 300
          i32.const 0
          local.set 301
          local.get 301
          local.get 300
          i32.store offset=1928
          i32.const 0
          local.set 302
          local.get 302
          f32.load offset=1892
          local.set 303
          i32.const 0
          local.set 304
          local.get 304
          f32.load offset=1868
          local.set 305
          local.get 305
          local.get 303
          f32.add
          local.set 306
          i32.const 0
          local.set 307
          local.get 307
          local.get 306
          f32.store offset=1868
        end
        i32.const 0
        local.set 308
        local.get 308
        i32.load offset=2120
        local.set 309
        local.get 308
        local.get 309
        i32.store offset=1924
        local.get 308
        i64.load offset=2112 align=4
        local.set 310
        local.get 308
        local.get 310
        i64.store offset=1916 align=4
        local.get 308
        i64.load offset=2104 align=4
        local.set 311
        local.get 308
        local.get 311
        i64.store offset=1908 align=4
        i32.const 0
        local.set 312
        local.get 312
        i32.load8_u offset=2144
        local.set 313
        i32.const 0
        local.set 314
        local.get 314
        local.get 313
        i32.store8 offset=2236
        br 1 (;@1;)
      end
      i32.const 65
      local.set 315
      local.get 315
      call $IsKeyDown
      local.set 316
      i32.const 1
      local.set 317
      local.get 316
      local.get 317
      i32.and
      local.set 318
      block  ;; label = @2
        block  ;; label = @3
          local.get 318
          br_if 0 (;@3;)
          i32.const 263
          local.set 319
          local.get 319
          call $IsKeyDown
          local.set 320
          i32.const 1
          local.set 321
          local.get 320
          local.get 321
          i32.and
          local.set 322
          local.get 322
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 323
        local.get 323
        f32.load offset=1868
        local.set 324
        f32.const 0x1.4p+9 (;=640;)
        local.set 325
        local.get 324
        local.get 325
        f32.ge
        local.set 326
        i32.const 1
        local.set 327
        local.get 326
        local.get 327
        i32.and
        local.set 328
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 328
              br_if 0 (;@5;)
              i32.const 0
              local.set 329
              local.get 329
              f32.load offset=1616
              local.set 330
              f32.const -0x1.4p+2 (;=-5;)
              local.set 331
              local.get 330
              local.get 331
              f32.ge
              local.set 332
              i32.const 1
              local.set 333
              local.get 332
              local.get 333
              i32.and
              local.set 334
              local.get 334
              i32.eqz
              br_if 1 (;@4;)
            end
            i32.const 0
            local.set 335
            local.get 335
            f32.load offset=1868
            local.set 336
            i32.const 0
            local.set 337
            local.get 337
            f32.load offset=1876
            local.set 338
            f32.const 0x1p+1 (;=2;)
            local.set 339
            local.get 338
            local.get 339
            f32.div
            local.set 340
            local.get 336
            local.get 340
            f32.add
            local.set 341
            f32.const 0x1.4p+4 (;=20;)
            local.set 342
            local.get 341
            local.get 342
            f32.sub
            local.set 343
            i32.const 0
            local.set 344
            local.get 344
            f32.convert_i32_s
            local.set 345
            local.get 343
            local.get 345
            f32.ge
            local.set 346
            i32.const 1
            local.set 347
            local.get 346
            local.get 347
            i32.and
            local.set 348
            block  ;; label = @5
              local.get 348
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.set 349
              local.get 349
              f32.load offset=1892
              local.set 350
              i32.const 0
              local.set 351
              local.get 351
              f32.load offset=1868
              local.set 352
              local.get 352
              local.get 350
              f32.sub
              local.set 353
              i32.const 0
              local.set 354
              local.get 354
              local.get 353
              f32.store offset=1868
              i32.const 1
              local.set 355
              i32.const 0
              local.set 356
              local.get 356
              local.get 355
              i32.store offset=1928
            end
            br 1 (;@3;)
          end
          i32.const 1
          local.set 357
          i32.const 0
          local.set 358
          local.get 358
          local.get 357
          i32.store offset=1928
          i32.const 0
          local.set 359
          local.get 359
          f32.load offset=1892
          local.set 360
          i32.const 0
          local.set 361
          local.get 361
          f32.load offset=1844
          local.set 362
          local.get 362
          local.get 360
          f32.add
          local.set 363
          i32.const 0
          local.set 364
          local.get 364
          local.get 363
          f32.store offset=1844
          i32.const 0
          local.set 365
          local.get 2
          local.get 365
          i32.store16 offset=1066
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              i32.load16_u offset=1066
              local.set 366
              i32.const 65535
              local.set 367
              local.get 366
              local.get 367
              i32.and
              local.set 368
              i32.const 0
              local.set 369
              local.get 369
              i32.load8_u offset=1840
              local.set 370
              i32.const 255
              local.set 371
              local.get 370
              local.get 371
              i32.and
              local.set 372
              local.get 368
              local.set 373
              local.get 372
              local.set 374
              local.get 373
              local.get 374
              i32.lt_s
              local.set 375
              i32.const 1
              local.set 376
              local.get 375
              local.get 376
              i32.and
              local.set 377
              local.get 377
              i32.eqz
              br_if 1 (;@4;)
              i32.const 0
              local.set 378
              local.get 378
              f32.load offset=1892
              local.set 379
              local.get 2
              i32.load16_u offset=1066
              local.set 380
              i32.const 65535
              local.set 381
              local.get 380
              local.get 381
              i32.and
              local.set 382
              i32.const 1616
              local.set 383
              i32.const 4
              local.set 384
              local.get 382
              local.get 384
              i32.shl
              local.set 385
              local.get 383
              local.get 385
              i32.add
              local.set 386
              local.get 386
              f32.load
              local.set 387
              local.get 387
              local.get 379
              f32.add
              local.set 388
              local.get 386
              local.get 388
              f32.store
              local.get 2
              i32.load16_u offset=1066
              local.set 389
              i32.const 1
              local.set 390
              local.get 389
              local.get 390
              i32.add
              local.set 391
              local.get 2
              local.get 391
              i32.store16 offset=1066
              br 0 (;@5;)
            end
          end
        end
        i32.const 0
        local.set 392
        local.get 392
        i32.load offset=2140
        local.set 393
        local.get 392
        local.get 393
        i32.store offset=1924
        local.get 392
        i64.load offset=2132 align=4
        local.set 394
        local.get 392
        local.get 394
        i64.store offset=1916 align=4
        local.get 392
        i64.load offset=2124 align=4
        local.set 395
        local.get 392
        local.get 395
        i64.store offset=1908 align=4
        i32.const 0
        local.set 396
        local.get 396
        i32.load8_u offset=2144
        local.set 397
        i32.const 0
        local.set 398
        local.get 398
        local.get 397
        i32.store8 offset=2236
      end
    end
    local.get 2
    f32.load offset=1108
    local.set 399
    i32.const 0
    local.set 400
    local.get 400
    f32.load offset=1896
    local.set 401
    f32.const 0x1.906666p+9 (;=800.8;)
    local.set 402
    local.get 399
    local.get 402
    f32.mul
    local.set 403
    local.get 403
    local.get 401
    f32.add
    local.set 404
    i32.const 0
    local.set 405
    local.get 405
    local.get 404
    f32.store offset=1896
    i32.const 0
    local.set 406
    local.get 406
    i32.load8_u offset=2040
    local.set 407
    i32.const 1
    local.set 408
    local.get 407
    local.get 408
    i32.and
    local.set 409
    block  ;; label = @1
      local.get 409
      i32.eqz
      br_if 0 (;@1;)
      i32.const 87
      local.set 410
      local.get 410
      call $IsKeyDown
      local.set 411
      i32.const 1
      local.set 412
      local.get 411
      local.get 412
      i32.and
      local.set 413
      block  ;; label = @2
        block  ;; label = @3
          local.get 413
          br_if 0 (;@3;)
          i32.const 265
          local.set 414
          local.get 414
          call $IsKeyDown
          local.set 415
          i32.const 1
          local.set 416
          local.get 415
          local.get 416
          i32.and
          local.set 417
          local.get 417
          br_if 0 (;@3;)
          i32.const 32
          local.set 418
          local.get 418
          call $IsKeyDown
          local.set 419
          i32.const 1
          local.set 420
          local.get 419
          local.get 420
          i32.and
          local.set 421
          local.get 421
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 422
        local.get 422
        f32.load offset=1896
        local.set 423
        f32.const 0x1.f4p+8 (;=500;)
        local.set 424
        local.get 423
        local.get 424
        f32.sub
        local.set 425
        i32.const 0
        local.set 426
        local.get 426
        local.get 425
        f32.store offset=1896
        i32.const 0
        local.set 427
        i32.const 0
        local.set 428
        local.get 428
        local.get 427
        i32.store8 offset=2040
      end
    end
    i32.const 0
    local.set 429
    local.get 429
    i32.load8_u offset=2040
    local.set 430
    i32.const 1
    local.set 431
    local.get 430
    local.get 431
    i32.and
    local.set 432
    block  ;; label = @1
      local.get 432
      br_if 0 (;@1;)
      i32.const 0
      local.set 433
      local.get 433
      i32.load8_u offset=2188
      local.set 434
      i32.const 0
      local.set 435
      local.get 435
      local.get 434
      i32.store8 offset=2236
      i32.const 0
      local.set 436
      i32.const 0
      local.set 437
      local.get 437
      local.get 436
      i32.store8 offset=1900
      i32.const 0
      local.set 438
      local.get 438
      i32.load offset=1928
      local.set 439
      block  ;; label = @2
        block  ;; label = @3
          local.get 439
          br_if 0 (;@3;)
          i32.const 0
          local.set 440
          local.get 440
          i32.load offset=2164
          local.set 441
          local.get 440
          local.get 441
          i32.store offset=1924
          local.get 440
          i64.load offset=2156 align=4
          local.set 442
          local.get 440
          local.get 442
          i64.store offset=1916 align=4
          local.get 440
          i64.load offset=2148 align=4
          local.set 443
          local.get 440
          local.get 443
          i64.store offset=1908 align=4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 444
        local.get 444
        i32.load offset=2184
        local.set 445
        local.get 444
        local.get 445
        i32.store offset=1924
        local.get 444
        i64.load offset=2176 align=4
        local.set 446
        local.get 444
        local.get 446
        i64.store offset=1916 align=4
        local.get 444
        i64.load offset=2168 align=4
        local.set 447
        local.get 444
        local.get 447
        i64.store offset=1908 align=4
      end
    end
    i32.const 0
    local.set 448
    local.get 448
    i32.load8_u offset=2040
    local.set 449
    i32.const 1
    local.set 450
    local.get 449
    local.get 450
    i32.and
    local.set 451
    block  ;; label = @1
      local.get 451
      br_if 0 (;@1;)
      i32.const 0
      local.set 452
      local.get 452
      f32.load offset=1896
      local.set 453
      i32.const 0
      local.set 454
      local.get 454
      f32.convert_i32_s
      local.set 455
      local.get 453
      local.get 455
      f32.gt
      local.set 456
      i32.const 1
      local.set 457
      local.get 456
      local.get 457
      i32.and
      local.set 458
      local.get 458
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 459
      local.get 459
      i32.load8_u offset=2232
      local.set 460
      i32.const 0
      local.set 461
      local.get 461
      local.get 460
      i32.store8 offset=2236
      i32.const 0
      local.set 462
      i32.const 0
      local.set 463
      local.get 463
      local.get 462
      i32.store8 offset=1900
      i32.const 0
      local.set 464
      local.get 464
      i32.load offset=1928
      local.set 465
      block  ;; label = @2
        block  ;; label = @3
          local.get 465
          br_if 0 (;@3;)
          i32.const 0
          local.set 466
          local.get 466
          i32.load offset=2208
          local.set 467
          local.get 466
          local.get 467
          i32.store offset=1924
          local.get 466
          i64.load offset=2200 align=4
          local.set 468
          local.get 466
          local.get 468
          i64.store offset=1916 align=4
          local.get 466
          i64.load offset=2192 align=4
          local.set 469
          local.get 466
          local.get 469
          i64.store offset=1908 align=4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 470
        local.get 470
        i32.load offset=2228
        local.set 471
        local.get 470
        local.get 471
        i32.store offset=1924
        local.get 470
        i64.load offset=2220 align=4
        local.set 472
        local.get 470
        local.get 472
        i64.store offset=1916 align=4
        local.get 470
        i64.load offset=2212 align=4
        local.set 473
        local.get 470
        local.get 473
        i64.store offset=1908 align=4
      end
    end
    i32.const 0
    local.set 474
    local.get 474
    i32.load offset=1904
    local.set 475
    i32.const 0
    local.set 476
    local.get 476
    i32.load16_u offset=2316
    local.set 477
    i32.const 65535
    local.set 478
    local.get 477
    local.get 478
    i32.and
    local.set 479
    i32.const 45
    local.set 480
    local.get 479
    local.get 480
    i32.mul
    local.set 481
    i32.const 100
    local.set 482
    local.get 481
    local.get 482
    i32.div_s
    local.set 483
    local.get 475
    local.set 484
    local.get 483
    local.set 485
    local.get 484
    local.get 485
    i32.le_u
    local.set 486
    i32.const 1
    local.set 487
    local.get 486
    local.get 487
    i32.and
    local.set 488
    block  ;; label = @1
      local.get 488
      i32.eqz
      br_if 0 (;@1;)
      i32.const 253
      local.set 489
      local.get 2
      local.get 489
      i32.store8 offset=1056
      i32.const 249
      local.set 490
      local.get 2
      local.get 490
      i32.store8 offset=1057
      i32.const 0
      local.set 491
      local.get 2
      local.get 491
      i32.store8 offset=1058
      i32.const 255
      local.set 492
      local.get 2
      local.get 492
      i32.store8 offset=1059
      i32.const 1056
      local.set 493
      local.get 2
      local.get 493
      i32.add
      local.set 494
      local.get 494
      local.set 495
      local.get 495
      i32.load align=1
      local.set 496
      i32.const 0
      local.set 497
      local.get 497
      local.get 496
      i32.store offset=2312 align=1
    end
    i32.const 0
    local.set 498
    local.get 498
    i32.load offset=1904
    local.set 499
    i32.const 0
    local.set 500
    local.get 500
    i32.load16_u offset=2316
    local.set 501
    i32.const 65535
    local.set 502
    local.get 501
    local.get 502
    i32.and
    local.set 503
    i32.const 30
    local.set 504
    local.get 503
    local.get 504
    i32.mul
    local.set 505
    i32.const 100
    local.set 506
    local.get 505
    local.get 506
    i32.div_s
    local.set 507
    local.get 499
    local.set 508
    local.get 507
    local.set 509
    local.get 508
    local.get 509
    i32.le_u
    local.set 510
    i32.const 1
    local.set 511
    local.get 510
    local.get 511
    i32.and
    local.set 512
    block  ;; label = @1
      local.get 512
      i32.eqz
      br_if 0 (;@1;)
      i32.const 230
      local.set 513
      local.get 2
      local.get 513
      i32.store8 offset=1048
      i32.const 41
      local.set 514
      local.get 2
      local.get 514
      i32.store8 offset=1049
      i32.const 55
      local.set 515
      local.get 2
      local.get 515
      i32.store8 offset=1050
      i32.const 255
      local.set 516
      local.get 2
      local.get 516
      i32.store8 offset=1051
      i32.const 1048
      local.set 517
      local.get 2
      local.get 517
      i32.add
      local.set 518
      local.get 518
      local.set 519
      local.get 519
      i32.load align=1
      local.set 520
      i32.const 0
      local.set 521
      local.get 521
      local.get 520
      i32.store offset=2312 align=1
    end
    call $BeginDrawing
    i32.const 255
    local.set 522
    local.get 2
    local.get 522
    i32.store8 offset=1040
    i32.const 255
    local.set 523
    local.get 2
    local.get 523
    i32.store8 offset=1041
    i32.const 255
    local.set 524
    local.get 2
    local.get 524
    i32.store8 offset=1042
    i32.const 255
    local.set 525
    local.get 2
    local.get 525
    i32.store8 offset=1043
    local.get 2
    i32.load offset=1040
    local.set 526
    local.get 2
    local.get 526
    i32.store offset=668
    i32.const 668
    local.set 527
    local.get 2
    local.get 527
    i32.add
    local.set 528
    local.get 528
    call $ClearBackground
    i32.const 0
    local.set 529
    local.get 529
    i32.load8_u offset=2237
    local.set 530
    i32.const 1
    local.set 531
    local.get 530
    local.get 531
    i32.and
    local.set 532
    block  ;; label = @1
      block  ;; label = @2
        local.get 532
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 533
        local.get 533
        f32.load offset=1844
        local.set 534
        local.get 534
        f64.promote_f32
        local.set 535
        f64.const 0x1.3333333333333p-2 (;=0.3;)
        local.set 536
        local.get 535
        local.get 536
        f64.mul
        local.set 537
        local.get 537
        f32.demote_f64
        local.set 538
        local.get 2
        local.get 538
        f32.store offset=1032
        i32.const -1041235968
        local.set 539
        local.get 2
        local.get 539
        i32.store offset=1036
        i32.const 255
        local.set 540
        local.get 2
        local.get 540
        i32.store8 offset=1024
        local.get 2
        local.get 540
        i32.store8 offset=1025
        local.get 2
        local.get 540
        i32.store8 offset=1026
        local.get 2
        local.get 540
        i32.store8 offset=1027
        i32.const 16
        local.set 541
        i32.const 248
        local.set 542
        local.get 2
        local.get 542
        i32.add
        local.set 543
        local.get 543
        local.get 541
        i32.add
        local.set 544
        local.get 533
        i32.load offset=2008
        local.set 545
        local.get 544
        local.get 545
        i32.store
        i32.const 8
        local.set 546
        i32.const 248
        local.set 547
        local.get 2
        local.get 547
        i32.add
        local.set 548
        local.get 548
        local.get 546
        i32.add
        local.set 549
        local.get 533
        i64.load offset=2000 align=4
        local.set 550
        local.get 549
        local.get 550
        i64.store
        local.get 533
        i64.load offset=1992 align=4
        local.set 551
        local.get 2
        local.get 551
        i64.store offset=248
        local.get 2
        i64.load offset=1032
        local.set 552
        local.get 2
        local.get 552
        i64.store offset=240
        local.get 2
        i32.load offset=1024
        local.set 553
        local.get 2
        local.get 553
        i32.store offset=236
        f32.const 0x1p+1 (;=2;)
        local.set 554
        f32.const 0x0p+0 (;=0;)
        local.set 555
        i32.const 248
        local.set 556
        local.get 2
        local.get 556
        i32.add
        local.set 557
        i32.const 240
        local.set 558
        local.get 2
        local.get 558
        i32.add
        local.set 559
        i32.const 236
        local.set 560
        local.get 2
        local.get 560
        i32.add
        local.set 561
        local.get 557
        local.get 559
        local.get 555
        local.get 554
        local.get 561
        call $DrawTextureEx
        local.get 533
        f32.load offset=1844
        local.set 562
        local.get 562
        f64.promote_f32
        local.set 563
        local.get 563
        local.get 536
        f64.mul
        local.set 564
        f64.const 0x1.f4p+9 (;=1000;)
        local.set 565
        local.get 564
        local.get 565
        f64.add
        local.set 566
        local.get 566
        f32.demote_f64
        local.set 567
        local.get 2
        local.get 567
        f32.store offset=1016
        local.get 2
        local.get 539
        i32.store offset=1020
        local.get 2
        local.get 540
        i32.store8 offset=1008
        local.get 2
        local.get 540
        i32.store8 offset=1009
        local.get 2
        local.get 540
        i32.store8 offset=1010
        local.get 2
        local.get 540
        i32.store8 offset=1011
        i32.const 216
        local.set 568
        local.get 2
        local.get 568
        i32.add
        local.set 569
        local.get 569
        local.get 541
        i32.add
        local.set 570
        local.get 533
        i32.load offset=2008
        local.set 571
        local.get 570
        local.get 571
        i32.store
        i32.const 216
        local.set 572
        local.get 2
        local.get 572
        i32.add
        local.set 573
        local.get 573
        local.get 546
        i32.add
        local.set 574
        local.get 533
        i64.load offset=2000 align=4
        local.set 575
        local.get 574
        local.get 575
        i64.store
        local.get 533
        i64.load offset=1992 align=4
        local.set 576
        local.get 2
        local.get 576
        i64.store offset=216
        local.get 2
        i64.load offset=1016
        local.set 577
        local.get 2
        local.get 577
        i64.store offset=208
        local.get 2
        i32.load offset=1008
        local.set 578
        local.get 2
        local.get 578
        i32.store offset=204
        i32.const 216
        local.set 579
        local.get 2
        local.get 579
        i32.add
        local.set 580
        i32.const 208
        local.set 581
        local.get 2
        local.get 581
        i32.add
        local.set 582
        i32.const 204
        local.set 583
        local.get 2
        local.get 583
        i32.add
        local.set 584
        local.get 580
        local.get 582
        local.get 555
        local.get 554
        local.get 584
        call $DrawTextureEx
        local.get 533
        f32.load offset=1844
        local.set 585
        local.get 585
        f64.promote_f32
        local.set 586
        f64.const 0x1.999999999999ap-3 (;=0.2;)
        local.set 587
        local.get 586
        local.get 587
        f64.mul
        local.set 588
        local.get 588
        f32.demote_f64
        local.set 589
        local.get 2
        local.get 589
        f32.store offset=1000
        local.get 2
        local.get 539
        i32.store offset=1004
        local.get 2
        local.get 540
        i32.store8 offset=992
        local.get 2
        local.get 540
        i32.store8 offset=993
        local.get 2
        local.get 540
        i32.store8 offset=994
        local.get 2
        local.get 540
        i32.store8 offset=995
        i32.const 184
        local.set 590
        local.get 2
        local.get 590
        i32.add
        local.set 591
        local.get 591
        local.get 541
        i32.add
        local.set 592
        local.get 533
        i32.load offset=1988
        local.set 593
        local.get 592
        local.get 593
        i32.store
        i32.const 184
        local.set 594
        local.get 2
        local.get 594
        i32.add
        local.set 595
        local.get 595
        local.get 546
        i32.add
        local.set 596
        local.get 533
        i64.load offset=1980 align=4
        local.set 597
        local.get 596
        local.get 597
        i64.store
        local.get 533
        i64.load offset=1972 align=4
        local.set 598
        local.get 2
        local.get 598
        i64.store offset=184
        local.get 2
        i64.load offset=1000
        local.set 599
        local.get 2
        local.get 599
        i64.store offset=176
        local.get 2
        i32.load offset=992
        local.set 600
        local.get 2
        local.get 600
        i32.store offset=172
        i32.const 184
        local.set 601
        local.get 2
        local.get 601
        i32.add
        local.set 602
        i32.const 176
        local.set 603
        local.get 2
        local.get 603
        i32.add
        local.set 604
        i32.const 172
        local.set 605
        local.get 2
        local.get 605
        i32.add
        local.set 606
        local.get 602
        local.get 604
        local.get 555
        local.get 554
        local.get 606
        call $DrawTextureEx
        local.get 533
        f32.load offset=1844
        local.set 607
        local.get 607
        f64.promote_f32
        local.set 608
        f64.const 0x1.999999999999ap-4 (;=0.1;)
        local.set 609
        local.get 608
        local.get 609
        f64.mul
        local.set 610
        local.get 610
        f32.demote_f64
        local.set 611
        local.get 2
        local.get 611
        f32.store offset=984
        f32.const -0x1.ep+4 (;=-30;)
        local.set 612
        local.get 2
        local.get 612
        f32.store offset=988
        i32.const 255
        local.set 613
        local.get 2
        local.get 613
        i32.store8 offset=976
        i32.const 255
        local.set 614
        local.get 2
        local.get 614
        i32.store8 offset=977
        i32.const 255
        local.set 615
        local.get 2
        local.get 615
        i32.store8 offset=978
        i32.const 255
        local.set 616
        local.get 2
        local.get 616
        i32.store8 offset=979
        i32.const 0
        local.set 617
        local.get 617
        i32.load offset=1968
        local.set 618
        i32.const 296
        local.set 619
        local.get 2
        local.get 619
        i32.add
        local.set 620
        local.get 620
        local.get 618
        i32.store
        local.get 617
        i64.load offset=1960 align=4
        local.set 621
        i32.const 288
        local.set 622
        local.get 2
        local.get 622
        i32.add
        local.set 623
        local.get 623
        local.get 621
        i64.store
        local.get 617
        i64.load offset=1952 align=4
        local.set 624
        local.get 2
        local.get 624
        i64.store offset=280
        local.get 2
        i64.load offset=984
        local.set 625
        local.get 2
        local.get 625
        i64.store offset=272
        local.get 2
        i32.load offset=976
        local.set 626
        local.get 2
        local.get 626
        i32.store offset=268
        f32.const 0x1p+1 (;=2;)
        local.set 627
        f32.const 0x0p+0 (;=0;)
        local.set 628
        i32.const 280
        local.set 629
        local.get 2
        local.get 629
        i32.add
        local.set 630
        i32.const 272
        local.set 631
        local.get 2
        local.get 631
        i32.add
        local.set 632
        i32.const 268
        local.set 633
        local.get 2
        local.get 633
        i32.add
        local.set 634
        local.get 630
        local.get 632
        local.get 628
        local.get 627
        local.get 634
        call $DrawTextureEx
        i32.const 0
        local.set 635
        local.get 2
        local.get 635
        i32.store16 offset=974
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load16_u offset=974
            local.set 636
            i32.const 65535
            local.set 637
            local.get 636
            local.get 637
            i32.and
            local.set 638
            i32.const 0
            local.set 639
            local.get 639
            i32.load8_u offset=1840
            local.set 640
            i32.const 255
            local.set 641
            local.get 640
            local.get 641
            i32.and
            local.set 642
            local.get 638
            local.set 643
            local.get 642
            local.set 644
            local.get 643
            local.get 644
            i32.lt_s
            local.set 645
            i32.const 1
            local.set 646
            local.get 645
            local.get 646
            i32.and
            local.set 647
            local.get 647
            i32.eqz
            br_if 1 (;@3;)
            f32.const 0x1.8cp+6 (;=99;)
            local.set 648
            local.get 2
            local.get 648
            f32.store offset=952
            i32.const 0
            local.set 649
            local.get 649
            f32.convert_i32_s
            local.set 650
            local.get 2
            local.get 650
            f32.store offset=956
            f32.const 0x1.9p+4 (;=25;)
            local.set 651
            local.get 2
            local.get 651
            f32.store offset=960
            f32.const 0x1.04p+6 (;=65;)
            local.set 652
            local.get 2
            local.get 652
            f32.store offset=964
            local.get 2
            i32.load16_u offset=974
            local.set 653
            i32.const 65535
            local.set 654
            local.get 653
            local.get 654
            i32.and
            local.set 655
            i32.const 1616
            local.set 656
            i32.const 4
            local.set 657
            local.get 655
            local.get 657
            i32.shl
            local.set 658
            local.get 656
            local.get 658
            i32.add
            local.set 659
            i32.const 0
            local.set 660
            local.get 660
            f32.convert_i32_s
            local.set 661
            local.get 2
            local.get 661
            f32.store offset=944
            i32.const 0
            local.set 662
            local.get 662
            f32.convert_i32_s
            local.set 663
            local.get 2
            local.get 663
            f32.store offset=948
            i32.const 255
            local.set 664
            local.get 2
            local.get 664
            i32.store8 offset=936
            i32.const 255
            local.set 665
            local.get 2
            local.get 665
            i32.store8 offset=937
            i32.const 255
            local.set 666
            local.get 2
            local.get 666
            i32.store8 offset=938
            i32.const 255
            local.set 667
            local.get 2
            local.get 667
            i32.store8 offset=939
            i32.const 0
            local.set 668
            local.get 668
            i32.load offset=1948
            local.set 669
            i32.const 72
            local.set 670
            local.get 2
            local.get 670
            i32.add
            local.set 671
            local.get 671
            local.get 669
            i32.store
            local.get 668
            i64.load offset=1940 align=4
            local.set 672
            i32.const 8
            local.set 673
            i32.const 56
            local.set 674
            local.get 2
            local.get 674
            i32.add
            local.set 675
            local.get 675
            local.get 673
            i32.add
            local.set 676
            local.get 676
            local.get 672
            i64.store
            local.get 668
            i64.load offset=1932 align=4
            local.set 677
            local.get 2
            local.get 677
            i64.store offset=56
            i32.const 40
            local.set 678
            local.get 2
            local.get 678
            i32.add
            local.set 679
            local.get 679
            local.get 673
            i32.add
            local.set 680
            i32.const 952
            local.set 681
            local.get 2
            local.get 681
            i32.add
            local.set 682
            local.get 682
            local.get 673
            i32.add
            local.set 683
            local.get 683
            i64.load
            local.set 684
            local.get 680
            local.get 684
            i64.store
            local.get 2
            i64.load offset=952
            local.set 685
            local.get 2
            local.get 685
            i64.store offset=40
            local.get 659
            local.get 673
            i32.add
            local.set 686
            local.get 686
            i64.load align=4
            local.set 687
            i32.const 24
            local.set 688
            local.get 2
            local.get 688
            i32.add
            local.set 689
            local.get 689
            local.get 673
            i32.add
            local.set 690
            local.get 690
            local.get 687
            i64.store
            local.get 659
            i64.load align=4
            local.set 691
            local.get 2
            local.get 691
            i64.store offset=24
            local.get 2
            i64.load offset=944
            local.set 692
            local.get 2
            local.get 692
            i64.store offset=16
            local.get 2
            i32.load offset=936
            local.set 693
            local.get 2
            local.get 693
            i32.store offset=12
            f32.const 0x0p+0 (;=0;)
            local.set 694
            i32.const 56
            local.set 695
            local.get 2
            local.get 695
            i32.add
            local.set 696
            i32.const 40
            local.set 697
            local.get 2
            local.get 697
            i32.add
            local.set 698
            i32.const 24
            local.set 699
            local.get 2
            local.get 699
            i32.add
            local.set 700
            i32.const 16
            local.set 701
            local.get 2
            local.get 701
            i32.add
            local.set 702
            i32.const 12
            local.set 703
            local.get 2
            local.get 703
            i32.add
            local.set 704
            local.get 696
            local.get 698
            local.get 700
            local.get 702
            local.get 694
            local.get 704
            call $DrawTexturePro
            local.get 2
            i32.load16_u offset=974
            local.set 705
            i32.const 1
            local.set 706
            local.get 705
            local.get 706
            i32.add
            local.set 707
            local.get 2
            local.get 707
            i32.store16 offset=974
            br 0 (;@4;)
          end
        end
        i32.const 255
        local.set 708
        local.get 2
        local.get 708
        i32.store8 offset=928
        i32.const 255
        local.set 709
        local.get 2
        local.get 709
        i32.store8 offset=929
        i32.const 255
        local.set 710
        local.get 2
        local.get 710
        i32.store8 offset=930
        i32.const 255
        local.set 711
        local.get 2
        local.get 711
        i32.store8 offset=931
        local.get 2
        i32.load offset=928
        local.set 712
        local.get 2
        local.get 712
        i32.store offset=168
        i32.const 168
        local.set 713
        local.get 2
        local.get 713
        i32.add
        local.set 714
        local.get 714
        call $DrawGameOver
        br 1 (;@1;)
      end
      i32.const 0
      local.set 715
      local.get 715
      f32.load offset=1844
      local.set 716
      local.get 716
      f64.promote_f32
      local.set 717
      f64.const 0x1.3333333333333p-2 (;=0.3;)
      local.set 718
      local.get 717
      local.get 718
      f64.mul
      local.set 719
      local.get 719
      f32.demote_f64
      local.set 720
      local.get 2
      local.get 720
      f32.store offset=920
      i32.const -1041235968
      local.set 721
      local.get 2
      local.get 721
      i32.store offset=924
      i32.const 255
      local.set 722
      local.get 2
      local.get 722
      i32.store8 offset=912
      local.get 2
      local.get 722
      i32.store8 offset=913
      local.get 2
      local.get 722
      i32.store8 offset=914
      local.get 2
      local.get 722
      i32.store8 offset=915
      i32.const 16
      local.set 723
      i32.const 512
      local.set 724
      local.get 2
      local.get 724
      i32.add
      local.set 725
      local.get 725
      local.get 723
      i32.add
      local.set 726
      local.get 715
      i32.load offset=2008
      local.set 727
      local.get 726
      local.get 727
      i32.store
      i32.const 8
      local.set 728
      i32.const 512
      local.set 729
      local.get 2
      local.get 729
      i32.add
      local.set 730
      local.get 730
      local.get 728
      i32.add
      local.set 731
      local.get 715
      i64.load offset=2000 align=4
      local.set 732
      local.get 731
      local.get 732
      i64.store
      local.get 715
      i64.load offset=1992 align=4
      local.set 733
      local.get 2
      local.get 733
      i64.store offset=512
      local.get 2
      i64.load offset=920
      local.set 734
      local.get 2
      local.get 734
      i64.store offset=504
      local.get 2
      i32.load offset=912
      local.set 735
      local.get 2
      local.get 735
      i32.store offset=500
      f32.const 0x1p+1 (;=2;)
      local.set 736
      f32.const 0x0p+0 (;=0;)
      local.set 737
      i32.const 512
      local.set 738
      local.get 2
      local.get 738
      i32.add
      local.set 739
      i32.const 504
      local.set 740
      local.get 2
      local.get 740
      i32.add
      local.set 741
      i32.const 500
      local.set 742
      local.get 2
      local.get 742
      i32.add
      local.set 743
      local.get 739
      local.get 741
      local.get 737
      local.get 736
      local.get 743
      call $DrawTextureEx
      local.get 715
      f32.load offset=1844
      local.set 744
      local.get 744
      f64.promote_f32
      local.set 745
      local.get 745
      local.get 718
      f64.mul
      local.set 746
      f64.const 0x1.f4p+9 (;=1000;)
      local.set 747
      local.get 746
      local.get 747
      f64.add
      local.set 748
      local.get 748
      f32.demote_f64
      local.set 749
      local.get 2
      local.get 749
      f32.store offset=904
      local.get 2
      local.get 721
      i32.store offset=908
      local.get 2
      local.get 722
      i32.store8 offset=896
      local.get 2
      local.get 722
      i32.store8 offset=897
      local.get 2
      local.get 722
      i32.store8 offset=898
      local.get 2
      local.get 722
      i32.store8 offset=899
      i32.const 480
      local.set 750
      local.get 2
      local.get 750
      i32.add
      local.set 751
      local.get 751
      local.get 723
      i32.add
      local.set 752
      local.get 715
      i32.load offset=2008
      local.set 753
      local.get 752
      local.get 753
      i32.store
      i32.const 480
      local.set 754
      local.get 2
      local.get 754
      i32.add
      local.set 755
      local.get 755
      local.get 728
      i32.add
      local.set 756
      local.get 715
      i64.load offset=2000 align=4
      local.set 757
      local.get 756
      local.get 757
      i64.store
      local.get 715
      i64.load offset=1992 align=4
      local.set 758
      local.get 2
      local.get 758
      i64.store offset=480
      local.get 2
      i64.load offset=904
      local.set 759
      local.get 2
      local.get 759
      i64.store offset=472
      local.get 2
      i32.load offset=896
      local.set 760
      local.get 2
      local.get 760
      i32.store offset=468
      i32.const 480
      local.set 761
      local.get 2
      local.get 761
      i32.add
      local.set 762
      i32.const 472
      local.set 763
      local.get 2
      local.get 763
      i32.add
      local.set 764
      i32.const 468
      local.set 765
      local.get 2
      local.get 765
      i32.add
      local.set 766
      local.get 762
      local.get 764
      local.get 737
      local.get 736
      local.get 766
      call $DrawTextureEx
      local.get 715
      f32.load offset=1844
      local.set 767
      local.get 767
      f64.promote_f32
      local.set 768
      f64.const 0x1.999999999999ap-3 (;=0.2;)
      local.set 769
      local.get 768
      local.get 769
      f64.mul
      local.set 770
      local.get 770
      f32.demote_f64
      local.set 771
      local.get 2
      local.get 771
      f32.store offset=888
      local.get 2
      local.get 721
      i32.store offset=892
      local.get 2
      local.get 722
      i32.store8 offset=880
      local.get 2
      local.get 722
      i32.store8 offset=881
      local.get 2
      local.get 722
      i32.store8 offset=882
      local.get 2
      local.get 722
      i32.store8 offset=883
      i32.const 448
      local.set 772
      local.get 2
      local.get 772
      i32.add
      local.set 773
      local.get 773
      local.get 723
      i32.add
      local.set 774
      local.get 715
      i32.load offset=1988
      local.set 775
      local.get 774
      local.get 775
      i32.store
      i32.const 448
      local.set 776
      local.get 2
      local.get 776
      i32.add
      local.set 777
      local.get 777
      local.get 728
      i32.add
      local.set 778
      local.get 715
      i64.load offset=1980 align=4
      local.set 779
      local.get 778
      local.get 779
      i64.store
      local.get 715
      i64.load offset=1972 align=4
      local.set 780
      local.get 2
      local.get 780
      i64.store offset=448
      local.get 2
      i64.load offset=888
      local.set 781
      local.get 2
      local.get 781
      i64.store offset=440
      local.get 2
      i32.load offset=880
      local.set 782
      local.get 2
      local.get 782
      i32.store offset=436
      i32.const 448
      local.set 783
      local.get 2
      local.get 783
      i32.add
      local.set 784
      i32.const 440
      local.set 785
      local.get 2
      local.get 785
      i32.add
      local.set 786
      i32.const 436
      local.set 787
      local.get 2
      local.get 787
      i32.add
      local.set 788
      local.get 784
      local.get 786
      local.get 737
      local.get 736
      local.get 788
      call $DrawTextureEx
      local.get 715
      f32.load offset=1844
      local.set 789
      local.get 789
      f64.promote_f32
      local.set 790
      f64.const 0x1.999999999999ap-4 (;=0.1;)
      local.set 791
      local.get 790
      local.get 791
      f64.mul
      local.set 792
      local.get 792
      f32.demote_f64
      local.set 793
      local.get 2
      local.get 793
      f32.store offset=872
      f32.const -0x1.ep+4 (;=-30;)
      local.set 794
      local.get 2
      local.get 794
      f32.store offset=876
      i32.const 255
      local.set 795
      local.get 2
      local.get 795
      i32.store8 offset=864
      i32.const 255
      local.set 796
      local.get 2
      local.get 796
      i32.store8 offset=865
      i32.const 255
      local.set 797
      local.get 2
      local.get 797
      i32.store8 offset=866
      i32.const 255
      local.set 798
      local.get 2
      local.get 798
      i32.store8 offset=867
      i32.const 0
      local.set 799
      local.get 799
      i32.load offset=1968
      local.set 800
      i32.const 560
      local.set 801
      local.get 2
      local.get 801
      i32.add
      local.set 802
      local.get 802
      local.get 800
      i32.store
      local.get 799
      i64.load offset=1960 align=4
      local.set 803
      i32.const 552
      local.set 804
      local.get 2
      local.get 804
      i32.add
      local.set 805
      local.get 805
      local.get 803
      i64.store
      local.get 799
      i64.load offset=1952 align=4
      local.set 806
      local.get 2
      local.get 806
      i64.store offset=544
      local.get 2
      i64.load offset=872
      local.set 807
      local.get 2
      local.get 807
      i64.store offset=536
      local.get 2
      i32.load offset=864
      local.set 808
      local.get 2
      local.get 808
      i32.store offset=532
      f32.const 0x1p+1 (;=2;)
      local.set 809
      f32.const 0x0p+0 (;=0;)
      local.set 810
      i32.const 544
      local.set 811
      local.get 2
      local.get 811
      i32.add
      local.set 812
      i32.const 536
      local.set 813
      local.get 2
      local.get 813
      i32.add
      local.set 814
      i32.const 532
      local.set 815
      local.get 2
      local.get 815
      i32.add
      local.set 816
      local.get 812
      local.get 814
      local.get 810
      local.get 809
      local.get 816
      call $DrawTextureEx
      i32.const 245
      local.set 817
      local.get 2
      local.get 817
      i32.store8 offset=856
      i32.const 245
      local.set 818
      local.get 2
      local.get 818
      i32.store8 offset=857
      i32.const 245
      local.set 819
      local.get 2
      local.get 819
      i32.store8 offset=858
      i32.const 255
      local.set 820
      local.get 2
      local.get 820
      i32.store8 offset=859
      i32.const 0
      local.set 821
      local.get 821
      i64.load offset=2288 align=4
      local.set 822
      i32.const 576
      local.set 823
      local.get 2
      local.get 823
      i32.add
      local.set 824
      local.get 824
      local.get 822
      i64.store
      local.get 821
      i64.load offset=2280 align=4
      local.set 825
      local.get 2
      local.get 825
      i64.store offset=568
      local.get 2
      i32.load offset=856
      local.set 826
      local.get 2
      local.get 826
      i32.store offset=564
      i32.const 568
      local.set 827
      local.get 2
      local.get 827
      i32.add
      local.set 828
      i32.const 564
      local.set 829
      local.get 2
      local.get 829
      i32.add
      local.set 830
      local.get 828
      local.get 830
      call $DrawRectangleRec
      i32.const 0
      local.set 831
      local.get 831
      i64.load offset=2304 align=4
      local.set 832
      i32.const 600
      local.set 833
      local.get 2
      local.get 833
      i32.add
      local.set 834
      local.get 834
      local.get 832
      i64.store
      local.get 831
      i64.load offset=2296 align=4
      local.set 835
      local.get 2
      local.get 835
      i64.store offset=592
      local.get 831
      i32.load offset=2312 align=1
      local.set 836
      local.get 2
      local.get 836
      i32.store offset=588
      i32.const 592
      local.set 837
      local.get 2
      local.get 837
      i32.add
      local.set 838
      i32.const 588
      local.set 839
      local.get 2
      local.get 839
      i32.add
      local.set 840
      local.get 838
      local.get 840
      call $DrawRectangleRec
      i32.const 130
      local.set 841
      local.get 2
      local.get 841
      i32.store8 offset=848
      i32.const 130
      local.set 842
      local.get 2
      local.get 842
      i32.store8 offset=849
      i32.const 130
      local.set 843
      local.get 2
      local.get 843
      i32.store8 offset=850
      i32.const 255
      local.set 844
      local.get 2
      local.get 844
      i32.store8 offset=851
      i32.const 0
      local.set 845
      local.get 845
      i64.load offset=2288 align=4
      local.set 846
      i32.const 624
      local.set 847
      local.get 2
      local.get 847
      i32.add
      local.set 848
      local.get 848
      local.get 846
      i64.store
      local.get 845
      i64.load offset=2280 align=4
      local.set 849
      local.get 2
      local.get 849
      i64.store offset=616
      local.get 2
      i32.load offset=848
      local.set 850
      local.get 2
      local.get 850
      i32.store offset=612
      f32.const 0x1.8p+1 (;=3;)
      local.set 851
      i32.const 616
      local.set 852
      local.get 2
      local.get 852
      i32.add
      local.set 853
      i32.const 612
      local.set 854
      local.get 2
      local.get 854
      i32.add
      local.set 855
      local.get 853
      local.get 851
      local.get 855
      call $DrawRectangleLinesEx
      i32.const 0
      local.set 856
      local.get 856
      f32.convert_i32_s
      local.set 857
      local.get 2
      local.get 857
      f32.store offset=840
      i32.const 0
      local.set 858
      local.get 858
      f32.convert_i32_s
      local.set 859
      local.get 2
      local.get 859
      f32.store offset=844
      i32.const 255
      local.set 860
      local.get 2
      local.get 860
      i32.store8 offset=832
      i32.const 255
      local.set 861
      local.get 2
      local.get 861
      i32.store8 offset=833
      i32.const 255
      local.set 862
      local.get 2
      local.get 862
      i32.store8 offset=834
      i32.const 255
      local.set 863
      local.get 2
      local.get 863
      i32.store8 offset=835
      i32.const 0
      local.set 864
      local.get 864
      i32.load offset=2028
      local.set 865
      i32.const 664
      local.set 866
      local.get 2
      local.get 866
      i32.add
      local.set 867
      local.get 867
      local.get 865
      i32.store
      local.get 864
      i64.load offset=2020 align=4
      local.set 868
      i32.const 656
      local.set 869
      local.get 2
      local.get 869
      i32.add
      local.set 870
      local.get 870
      local.get 868
      i64.store
      local.get 864
      i64.load offset=2012 align=4
      local.set 871
      local.get 2
      local.get 871
      i64.store offset=648
      local.get 2
      i64.load offset=840
      local.set 872
      local.get 2
      local.get 872
      i64.store offset=640
      local.get 2
      i32.load offset=832
      local.set 873
      local.get 2
      local.get 873
      i32.store offset=636
      f32.const 0x1.666666p+1 (;=2.8;)
      local.set 874
      f32.const 0x0p+0 (;=0;)
      local.set 875
      i32.const 648
      local.set 876
      local.get 2
      local.get 876
      i32.add
      local.set 877
      i32.const 640
      local.set 878
      local.get 2
      local.get 878
      i32.add
      local.set 879
      i32.const 636
      local.set 880
      local.get 2
      local.get 880
      i32.add
      local.set 881
      local.get 877
      local.get 879
      local.get 875
      local.get 874
      local.get 881
      call $DrawTextureEx
      i32.const 0
      local.set 882
      local.get 2
      local.get 882
      i32.store16 offset=830
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load16_u offset=830
          local.set 883
          i32.const 65535
          local.set 884
          local.get 883
          local.get 884
          i32.and
          local.set 885
          i32.const 0
          local.set 886
          local.get 886
          i32.load8_u offset=1840
          local.set 887
          i32.const 255
          local.set 888
          local.get 887
          local.get 888
          i32.and
          local.set 889
          local.get 885
          local.set 890
          local.get 889
          local.set 891
          local.get 890
          local.get 891
          i32.lt_s
          local.set 892
          i32.const 1
          local.set 893
          local.get 892
          local.get 893
          i32.and
          local.set 894
          local.get 894
          i32.eqz
          br_if 1 (;@2;)
          f32.const 0x1.8cp+6 (;=99;)
          local.set 895
          local.get 2
          local.get 895
          f32.store offset=808
          i32.const 0
          local.set 896
          local.get 896
          f32.convert_i32_s
          local.set 897
          local.get 2
          local.get 897
          f32.store offset=812
          f32.const 0x1.9p+4 (;=25;)
          local.set 898
          local.get 2
          local.get 898
          f32.store offset=816
          f32.const 0x1.04p+6 (;=65;)
          local.set 899
          local.get 2
          local.get 899
          f32.store offset=820
          local.get 2
          i32.load16_u offset=830
          local.set 900
          i32.const 65535
          local.set 901
          local.get 900
          local.get 901
          i32.and
          local.set 902
          i32.const 1616
          local.set 903
          i32.const 4
          local.set 904
          local.get 902
          local.get 904
          i32.shl
          local.set 905
          local.get 903
          local.get 905
          i32.add
          local.set 906
          i32.const 0
          local.set 907
          local.get 907
          f32.convert_i32_s
          local.set 908
          local.get 2
          local.get 908
          f32.store offset=800
          i32.const 0
          local.set 909
          local.get 909
          f32.convert_i32_s
          local.set 910
          local.get 2
          local.get 910
          f32.store offset=804
          i32.const 255
          local.set 911
          local.get 2
          local.get 911
          i32.store8 offset=792
          i32.const 255
          local.set 912
          local.get 2
          local.get 912
          i32.store8 offset=793
          i32.const 255
          local.set 913
          local.get 2
          local.get 913
          i32.store8 offset=794
          i32.const 255
          local.set 914
          local.get 2
          local.get 914
          i32.store8 offset=795
          i32.const 0
          local.set 915
          local.get 915
          i32.load offset=1948
          local.set 916
          i32.const 360
          local.set 917
          local.get 2
          local.get 917
          i32.add
          local.set 918
          local.get 918
          local.get 916
          i32.store
          local.get 915
          i64.load offset=1940 align=4
          local.set 919
          i32.const 8
          local.set 920
          i32.const 344
          local.set 921
          local.get 2
          local.get 921
          i32.add
          local.set 922
          local.get 922
          local.get 920
          i32.add
          local.set 923
          local.get 923
          local.get 919
          i64.store
          local.get 915
          i64.load offset=1932 align=4
          local.set 924
          local.get 2
          local.get 924
          i64.store offset=344
          i32.const 328
          local.set 925
          local.get 2
          local.get 925
          i32.add
          local.set 926
          local.get 926
          local.get 920
          i32.add
          local.set 927
          i32.const 808
          local.set 928
          local.get 2
          local.get 928
          i32.add
          local.set 929
          local.get 929
          local.get 920
          i32.add
          local.set 930
          local.get 930
          i64.load
          local.set 931
          local.get 927
          local.get 931
          i64.store
          local.get 2
          i64.load offset=808
          local.set 932
          local.get 2
          local.get 932
          i64.store offset=328
          local.get 906
          local.get 920
          i32.add
          local.set 933
          local.get 933
          i64.load align=4
          local.set 934
          i32.const 312
          local.set 935
          local.get 2
          local.get 935
          i32.add
          local.set 936
          local.get 936
          local.get 920
          i32.add
          local.set 937
          local.get 937
          local.get 934
          i64.store
          local.get 906
          i64.load align=4
          local.set 938
          local.get 2
          local.get 938
          i64.store offset=312
          local.get 2
          i64.load offset=800
          local.set 939
          local.get 2
          local.get 939
          i64.store offset=304
          local.get 2
          i32.load offset=792
          local.set 940
          local.get 2
          local.get 940
          i32.store offset=300
          f32.const 0x0p+0 (;=0;)
          local.set 941
          i32.const 344
          local.set 942
          local.get 2
          local.get 942
          i32.add
          local.set 943
          i32.const 328
          local.set 944
          local.get 2
          local.get 944
          i32.add
          local.set 945
          i32.const 312
          local.set 946
          local.get 2
          local.get 946
          i32.add
          local.set 947
          i32.const 304
          local.set 948
          local.get 2
          local.get 948
          i32.add
          local.set 949
          i32.const 300
          local.set 950
          local.get 2
          local.get 950
          i32.add
          local.set 951
          local.get 943
          local.get 945
          local.get 947
          local.get 949
          local.get 941
          local.get 951
          call $DrawTexturePro
          local.get 2
          i32.load16_u offset=830
          local.set 952
          i32.const 1
          local.set 953
          local.get 952
          local.get 953
          i32.add
          local.set 954
          local.get 2
          local.get 954
          i32.store16 offset=830
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.set 955
      local.get 955
      f32.load offset=1884
      local.set 956
      i32.const 0
      local.set 957
      local.get 957
      i32.load8_u offset=1900
      local.set 958
      i32.const 255
      local.set 959
      local.get 958
      local.get 959
      i32.and
      local.set 960
      local.get 960
      f32.convert_i32_s
      local.set 961
      local.get 956
      local.get 961
      f32.mul
      local.set 962
      local.get 2
      local.get 962
      f32.store offset=776
      i32.const 0
      local.set 963
      local.get 963
      f32.convert_i32_s
      local.set 964
      local.get 2
      local.get 964
      f32.store offset=780
      i32.const 0
      local.set 965
      local.get 965
      f32.load offset=1884
      local.set 966
      local.get 2
      local.get 966
      f32.store offset=784
      i32.const 0
      local.set 967
      local.get 967
      f32.load offset=1888
      local.set 968
      local.get 2
      local.get 968
      f32.store offset=788
      i32.const 0
      local.set 969
      local.get 969
      f32.convert_i32_s
      local.set 970
      local.get 2
      local.get 970
      f32.store offset=768
      i32.const 0
      local.set 971
      local.get 971
      f32.convert_i32_s
      local.set 972
      local.get 2
      local.get 972
      f32.store offset=772
      i32.const 255
      local.set 973
      local.get 2
      local.get 973
      i32.store8 offset=760
      i32.const 255
      local.set 974
      local.get 2
      local.get 974
      i32.store8 offset=761
      i32.const 255
      local.set 975
      local.get 2
      local.get 975
      i32.store8 offset=762
      i32.const 255
      local.set 976
      local.get 2
      local.get 976
      i32.store8 offset=763
      i32.const 0
      local.set 977
      local.get 977
      i32.load offset=1924
      local.set 978
      i32.const 424
      local.set 979
      local.get 2
      local.get 979
      i32.add
      local.set 980
      local.get 980
      local.get 978
      i32.store
      local.get 977
      i64.load offset=1916 align=4
      local.set 981
      i32.const 8
      local.set 982
      i32.const 408
      local.set 983
      local.get 2
      local.get 983
      i32.add
      local.set 984
      local.get 984
      local.get 982
      i32.add
      local.set 985
      local.get 985
      local.get 981
      i64.store
      local.get 977
      i64.load offset=1908 align=4
      local.set 986
      local.get 2
      local.get 986
      i64.store offset=408
      i32.const 392
      local.set 987
      local.get 2
      local.get 987
      i32.add
      local.set 988
      local.get 988
      local.get 982
      i32.add
      local.set 989
      i32.const 776
      local.set 990
      local.get 2
      local.get 990
      i32.add
      local.set 991
      local.get 991
      local.get 982
      i32.add
      local.set 992
      local.get 992
      i64.load
      local.set 993
      local.get 989
      local.get 993
      i64.store
      local.get 2
      i64.load offset=776
      local.set 994
      local.get 2
      local.get 994
      i64.store offset=392
      i32.const 376
      local.set 995
      local.get 2
      local.get 995
      i32.add
      local.set 996
      local.get 996
      local.get 982
      i32.add
      local.set 997
      local.get 977
      i64.load offset=1876 align=4
      local.set 998
      local.get 997
      local.get 998
      i64.store
      local.get 977
      i64.load offset=1868 align=4
      local.set 999
      local.get 2
      local.get 999
      i64.store offset=376
      local.get 2
      i64.load offset=768
      local.set 1000
      local.get 2
      local.get 1000
      i64.store offset=368
      local.get 2
      i32.load offset=760
      local.set 1001
      local.get 2
      local.get 1001
      i32.store offset=364
      f32.const 0x0p+0 (;=0;)
      local.set 1002
      i32.const 408
      local.set 1003
      local.get 2
      local.get 1003
      i32.add
      local.set 1004
      i32.const 392
      local.set 1005
      local.get 2
      local.get 1005
      i32.add
      local.set 1006
      i32.const 376
      local.set 1007
      local.get 2
      local.get 1007
      i32.add
      local.set 1008
      i32.const 368
      local.set 1009
      local.get 2
      local.get 1009
      i32.add
      local.set 1010
      i32.const 364
      local.set 1011
      local.get 2
      local.get 1011
      i32.add
      local.set 1012
      local.get 1004
      local.get 1006
      local.get 1008
      local.get 1010
      local.get 1002
      local.get 1012
      call $DrawTexturePro
      i32.const 0
      local.set 1013
      local.get 1013
      f32.load offset=1844
      local.set 1014
      f32.const 0x1.4p+4 (;=20;)
      local.set 1015
      local.get 1015
      local.get 1014
      f32.add
      local.set 1016
      local.get 1016
      f32.abs
      local.set 1017
      f32.const 0x1p+31 (;=2.14748e+09;)
      local.set 1018
      local.get 1017
      local.get 1018
      f32.lt
      local.set 1019
      local.get 1019
      i32.eqz
      local.set 1020
      block  ;; label = @2
        block  ;; label = @3
          local.get 1020
          br_if 0 (;@3;)
          local.get 1016
          i32.trunc_f32_s
          local.set 1021
          local.get 1021
          local.set 1022
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 1023
        local.get 1023
        local.set 1022
      end
      local.get 1022
      local.set 1024
      i32.const 0
      local.set 1025
      local.get 2
      local.get 1025
      i32.store8 offset=752
      i32.const 0
      local.set 1026
      local.get 2
      local.get 1026
      i32.store8 offset=753
      i32.const 0
      local.set 1027
      local.get 2
      local.get 1027
      i32.store8 offset=754
      i32.const 255
      local.set 1028
      local.get 2
      local.get 1028
      i32.store8 offset=755
      i32.const 1082
      drop
      i32.const 200
      drop
      i32.const 16
      drop
      local.get 2
      i32.load offset=752
      local.set 1029
      local.get 2
      local.get 1029
      i32.store offset=428
      i32.const 1082
      local.set 1030
      i32.const 16
      local.set 1031
      i32.const 200
      local.set 1032
      i32.const 428
      local.set 1033
      local.get 2
      local.get 1033
      i32.add
      local.set 1034
      local.get 1030
      local.get 1024
      local.get 1032
      local.get 1031
      local.get 1034
      call $DrawText
      i32.const 0
      local.set 1035
      local.get 1035
      f32.load offset=1844
      local.set 1036
      f32.const 0x1.4p+4 (;=20;)
      local.set 1037
      local.get 1037
      local.get 1036
      f32.add
      local.set 1038
      local.get 1038
      f32.abs
      local.set 1039
      f32.const 0x1p+31 (;=2.14748e+09;)
      local.set 1040
      local.get 1039
      local.get 1040
      f32.lt
      local.set 1041
      local.get 1041
      i32.eqz
      local.set 1042
      block  ;; label = @2
        block  ;; label = @3
          local.get 1042
          br_if 0 (;@3;)
          local.get 1038
          i32.trunc_f32_s
          local.set 1043
          local.get 1043
          local.set 1044
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 1045
        local.get 1045
        local.set 1044
      end
      local.get 1044
      local.set 1046
      i32.const 0
      local.set 1047
      local.get 2
      local.get 1047
      i32.store8 offset=744
      i32.const 0
      local.set 1048
      local.get 2
      local.get 1048
      i32.store8 offset=745
      i32.const 0
      local.set 1049
      local.get 2
      local.get 1049
      i32.store8 offset=746
      i32.const 255
      local.set 1050
      local.get 2
      local.get 1050
      i32.store8 offset=747
      i32.const 1045
      drop
      i32.const 220
      drop
      i32.const 16
      drop
      local.get 2
      i32.load offset=744
      local.set 1051
      local.get 2
      local.get 1051
      i32.store offset=432
      i32.const 1045
      local.set 1052
      i32.const 16
      local.set 1053
      i32.const 220
      local.set 1054
      i32.const 432
      local.set 1055
      local.get 2
      local.get 1055
      i32.add
      local.set 1056
      local.get 1052
      local.get 1046
      local.get 1054
      local.get 1053
      local.get 1056
      call $DrawText
    end
    i32.const 0
    local.set 1057
    local.get 1057
    i32.load offset=1904
    local.set 1058
    i32.const 0
    local.set 1059
    local.get 1058
    local.set 1060
    local.get 1059
    local.set 1061
    local.get 1060
    local.get 1061
    i32.le_u
    local.set 1062
    i32.const 1
    local.set 1063
    local.get 1062
    local.get 1063
    i32.and
    local.set 1064
    block  ;; label = @1
      local.get 1064
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 1065
      i32.const 0
      local.set 1066
      local.get 1066
      local.get 1065
      i32.store8 offset=2237
    end
    i32.const 1190
    local.set 1067
    i32.const 0
    local.set 1068
    local.get 1067
    local.get 1068
    call $DrawFPS
    call $EndDrawing
    i32.const 0
    local.set 1069
    local.get 1069
    i64.load offset=1924 align=4
    local.set 1070
    i32.const 160
    local.set 1071
    local.get 2
    local.get 1071
    i32.add
    local.set 1072
    local.get 1072
    local.get 1070
    i64.store
    local.get 1069
    i64.load offset=1916 align=4
    local.set 1073
    i32.const 152
    local.set 1074
    local.get 2
    local.get 1074
    i32.add
    local.set 1075
    local.get 1075
    local.get 1073
    i64.store
    local.get 1069
    i64.load offset=1908 align=4
    local.set 1076
    i32.const 144
    local.set 1077
    local.get 2
    local.get 1077
    i32.add
    local.set 1078
    local.get 1078
    local.get 1076
    i64.store
    local.get 1069
    i64.load offset=1900 align=4
    local.set 1079
    i32.const 136
    local.set 1080
    local.get 2
    local.get 1080
    i32.add
    local.set 1081
    local.get 1081
    local.get 1079
    i64.store
    local.get 1069
    i64.load offset=1892 align=4
    local.set 1082
    i32.const 128
    local.set 1083
    local.get 2
    local.get 1083
    i32.add
    local.set 1084
    local.get 1084
    local.get 1082
    i64.store
    local.get 1069
    i64.load offset=1884 align=4
    local.set 1085
    i32.const 16
    local.set 1086
    i32.const 104
    local.set 1087
    local.get 2
    local.get 1087
    i32.add
    local.set 1088
    local.get 1088
    local.get 1086
    i32.add
    local.set 1089
    local.get 1089
    local.get 1085
    i64.store
    local.get 1069
    i64.load offset=1876 align=4
    local.set 1090
    i32.const 8
    local.set 1091
    i32.const 104
    local.set 1092
    local.get 2
    local.get 1092
    i32.add
    local.set 1093
    local.get 1093
    local.get 1091
    i32.add
    local.set 1094
    local.get 1094
    local.get 1090
    i64.store
    local.get 1069
    i64.load offset=1868 align=4
    local.set 1095
    local.get 2
    local.get 1095
    i64.store offset=104
    i32.const 80
    local.set 1096
    local.get 2
    local.get 1096
    i32.add
    local.set 1097
    local.get 1097
    local.get 1086
    i32.add
    local.set 1098
    local.get 1069
    i64.load offset=1860 align=4
    local.set 1099
    local.get 1098
    local.get 1099
    i64.store
    i32.const 80
    local.set 1100
    local.get 2
    local.get 1100
    i32.add
    local.set 1101
    local.get 1101
    local.get 1091
    i32.add
    local.set 1102
    local.get 1069
    i64.load offset=1852 align=4
    local.set 1103
    local.get 1102
    local.get 1103
    i64.store
    local.get 1069
    i64.load offset=1844 align=4
    local.set 1104
    local.get 2
    local.get 1104
    i64.store offset=80
    i32.const 104
    local.set 1105
    local.get 2
    local.get 1105
    i32.add
    local.set 1106
    i32.const 80
    local.set 1107
    local.get 2
    local.get 1107
    i32.add
    local.set 1108
    local.get 1106
    local.get 1108
    call $saveGame
    i32.const 1120
    local.set 1109
    local.get 2
    local.get 1109
    i32.add
    local.set 1110
    local.get 1110
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
    (local i32 i32 i32 i32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i64)
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
    local.get 3
    f32.convert_i32_s
    local.set 4
    i32.const 0
    local.set 5
    local.get 5
    local.get 4
    f32.store offset=1868
    f32.const 0x1.9p+6 (;=100;)
    local.set 6
    i32.const 0
    local.set 7
    local.get 7
    local.get 6
    f32.store offset=1872
    i32.const 0
    local.set 8
    local.get 2
    local.get 8
    i32.store8 offset=31
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load8_u offset=31
        local.set 9
        i32.const 255
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        i32.const 0
        local.set 12
        local.get 12
        i32.load8_u offset=1840
        local.set 13
        i32.const 255
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 11
        local.set 16
        local.get 15
        local.set 17
        local.get 16
        local.get 17
        i32.lt_s
        local.set 18
        i32.const 1
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        local.get 20
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 21
        local.get 21
        f32.load offset=1844
        local.set 22
        local.get 2
        i32.load8_u offset=31
        local.set 23
        i32.const 255
        local.set 24
        local.get 23
        local.get 24
        i32.and
        local.set 25
        i32.const 1616
        local.set 26
        i32.const 4
        local.set 27
        local.get 25
        local.get 27
        i32.shl
        local.set 28
        local.get 26
        local.get 28
        i32.add
        local.set 29
        local.get 29
        f32.load
        local.set 30
        local.get 30
        local.get 22
        f32.sub
        local.set 31
        local.get 29
        local.get 31
        f32.store
        local.get 2
        i32.load8_u offset=31
        local.set 32
        i32.const 1
        local.set 33
        local.get 32
        local.get 33
        i32.add
        local.set 34
        local.get 2
        local.get 34
        i32.store8 offset=31
        br 0 (;@2;)
      end
    end
    local.get 2
    local.set 35
    i64.const 0
    local.set 36
    local.get 35
    local.get 36
    i64.store align=4
    i32.const 16
    local.set 37
    local.get 35
    local.get 37
    i32.add
    local.set 38
    local.get 38
    local.get 36
    i64.store align=4
    i32.const 8
    local.set 39
    local.get 35
    local.get 39
    i32.add
    local.set 40
    local.get 40
    local.get 36
    i64.store align=4
    local.get 2
    local.set 41
    local.get 41
    i64.load align=4
    local.set 42
    i32.const 0
    local.set 43
    local.get 43
    local.get 42
    i64.store offset=1844 align=4
    i32.const 16
    local.set 44
    local.get 41
    local.get 44
    i32.add
    local.set 45
    local.get 45
    i64.load align=4
    local.set 46
    local.get 43
    local.get 46
    i64.store offset=1860 align=4
    i32.const 8
    local.set 47
    local.get 41
    local.get 47
    i32.add
    local.set 48
    local.get 48
    i64.load align=4
    local.set 49
    local.get 43
    local.get 49
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
    i64.load offset=1596 align=4
    local.set 10
    local.get 8
    local.get 10
    i64.store align=4
    local.get 9
    i64.load offset=1588 align=4
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
    i32.const 1574
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
    i32.const 1574
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
        i32.store offset=2312 align=1
        i32.const 0
        local.set 110
        i32.const 0
        local.set 111
        local.get 111
        local.get 110
        i32.store8 offset=2237
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
  (global (;3;) i32 (i32.const 1844))
  (global (;4;) i32 (i32.const 1840))
  (global (;5;) i32 (i32.const 1616))
  (global (;6;) i32 (i32.const 2060))
  (global (;7;) i32 (i32.const 2104))
  (global (;8;) i32 (i32.const 2148))
  (global (;9;) i32 (i32.const 2192))
  (global (;10;) i32 (i32.const 1932))
  (global (;11;) i32 (i32.const 1952))
  (global (;12;) i32 (i32.const 1972))
  (global (;13;) i32 (i32.const 1992))
  (global (;14;) i32 (i32.const 2012))
  (global (;15;) i32 (i32.const 2044))
  (global (;16;) i32 (i32.const 2280))
  (global (;17;) i32 (i32.const 2296))
  (global (;18;) i32 (i32.const 2312))
  (global (;19;) i32 (i32.const 2316))
  (global (;20;) i32 (i32.const 2320))
  (global (;21;) i32 (i32.const 2040))
  (global (;22;) i32 (i32.const 2032))
  (global (;23;) i32 (i32.const 2324))
  (global (;24;) i32 (i32.const 2236))
  (global (;25;) i32 (i32.const 2240))
  (global (;26;) i32 (i32.const 2237))
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
  (export "camera" (global 3))
  (export "platformsCount" (global 4))
  (export "platforms" (global 5))
  (export "createAnimation" (func $createAnimation))
  (export "idle" (global 6))
  (export "run" (global 7))
  (export "jump" (global 8))
  (export "fall" (global 9))
  (export "terrain" (global 10))
  (export "bg" (global 11))
  (export "bg1" (global 12))
  (export "bg2" (global 13))
  (export "playerIcon" (global 14))
  (export "spriteRect" (global 15))
  (export "healthBar" (global 16))
  (export "healthPoints" (global 17))
  (export "hpColor" (global 18))
  (export "fullHp" (global 19))
  (export "hpConv" (global 20))
  (export "onGround" (global 21))
  (export "GameFrame" (func $GameFrame))
  (export "mouse" (global 22))
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
  (data $.rodata (i32.const 1024) "Restart\00Anger Builds\00Or arrows to move and spaced to jump\00Use AS to move and W to jump\00my game in wasm\00assets/icons/Warrior_icont.png\00assets/Jump/Warrior_Jump_sheet_left.png\00assets/run/Warrior_Run_sheet_left.png\00assets/Jump/Warrior_fall_sheet_left.png\00assets/idle/Warrior_Idle_sheet_left.png\00assets/Jump/Warrior_Jump_sheet.png\00assets/run/Warrior_Run_sheet.png\00assets/Jump/Warrior_fall_sheet.png\00assets/idle/Warrior_Idle_sheet.png\00assets/terrain/Terrain-and-Props.png\00assets/bg/BG_3.png\00assets/bg/BG_2.png\00assets/bg/BG_1.png\00assets/sound/mainSong.mp3\00Game Over!\00\00\00\00\00\80\13D\00\00\ffC\00\00\c8B\00\00\f0A")
  (data $.data (i32.const 1616) "\00\00\00\00\00\80\09D\00\00\c8C\00\00\c8C\00\00\16D\00\80\22D\00\00\c8C\00\00\c8C\00\00\96D\00\80\22D\00\00\c8C\00\00\c8C\00\00\e1D\00\80\22D\00\00\c8C\00\00\c8C\00\00\16E\00\80\22D\00\00HD\00\00\c8C\00\80TE\00\80\22D\00\00HD\00\00\c8C\00\80\89E\00\80\22D\00\00HD\00\00\c8C\00\c0\a8E\00\80\22D\00\00zD\00\00\c8C\00\80\d4E\00\80\22D\00\00zD\00\00\c8C\00 \00F\00\80\22D\00\00zD\00\00\c8C\00p\14F\00\80\22D\00\00zE\00\00\c8C\00\80\22F\00\80\22D\00\00zD\00\00\c8C\00 2F\00\80\22D\00\00zD\00\00\c8C\00\c0AF\00\80\22D\00\00zD\00\00\c8C\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\00\00\00\00\80?"))

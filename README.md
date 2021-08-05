# FLEX

> FLEX最新版本二进制集成包

> 未成功install 可注释`PodFile`描述，不影响项目运行。

## User 

- PodFile

```
  pod 'FLEX', :git => 'https://github.com/Todaycoding/FLEX.git', :configurations => 'Debug'

```

- 工程代码

```

#ifdef DEBUG

- (void)handleFlex {
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    Class FLEXManager = NSClassFromString(@"FLEXManager");
    if (FLEXManager) {
        [FLEXManager performSelector:@selector(toggleExplorer)];
    }
#pragma clang diagnostic pop
    
}
#endif

```

## Author

> Dragonli_52171@163.com

## License

See the LICENSE file for more info.

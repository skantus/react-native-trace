import {NativeModules} from 'react-native';

type Config = {
  apiKey: string;
  enabledDebug?: boolean;
};

type TraceLevel = 'info' | 'warm' | 'error' | 'debug';

class Trace {
  private static initialized = false;

  static initialize(config: Config): void {
    if (this.initialized) {
      console.warn('Trace SDK already initialized.');
      return;
    }
    NativeModules.LoggerModule.initialize(config.apiKey, config.enabledDebug);
    this.initialized = true;
  }

  static trace(
    level: TraceLevel,
    message: string,
    metadata?: Record<string, any>,
  ) {
    if (!this.initialized) {
      console.warn('Trace SDK not initialized.');
      return;
    }
    NativeModules.LoggerModule.log(level, message, metadata || {});
  }
}

export default Trace;

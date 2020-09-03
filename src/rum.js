import { init as initApm } from '@elastic/apm-rum'
var apm = initApm({
  // Set required service name (allowed characters: a-z, A-Z, 0-9, -, _, and space)
  serviceName: 'carfront',
  // Set the version of your application
  // Used on the APM Server to find the right sourcemap
  serviceVersion: '0.90',
  // Set custom APM Server URL (default: http://localhost:8200)
  serverUrl: 'https://apmserver.lonsid.cn',
  // For distributed tracing to different origin (CORS)
  distributedTracingOrigins: ['https://apmserver.lonsid.cn']
})

export default apm;

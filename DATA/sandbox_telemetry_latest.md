# sandbox_telemetry_parse — 2026-11-10 20:17:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1302869 lines=2887
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2878 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2878} |
| `chromeGpuPssKb` | {'int': 2878} |
| `chromeOtherPssKb` | {'int': 2878} |
| `chromeProcesses` | {'int': 2878} |
| `chromeProfiles` | {'int': 2878} |
| `chromeRendererMaxPssKb` | {'int': 2878} |
| `chromeRendererPssKb` | {'int': 2878} |
| `chromeRenderers` | {'int': 2878} |
| `chromeTabs` | {'int': 2878} |
| `chromeTabsProbedProfiles` | {'int': 2878} |
| `chromeUtilityPssKb` | {'int': 2878} |
| `desktopPssKb` | {'int': 2878} |
| `hostPssKb` | {'int': 2878} |
| `kind` | {'str': 2878} |
| `memAvailableKb` | {'int': 2878} |
| `memTotalKb` | {'int': 2878} |
| `otherPssKb` | {'int': 2878} |
| `processes` | {'int': 2878} |
| `pssFallbackProcesses` | {'int': 2878} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

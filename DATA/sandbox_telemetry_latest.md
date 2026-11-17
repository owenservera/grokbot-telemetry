# sandbox_telemetry_parse — 2026-11-17 22:52:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=573914 lines=1275
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1268 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1268} |
| `chromeGpuPssKb` | {'int': 1268} |
| `chromeOtherPssKb` | {'int': 1268} |
| `chromeProcesses` | {'int': 1268} |
| `chromeProfiles` | {'int': 1268} |
| `chromeRendererMaxPssKb` | {'int': 1268} |
| `chromeRendererPssKb` | {'int': 1268} |
| `chromeRenderers` | {'int': 1268} |
| `chromeTabs` | {'int': 1268} |
| `chromeTabsProbedProfiles` | {'int': 1268} |
| `chromeUtilityPssKb` | {'int': 1268} |
| `desktopPssKb` | {'int': 1268} |
| `hostPssKb` | {'int': 1268} |
| `kind` | {'str': 1268} |
| `memAvailableKb` | {'int': 1268} |
| `memTotalKb` | {'int': 1268} |
| `otherPssKb` | {'int': 1268} |
| `processes` | {'int': 1268} |
| `pssFallbackProcesses` | {'int': 1268} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

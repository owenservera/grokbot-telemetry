# sandbox_telemetry_parse — 2026-10-06 18:42:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=537818 lines=1184
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1179 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1179} |
| `chromeGpuPssKb` | {'int': 1179} |
| `chromeOtherPssKb` | {'int': 1179} |
| `chromeProcesses` | {'int': 1179} |
| `chromeProfiles` | {'int': 1179} |
| `chromeRendererMaxPssKb` | {'int': 1179} |
| `chromeRendererPssKb` | {'int': 1179} |
| `chromeRenderers` | {'int': 1179} |
| `chromeTabs` | {'int': 1179} |
| `chromeTabsProbedProfiles` | {'int': 1179} |
| `chromeUtilityPssKb` | {'int': 1179} |
| `desktopPssKb` | {'int': 1179} |
| `hostPssKb` | {'int': 1179} |
| `kind` | {'str': 1179} |
| `memAvailableKb` | {'int': 1179} |
| `memTotalKb` | {'int': 1179} |
| `otherPssKb` | {'int': 1179} |
| `processes` | {'int': 1179} |
| `pssFallbackProcesses` | {'int': 1179} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

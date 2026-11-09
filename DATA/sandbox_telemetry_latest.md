# sandbox_telemetry_parse — 2026-11-09 09:02:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=583298 lines=1297
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1288 |
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
| `chromeBrowserPssKb` | {'int': 1288} |
| `chromeGpuPssKb` | {'int': 1288} |
| `chromeOtherPssKb` | {'int': 1288} |
| `chromeProcesses` | {'int': 1288} |
| `chromeProfiles` | {'int': 1288} |
| `chromeRendererMaxPssKb` | {'int': 1288} |
| `chromeRendererPssKb` | {'int': 1288} |
| `chromeRenderers` | {'int': 1288} |
| `chromeTabs` | {'int': 1288} |
| `chromeTabsProbedProfiles` | {'int': 1288} |
| `chromeUtilityPssKb` | {'int': 1288} |
| `desktopPssKb` | {'int': 1288} |
| `hostPssKb` | {'int': 1288} |
| `kind` | {'str': 1288} |
| `memAvailableKb` | {'int': 1288} |
| `memTotalKb` | {'int': 1288} |
| `otherPssKb` | {'int': 1288} |
| `processes` | {'int': 1288} |
| `pssFallbackProcesses` | {'int': 1288} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

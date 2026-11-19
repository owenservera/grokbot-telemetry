# sandbox_telemetry_parse — 2026-11-19 22:39:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1471154 lines=3262
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3251 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3251} |
| `chromeGpuPssKb` | {'int': 3251} |
| `chromeOtherPssKb` | {'int': 3251} |
| `chromeProcesses` | {'int': 3251} |
| `chromeProfiles` | {'int': 3251} |
| `chromeRendererMaxPssKb` | {'int': 3251} |
| `chromeRendererPssKb` | {'int': 3251} |
| `chromeRenderers` | {'int': 3251} |
| `chromeTabs` | {'int': 3251} |
| `chromeTabsProbedProfiles` | {'int': 3251} |
| `chromeUtilityPssKb` | {'int': 3251} |
| `desktopPssKb` | {'int': 3251} |
| `hostPssKb` | {'int': 3251} |
| `kind` | {'str': 3251} |
| `memAvailableKb` | {'int': 3251} |
| `memTotalKb` | {'int': 3251} |
| `otherPssKb` | {'int': 3251} |
| `processes` | {'int': 3251} |
| `pssFallbackProcesses` | {'int': 3251} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

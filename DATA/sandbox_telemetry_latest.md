# sandbox_telemetry_parse — 2026-11-09 22:19:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=864349 lines=1918
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1909 |
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
| `chromeBrowserPssKb` | {'int': 1909} |
| `chromeGpuPssKb` | {'int': 1909} |
| `chromeOtherPssKb` | {'int': 1909} |
| `chromeProcesses` | {'int': 1909} |
| `chromeProfiles` | {'int': 1909} |
| `chromeRendererMaxPssKb` | {'int': 1909} |
| `chromeRendererPssKb` | {'int': 1909} |
| `chromeRenderers` | {'int': 1909} |
| `chromeTabs` | {'int': 1909} |
| `chromeTabsProbedProfiles` | {'int': 1909} |
| `chromeUtilityPssKb` | {'int': 1909} |
| `desktopPssKb` | {'int': 1909} |
| `hostPssKb` | {'int': 1909} |
| `kind` | {'str': 1909} |
| `memAvailableKb` | {'int': 1909} |
| `memTotalKb` | {'int': 1909} |
| `otherPssKb` | {'int': 1909} |
| `processes` | {'int': 1909} |
| `pssFallbackProcesses` | {'int': 1909} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-11-19 10:43:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1233873 lines=2736
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2727 |
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
| `chromeBrowserPssKb` | {'int': 2727} |
| `chromeGpuPssKb` | {'int': 2727} |
| `chromeOtherPssKb` | {'int': 2727} |
| `chromeProcesses` | {'int': 2727} |
| `chromeProfiles` | {'int': 2727} |
| `chromeRendererMaxPssKb` | {'int': 2727} |
| `chromeRendererPssKb` | {'int': 2727} |
| `chromeRenderers` | {'int': 2727} |
| `chromeTabs` | {'int': 2727} |
| `chromeTabsProbedProfiles` | {'int': 2727} |
| `chromeUtilityPssKb` | {'int': 2727} |
| `desktopPssKb` | {'int': 2727} |
| `hostPssKb` | {'int': 2727} |
| `kind` | {'str': 2727} |
| `memAvailableKb` | {'int': 2727} |
| `memTotalKb` | {'int': 2727} |
| `otherPssKb` | {'int': 2727} |
| `processes` | {'int': 2727} |
| `pssFallbackProcesses` | {'int': 2727} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

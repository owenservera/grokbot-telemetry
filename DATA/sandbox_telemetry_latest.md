# sandbox_telemetry_parse — 2026-11-11 03:06:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1445384 lines=3202
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3193 |
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
| `chromeBrowserPssKb` | {'int': 3193} |
| `chromeGpuPssKb` | {'int': 3193} |
| `chromeOtherPssKb` | {'int': 3193} |
| `chromeProcesses` | {'int': 3193} |
| `chromeProfiles` | {'int': 3193} |
| `chromeRendererMaxPssKb` | {'int': 3193} |
| `chromeRendererPssKb` | {'int': 3193} |
| `chromeRenderers` | {'int': 3193} |
| `chromeTabs` | {'int': 3193} |
| `chromeTabsProbedProfiles` | {'int': 3193} |
| `chromeUtilityPssKb` | {'int': 3193} |
| `desktopPssKb` | {'int': 3193} |
| `hostPssKb` | {'int': 3193} |
| `kind` | {'str': 3193} |
| `memAvailableKb` | {'int': 3193} |
| `memTotalKb` | {'int': 3193} |
| `otherPssKb` | {'int': 3193} |
| `processes` | {'int': 3193} |
| `pssFallbackProcesses` | {'int': 3193} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

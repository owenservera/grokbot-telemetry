# sandbox_telemetry_parse — 2026-11-12 07:32:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2026372 lines=4486
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4477 |
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
| `chromeBrowserPssKb` | {'int': 4477} |
| `chromeGpuPssKb` | {'int': 4477} |
| `chromeOtherPssKb` | {'int': 4477} |
| `chromeProcesses` | {'int': 4477} |
| `chromeProfiles` | {'int': 4477} |
| `chromeRendererMaxPssKb` | {'int': 4477} |
| `chromeRendererPssKb` | {'int': 4477} |
| `chromeRenderers` | {'int': 4477} |
| `chromeTabs` | {'int': 4477} |
| `chromeTabsProbedProfiles` | {'int': 4477} |
| `chromeUtilityPssKb` | {'int': 4477} |
| `desktopPssKb` | {'int': 4477} |
| `hostPssKb` | {'int': 4477} |
| `kind` | {'str': 4477} |
| `memAvailableKb` | {'int': 4477} |
| `memTotalKb` | {'int': 4477} |
| `otherPssKb` | {'int': 4477} |
| `processes` | {'int': 4477} |
| `pssFallbackProcesses` | {'int': 4477} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

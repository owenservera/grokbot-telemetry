# sandbox_telemetry_parse — 2026-11-12 18:23:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2265880 lines=5015
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5006 |
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
| `chromeBrowserPssKb` | {'int': 5006} |
| `chromeGpuPssKb` | {'int': 5006} |
| `chromeOtherPssKb` | {'int': 5006} |
| `chromeProcesses` | {'int': 5006} |
| `chromeProfiles` | {'int': 5006} |
| `chromeRendererMaxPssKb` | {'int': 5006} |
| `chromeRendererPssKb` | {'int': 5006} |
| `chromeRenderers` | {'int': 5006} |
| `chromeTabs` | {'int': 5006} |
| `chromeTabsProbedProfiles` | {'int': 5006} |
| `chromeUtilityPssKb` | {'int': 5006} |
| `desktopPssKb` | {'int': 5006} |
| `hostPssKb` | {'int': 5006} |
| `kind` | {'str': 5006} |
| `memAvailableKb` | {'int': 5006} |
| `memTotalKb` | {'int': 5006} |
| `otherPssKb` | {'int': 5006} |
| `processes` | {'int': 5006} |
| `pssFallbackProcesses` | {'int': 5006} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

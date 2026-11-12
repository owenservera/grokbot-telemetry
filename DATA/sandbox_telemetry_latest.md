# sandbox_telemetry_parse — 2026-11-12 13:25:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2148100 lines=4755
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4746 |
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
| `chromeBrowserPssKb` | {'int': 4746} |
| `chromeGpuPssKb` | {'int': 4746} |
| `chromeOtherPssKb` | {'int': 4746} |
| `chromeProcesses` | {'int': 4746} |
| `chromeProfiles` | {'int': 4746} |
| `chromeRendererMaxPssKb` | {'int': 4746} |
| `chromeRendererPssKb` | {'int': 4746} |
| `chromeRenderers` | {'int': 4746} |
| `chromeTabs` | {'int': 4746} |
| `chromeTabsProbedProfiles` | {'int': 4746} |
| `chromeUtilityPssKb` | {'int': 4746} |
| `desktopPssKb` | {'int': 4746} |
| `hostPssKb` | {'int': 4746} |
| `kind` | {'str': 4746} |
| `memAvailableKb` | {'int': 4746} |
| `memTotalKb` | {'int': 4746} |
| `otherPssKb` | {'int': 4746} |
| `processes` | {'int': 4746} |
| `pssFallbackProcesses` | {'int': 4746} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

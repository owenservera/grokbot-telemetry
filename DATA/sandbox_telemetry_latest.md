# sandbox_telemetry_parse — 2026-11-19 10:17:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1225735 lines=2718
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2709 |
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
| `chromeBrowserPssKb` | {'int': 2709} |
| `chromeGpuPssKb` | {'int': 2709} |
| `chromeOtherPssKb` | {'int': 2709} |
| `chromeProcesses` | {'int': 2709} |
| `chromeProfiles` | {'int': 2709} |
| `chromeRendererMaxPssKb` | {'int': 2709} |
| `chromeRendererPssKb` | {'int': 2709} |
| `chromeRenderers` | {'int': 2709} |
| `chromeTabs` | {'int': 2709} |
| `chromeTabsProbedProfiles` | {'int': 2709} |
| `chromeUtilityPssKb` | {'int': 2709} |
| `desktopPssKb` | {'int': 2709} |
| `hostPssKb` | {'int': 2709} |
| `kind` | {'str': 2709} |
| `memAvailableKb` | {'int': 2709} |
| `memTotalKb` | {'int': 2709} |
| `otherPssKb` | {'int': 2709} |
| `processes` | {'int': 2709} |
| `pssFallbackProcesses` | {'int': 2709} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

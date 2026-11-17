# sandbox_telemetry_parse — 2026-11-17 05:13:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=257414 lines=575
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 568 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 568} |
| `chromeGpuPssKb` | {'int': 568} |
| `chromeOtherPssKb` | {'int': 568} |
| `chromeProcesses` | {'int': 568} |
| `chromeProfiles` | {'int': 568} |
| `chromeRendererMaxPssKb` | {'int': 568} |
| `chromeRendererPssKb` | {'int': 568} |
| `chromeRenderers` | {'int': 568} |
| `chromeTabs` | {'int': 568} |
| `chromeTabsProbedProfiles` | {'int': 568} |
| `chromeUtilityPssKb` | {'int': 568} |
| `desktopPssKb` | {'int': 568} |
| `hostPssKb` | {'int': 568} |
| `kind` | {'str': 568} |
| `memAvailableKb` | {'int': 568} |
| `memTotalKb` | {'int': 568} |
| `otherPssKb` | {'int': 568} |
| `processes` | {'int': 568} |
| `pssFallbackProcesses` | {'int': 568} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

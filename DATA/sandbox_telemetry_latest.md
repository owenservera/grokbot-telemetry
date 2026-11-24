# sandbox_telemetry_parse — 2026-11-24 01:00:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2065393 lines=4579
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4564 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4564} |
| `chromeGpuPssKb` | {'int': 4564} |
| `chromeOtherPssKb` | {'int': 4564} |
| `chromeProcesses` | {'int': 4564} |
| `chromeProfiles` | {'int': 4564} |
| `chromeRendererMaxPssKb` | {'int': 4564} |
| `chromeRendererPssKb` | {'int': 4564} |
| `chromeRenderers` | {'int': 4564} |
| `chromeTabs` | {'int': 4564} |
| `chromeTabsProbedProfiles` | {'int': 4564} |
| `chromeUtilityPssKb` | {'int': 4564} |
| `desktopPssKb` | {'int': 4564} |
| `hostPssKb` | {'int': 4564} |
| `kind` | {'str': 4564} |
| `memAvailableKb` | {'int': 4564} |
| `memTotalKb` | {'int': 4564} |
| `otherPssKb` | {'int': 4564} |
| `processes` | {'int': 4564} |
| `pssFallbackProcesses` | {'int': 4564} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

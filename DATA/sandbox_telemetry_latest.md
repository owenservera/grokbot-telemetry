# sandbox_telemetry_parse — 2026-11-25 00:54:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2526806 lines=5599
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5584 |
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
| `chromeBrowserPssKb` | {'int': 5584} |
| `chromeGpuPssKb` | {'int': 5584} |
| `chromeOtherPssKb` | {'int': 5584} |
| `chromeProcesses` | {'int': 5584} |
| `chromeProfiles` | {'int': 5584} |
| `chromeRendererMaxPssKb` | {'int': 5584} |
| `chromeRendererPssKb` | {'int': 5584} |
| `chromeRenderers` | {'int': 5584} |
| `chromeTabs` | {'int': 5584} |
| `chromeTabsProbedProfiles` | {'int': 5584} |
| `chromeUtilityPssKb` | {'int': 5584} |
| `desktopPssKb` | {'int': 5584} |
| `hostPssKb` | {'int': 5584} |
| `kind` | {'str': 5584} |
| `memAvailableKb` | {'int': 5584} |
| `memTotalKb` | {'int': 5584} |
| `otherPssKb` | {'int': 5584} |
| `processes` | {'int': 5584} |
| `pssFallbackProcesses` | {'int': 5584} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

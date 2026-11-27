# sandbox_telemetry_parse — 2026-11-27 09:07:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=338496 lines=755
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 747 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 747} |
| `chromeGpuPssKb` | {'int': 747} |
| `chromeOtherPssKb` | {'int': 747} |
| `chromeProcesses` | {'int': 747} |
| `chromeProfiles` | {'int': 747} |
| `chromeRendererMaxPssKb` | {'int': 747} |
| `chromeRendererPssKb` | {'int': 747} |
| `chromeRenderers` | {'int': 747} |
| `chromeTabs` | {'int': 747} |
| `chromeTabsProbedProfiles` | {'int': 747} |
| `chromeUtilityPssKb` | {'int': 747} |
| `desktopPssKb` | {'int': 747} |
| `hostPssKb` | {'int': 747} |
| `kind` | {'str': 747} |
| `memAvailableKb` | {'int': 747} |
| `memTotalKb` | {'int': 747} |
| `otherPssKb` | {'int': 747} |
| `processes` | {'int': 747} |
| `pssFallbackProcesses` | {'int': 747} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

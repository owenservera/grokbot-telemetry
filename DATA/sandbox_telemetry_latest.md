# sandbox_telemetry_parse — 2026-11-25 04:03:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2583774 lines=5725
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5710 |
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
| `chromeBrowserPssKb` | {'int': 5710} |
| `chromeGpuPssKb` | {'int': 5710} |
| `chromeOtherPssKb` | {'int': 5710} |
| `chromeProcesses` | {'int': 5710} |
| `chromeProfiles` | {'int': 5710} |
| `chromeRendererMaxPssKb` | {'int': 5710} |
| `chromeRendererPssKb` | {'int': 5710} |
| `chromeRenderers` | {'int': 5710} |
| `chromeTabs` | {'int': 5710} |
| `chromeTabsProbedProfiles` | {'int': 5710} |
| `chromeUtilityPssKb` | {'int': 5710} |
| `desktopPssKb` | {'int': 5710} |
| `hostPssKb` | {'int': 5710} |
| `kind` | {'str': 5710} |
| `memAvailableKb` | {'int': 5710} |
| `memTotalKb` | {'int': 5710} |
| `otherPssKb` | {'int': 5710} |
| `processes` | {'int': 5710} |
| `pssFallbackProcesses` | {'int': 5710} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

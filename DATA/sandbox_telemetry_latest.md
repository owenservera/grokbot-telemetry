# sandbox_telemetry_parse — 2026-11-25 04:06:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2584680 lines=5727
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5712 |
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
| `chromeBrowserPssKb` | {'int': 5712} |
| `chromeGpuPssKb` | {'int': 5712} |
| `chromeOtherPssKb` | {'int': 5712} |
| `chromeProcesses` | {'int': 5712} |
| `chromeProfiles` | {'int': 5712} |
| `chromeRendererMaxPssKb` | {'int': 5712} |
| `chromeRendererPssKb` | {'int': 5712} |
| `chromeRenderers` | {'int': 5712} |
| `chromeTabs` | {'int': 5712} |
| `chromeTabsProbedProfiles` | {'int': 5712} |
| `chromeUtilityPssKb` | {'int': 5712} |
| `desktopPssKb` | {'int': 5712} |
| `hostPssKb` | {'int': 5712} |
| `kind` | {'str': 5712} |
| `memAvailableKb` | {'int': 5712} |
| `memTotalKb` | {'int': 5712} |
| `otherPssKb` | {'int': 5712} |
| `processes` | {'int': 5712} |
| `pssFallbackProcesses` | {'int': 5712} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
